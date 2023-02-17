package org.pm.sipclf;

import gov.nist.javax.sip.message.SIPMessage;
import gov.nist.javax.sip.message.SIPRequest;
import gov.nist.javax.sip.message.SIPResponse;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;



public class IpfixLogger implements SipClfLogger 
{

	private BufferedOutputStream outFile;
	private static HashMap<String, Integer> methodMap; 
	
	// TODO - these are wrong - find the correct values
	private static final byte UDP = 0;
	private static final byte TCP = 1;
	private static final byte TLS = 2;
	
	private static final short TEMPLATE_SET = 2; // RFC5101 3.3.2
	private static final short SIPCLF_REQUEST_TEMPLATE_ID = 257;
	private static final short SIPCLF_RESPONSE_TEMPLATE_ID = 258;
	
	
	private int sequenceNumber = 0;
	private int observationDomain = 0;
	
	private  ArrayList<TemplateEntry> requestTemplate;
	private  ArrayList<TemplateEntry> responseTemplate;
	
	static {
		methodMap = new HashMap<String, Integer>();
		methodMap.put("ACK", 		1);
		methodMap.put("BYE", 		2);
		methodMap.put("CANCEL", 	3);
		methodMap.put("INFO", 		4);
		methodMap.put("INVITE", 	5);
		methodMap.put("MESSAGE", 	6);
		methodMap.put("NOTIFY", 	7);
		methodMap.put("OPTIONS", 	8);
		methodMap.put("PRACK", 		9);
		methodMap.put("PUBLISH", 	10);
		methodMap.put("REFER", 		11);
		methodMap.put("REGISTER", 	12);
		methodMap.put("SUBSCRIBE", 	13);
		methodMap.put("UPDATE", 	14);
		

		}
	
	private ByteBuffer outBuf; 
	
	@Override
	public void log(SIPMessage msg, InetSocketAddress source, InetSocketAddress dest, long time, Proto p, ObservationType t) 
		throws IOException
	{
		// Write all the data to a ByteBuffer, then wrap with headers and write to file
		outBuf.clear();
		// Write a data set header at the start
		outBuf.putShort( msg instanceof SIPRequest ? SIPCLF_REQUEST_TEMPLATE_ID: SIPCLF_RESPONSE_TEMPLATE_ID);
		outBuf.putShort((short) 0); // dummy write to get right place for time
//      observationTimeMilliseconds(323)[8]
		outBuf.putLong( time);
//      sipSequenceNumber(35566/409)[4]
		outBuf.putInt( (int) msg.getCSeq().getSeqNumber() );
//      sourceIPv4Address(8)[4]
		logIp4( source.getAddress());
//      destinationIPv4Address(12)[4]
		logIp4( dest.getAddress());
//      sourceTransportPort(7)[2]
		outBuf.putShort( (short) source.getPort());
//      destinationTransportPort(11)[2]
		outBuf.putShort(  (short) dest.getPort());
//      protocolIdentifier(4)[1]
		logProtocol(p); // would like to do this in order
//      sipResponseStatus(35566/412)[2] OR sipMethod/ReqUri
		if ( msg instanceof SIPRequest)
		{
			logMethod( (SIPRequest) msg);
			logString( ((SIPRequest) msg).getRequestLine().getUri().toString() );
		}
		else
		{
			logResponseCode( (SIPResponse) msg);
		}
		
		logString( msg.getTo().getAddress().getURI().toString());
		logString( msg.getToTag() );
		logString( msg.getFrom().getAddress().getURI().toString());
		logString( msg.getFromTag() );
		logString( msg.getCallId().getCallId() );
		logString( "server-tx" );
		logString( "client-tx" );

		//      sipObservationType(35566/419)[1]
//		switch( t)
//		{
//		case UNKNOWN: 	outBuf.put((byte) 0); break;
//		case RECEIVER: 	outBuf.put((byte) 1); break;
//		case SENDER: 	outBuf.put((byte) 2); break;
//		case PASSIVE:	outBuf.put((byte) 3); break;
//		}

		// add the length to the dataset header at byte 2
		outBuf.putShort(2, (short) outBuf.position());
		
		writeBuffer();
		
	}

	private void logProtocol(Proto p) {
		switch(p)
		{
		case UDP: outBuf.put( UDP); break;
		case TCP: outBuf.put( TCP); break;
		case TLS: outBuf.put(TLS); break;
		}
	}
	
	private void logResponseCode(SIPResponse msg) 
	{
		outBuf.putShort( (short) msg.getStatusCode() );
	}

	private void logMethod(SIPMessage msg) 
	{
		// illegal methods would have generated a parse exception - so can assume method is ok.
		outBuf.put( methodMap.get( msg.getCSeq().getMethod()).byteValue() );
	}

	private void logString( String data) 
	{
			if ( data == null)
			{
				outBuf.put( (byte) 0) ;
				return;
			}
			int len = data.length();
			if ( len < 255)
			{
				outBuf.put( (byte) (len & 0xff));
			}
			else
			{
				outBuf.put( (byte) 0xff);
				outBuf.putShort( (short) (len-255));
			}
			outBuf.put( data.getBytes());	
	}
	
	private void logIp4( InetAddress addr) 
	{
		outBuf.put( addr.getAddress());
	}
	
	
	@Override
	public void open(String file, int obs) throws IOException 
	{
		observationDomain = obs;
		// Open the file and setup a Byte stream for writing
		outFile = new BufferedOutputStream(new FileOutputStream(file));
		outBuf = ByteBuffer.allocate(32768); // could make this an arg later...
		initTemplates();
		writeTemplates();
	}

	@Override
	public void close() throws IOException 
	{	
		outFile.close();	
	}
	
	/**
	 * Write the templates for the IPFIX records into outBuf
	 * @throws IOException 
	 */
	// Starts with a Set Header: (RFC5101)
	//    0                   1                   2                   3
	//    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |          Set ID = 2           |          Length               |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |      Template ID = 256        |         Field Count = N       |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |1| Information Element id. 1.1 |        Field Length 1.1       |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |                    Enterprise Number  1.1                     |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |0| Information Element id. 1.2 |        Field Length 1.2       |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |             ...               |              ...              |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |1| Information Element id. 1.N |        Field Length 1.N       |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |                    Enterprise Number  1.N                     |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |      Template ID = 257        |         Field Count = M       |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |0| Information Element id. 2.1 |        Field Length 2.1       |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |1| Information Element id. 2.2 |        Field Length 2.2       |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |                    Enterprise Number  2.2                     |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |             ...               |              ...              |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |1| Information Element id. 2.M |        Field Length 2.M       |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |                    Enterprise Number  2.M                     |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//   |                          Padding (opt)                        |
	//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	//
	//   Figure L: Template Set Example


	private void writeTemplates() throws IOException
	{
		// need template length - so use a buffer for that
		// (only need this when files are started)
		ByteBuffer templateBuf = ByteBuffer.allocate(1024);
		templateBuf.clear();
		
		templateBuf.putShort( SIPCLF_REQUEST_TEMPLATE_ID);
		templateBuf.putShort( (short) requestTemplate.size());
		for (TemplateEntry t: requestTemplate)
		{
			t.writeEntry(templateBuf);
		}
		templateBuf.putShort( SIPCLF_RESPONSE_TEMPLATE_ID);
		templateBuf.putShort( (short) responseTemplate.size());
		for (TemplateEntry t: responseTemplate)
		{
			t.writeEntry(templateBuf);
		}
		
		
		outBuf.clear();	
		outBuf.putShort(TEMPLATE_SET); 
		// next short is the length of the templates 
		outBuf.putShort( (short) (templateBuf.position()+4) ); // +4 to include set+length bytes
		// copy template buffer into outBuf
		outBuf.put(templateBuf.array(), 0, templateBuf.position()); 
		
		// now need to add an overall headr and write out. 
		writeBuffer();
		
	}
	
//	
//	(RFC5101) 3.1
//	The format of the IPFIX Message Header is shown in Figure F.
//
//    0                   1                   2                   3
//    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//   |       Version Number          |            Length             |
//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//   |                           Export Time                         |
//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//   |                       Sequence Number                         |
//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//   |                    Observation Domain ID                      |
//   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//
//   Figure F: IPFIX Message Header Format
	/*
	 * Write the message header and the contents of outBuf. 
	 * [OutBuf typically contains either a set of templates - or an individual SIP log record]
	 */
	private void writeBuffer() throws IOException
	{
		// version number
		ByteBuffer headerBuf = ByteBuffer.allocate(16);
		headerBuf.putShort((short) 10); // version number
		headerBuf.putShort( (short) (outBuf.position()+16)); // include this header in length
		headerBuf.putInt( (int) System.currentTimeMillis()/1000);
		headerBuf.putInt( sequenceNumber++);
		headerBuf.putInt( observationDomain);		
		
		outFile.write(headerBuf.array(), 0, headerBuf.position());
		outFile.write(outBuf.array(), 0, outBuf.position());
		
	}
	
	/*
	 * IPFIX Templates for SIPCLF
	 */
	private static final int SIPCLF = 0x00008aee;
	
// 	   0                   1                   2                   3
//	   0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
//	   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//	   |E|  Information Element ident. |        Field Length           |
//	   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//	   |                      Enterprise Number                        |
//	   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//
//	   Figure G: Field Specifier Format
	private void initTemplates()
	{
		int variable = 0xffff;
		
		requestTemplate = new ArrayList<TemplateEntry>();
		responseTemplate = new ArrayList<TemplateEntry>();
		
		requestTemplate.add( new TemplateEntry(323, 8, 0));            // observationTimeMilliseconds(323)[8]
		requestTemplate.add( new TemplateEntry(409, 4, SIPCLF));       // sipSequenceNumber(35566/409)[4]
		requestTemplate.add( new TemplateEntry(8, 4, 0));              // sourceIPv4Address(8)[4]
		requestTemplate.add( new TemplateEntry(12, 4, 0));             // destinationIPv4Address(12)[4]
		requestTemplate.add( new TemplateEntry(7, 2, 0));              // sourceTransportPort(7)[2]
		requestTemplate.add( new TemplateEntry(11, 2, 0));             // destinationTransportPort(11)[2]
		requestTemplate.add( new TemplateEntry(4, 1, 0));              // protocolIdentifier(4)[1]
		requestTemplate.add( new TemplateEntry(402, 1, SIPCLF));       // sipMethod(35566/402)[1]
		requestTemplate.add( new TemplateEntry(403, variable, SIPCLF));// sipRequestURI(35566/403)[v]
		requestTemplate.add( new TemplateEntry(406, variable, SIPCLF));// sipToURI(35566/406)[v]
		requestTemplate.add( new TemplateEntry(407, variable, SIPCLF));// sipToTag(35566/407)[v]
		requestTemplate.add( new TemplateEntry(404, variable, SIPCLF));// sipFromURI(35566/404)[v]
		requestTemplate.add( new TemplateEntry(405, variable, SIPCLF));// sipFromTag(35566/405)[v]
		requestTemplate.add( new TemplateEntry(408, variable, SIPCLF));// sipCallId(35566/408)[v]
		requestTemplate.add( new TemplateEntry(413, variable, SIPCLF));		// serverTx
		requestTemplate.add( new TemplateEntry(414, variable, SIPCLF));		// clientTx

		responseTemplate.add( new TemplateEntry(323, 8, 0)); 			// observationTimeMilliseconds(323)[8]
		responseTemplate.add( new TemplateEntry(409, 4, SIPCLF));		// sipSequenceNumber(35566/409)[4]
		responseTemplate.add( new TemplateEntry(8, 4, 0));				// sourceIPv4Address(8)[4]
		responseTemplate.add( new TemplateEntry(12, 4, 0));				// destinationIPv4Address(12)[4]
		responseTemplate.add( new TemplateEntry(7, 2, 0));				// sourceTransportPort(7)[2]
		responseTemplate.add( new TemplateEntry(11, 2, 0));				// destinationTransportPort(11)[2]
		responseTemplate.add( new TemplateEntry(4, 1, 0));		 		// protocolIdentifier(4)[1]
		responseTemplate.add( new TemplateEntry(412, 2, SIPCLF));		// sipResponseStatus(35566/412)[2]
		responseTemplate.add( new TemplateEntry(406, variable, SIPCLF));// sipToURI(35566/406)[v]
		responseTemplate.add( new TemplateEntry(407, variable, SIPCLF));// sipToTag(35566/407)[v]
		responseTemplate.add( new TemplateEntry(404, variable, SIPCLF));// sipFromURI(35566/404)[v]
		responseTemplate.add( new TemplateEntry(405, variable, SIPCLF));// sipFromTag(35566/405)[v]
		responseTemplate.add( new TemplateEntry(408, variable, SIPCLF));// sipCallId(35566/408)[v]
		responseTemplate.add( new TemplateEntry(413, variable, SIPCLF));		// serverTx
		responseTemplate.add( new TemplateEntry(414, variable, SIPCLF));		// clientTx

	}

	// simple struct-like inner class.
	public class TemplateEntry {
		
		short ie; // information element
		short length;
		int  entNum; // enterprise number (-1 means none, > 0 implies ie > 32767 but not checked)
		
		
		public TemplateEntry(int  i, int  j, int enterpriseNum )
		{
			ie =  (short) i; 
			if ( enterpriseNum != 0)
				ie = (short) (ie | 0x8000); // set high bit if enterprise number
			length =  (short) j;
			entNum = enterpriseNum;
		}
		
		public void writeEntry(ByteBuffer b)
		{
			b.putShort(ie);
			b.putShort(length);
			if ( entNum != 0)
				b.putInt(entNum);
		}
	}
	
}
