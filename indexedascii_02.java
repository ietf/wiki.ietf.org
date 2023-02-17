package org.pm.sipclf;

import gov.nist.javax.sip.message.SIPMessage;
import gov.nist.javax.sip.message.SIPRequest;
import gov.nist.javax.sip.message.SIPResponse;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.net.InetSocketAddress;


public class IndexedAscii_02 implements SipClfLogger {

	private BufferedWriter outWriter; 
	
	private static final int MDATA_START = 84; // position at which manditory data starts


//	  0           7 8         15 16        23 24          31
//	  +------------+------------+------------+------------+
//	  |  Version   |            Record Length             | 0 - 3
//	  +------------+------------+------------+------------+
//	  |         Record Length (cont)         |    0x2C    | 4 - 7
//	  +------------+------------+------------+------------+
//	  |             Flags Field              |    0x2C    | 8 - 11
//	  +------------+------------+------------+------------+
//	  |                CSeq Pointer (Hex)                 | 12 - 15
//	  +------------+------------+------------+------------+
//	  |               Response Code (Hex)                 | 16 - 19
//	  +------------+------------+------------+------------+
//	  |               R-URI Pointer (Hex)                 | 20 - 23
//	  +------------+------------+------------+------------+
//	  |        Destination IP:port         Pointer (Hex)  | 24 - 27
//	  +------------+------------+------------+------------+
//	  |          Source IP:port         Pointer (Hex)     | 28 - 31
//	  +------------+------------+------------+------------+
//	  |                  To URI Pointer (Hex)             | 32 - 35
//	  +------------+------------+------------+------------+
//	  |                  To Tag Pointer (Hex)             | 36 - 39
//	  +------------+------------+------------+------------+
//	  |                 From URI Pointer (Hex)            | 40 - 43
//	  +------------+------------+------------+------------+
//	  |                 From Tag Pointer (Hex)            | 44 - 47
//	  +------------+------------+------------+------------+
//	  |               Call-Id Pointer (Hex)               | 48 - 51
//	  +------------+------------+------------+------------+
//	  |                Status Pointer (Hex)               | 52 - 55
//	  +------------+------------+------------+------------+
//	  |             Server-Txn Pointer (Hex)              | 56 - 59
//	  +------------+------------+------------+------------+
//	  |             Client-Txn Pointer (Hex)              | 60 - 63
//	  +------------+------------+------------+------------+
//	  |              TLV Start Pointer (Hex)              | 64 - 67
//	  +------------+------------+------------+------------+
//	  |    0x0A    |                                      | 68 - 71
//	  +------------+                                      +
//	  |                      Timestamp                    | 72 - 75
//	  +                                      +------------+
//	  |                                      |    0x2E    | 76 - 79
//	  +------------+------------+------------+------------+
//	  |          Fractional Seconds          |    0x09    | 80 - 83
//	  +------------+------------+------------+------------+
//	  |                                                   |
//	  |                                                   |
//	  |                 Mandatory Fields                  |
//	  |                                                   |
//	  |                                                   |
//	  +------------+------------+------------+------------+ \
//	  |    0x09    |               Tag (Hex)              |  \
//	  +------------+------------+------------+------------+   \    Repeated
//	  | Tag (cont) |    0x2C    |      Length (Hex)       |    \   as many
//	  +------------+------------+------------+------------+     >  times as
//	  |      Length (cont)      |    0x2C    |            |    /   necessary
//	  +------------+------------+------------+            +   /
//	  |                       Value                       |  /
//	  +------------+------------+------------+------------+ /
//	  |    0x0A    |
//	  +------------+
//

	
	@Override
	public void log(SIPMessage msg, 
					InetSocketAddress source,
					InetSocketAddress dest, 
					long time, 
					Proto p, 
					ObservationType t)   throws IOException {
		
		int dataPtr = 0;

		StringBuilder pointerBlock = new StringBuilder();
		StringBuilder dataBlock = new StringBuilder();
		
		dataPtr = MDATA_START; // mandatory data start
		
		// Cseq
		dataPtr = addMandatoryField(msg.getCSeq().getSeqNumber() + " " + msg.getCSeq().getMethod(), dataPtr, pointerBlock, dataBlock);

		// response
		String response = null;
		if ( msg instanceof SIPResponse)
			response = ""+((SIPResponse)msg).getStatusCode();
		dataPtr = addMandatoryField( response , dataPtr, pointerBlock, dataBlock);

		// ReqURI
		String reqUri = null;
		if (msg instanceof SIPRequest)
				reqUri = ((SIPRequest) msg).getRequestLine().getUri().toString();
		dataPtr = addMandatoryField(reqUri, dataPtr, pointerBlock, dataBlock);
		

		// Destination
		dataPtr = addMandatoryField(getIpString(dest), dataPtr, pointerBlock, dataBlock);
		
		// Source
		dataPtr = addMandatoryField(getIpString(source), dataPtr, pointerBlock, dataBlock);
		
		// To
		dataPtr = addMandatoryField(msg.getTo().getAddress().getURI().toString(), dataPtr, pointerBlock, dataBlock);
		// To Tag
		dataPtr = addMandatoryField(msg.getTo().getTag(), dataPtr, pointerBlock, dataBlock);
		// From
		dataPtr = addMandatoryField(msg.getFrom().getAddress().getURI().toString(), dataPtr, pointerBlock, dataBlock);
		// From tag
		dataPtr = addMandatoryField(msg.getFrom().getTag(), dataPtr, pointerBlock, dataBlock);
		// CallId
		dataPtr = addMandatoryField(msg.getCallId().getCallId(), dataPtr, pointerBlock, dataBlock);
		// Server Txn
		dataPtr = addMandatoryField("server-tx", dataPtr, pointerBlock, dataBlock);
		// Client Txn
		dataPtr = addMandatoryField("client-tx", dataPtr, pointerBlock, dataBlock);
		// start of TLV data (since there is none in this simple code)
		pointerBlock.append( String.format("%04x", dataPtr));

		
		// print out the log record
		outWriter.write(0x41);
		// six digit record length
		int len = MDATA_START + dataBlock.length(); 
		outWriter.write( String.format("%06x", len));
		outWriter.write(0x2c);
		// flags
		// Byte 1 - Request/response
		// Byte 2 - Retransmission flag
		// Byte 3 - Sent/Received flag -  use u/U. T, t and l, L as recv/sent for UDP, TCP. TLS
		outWriter.write( ( msg instanceof SIPRequest ? "R":"r"));
		outWriter.write("o");
		outWriter.write(getSrFlag( p, t));
		outWriter.write(0x2c);
		outWriter.write( pointerBlock.toString());
		outWriter.write(0x0a);
		// 10 character timestamp
		outWriter.write( String.format("%010d", (int) time/1000));
		outWriter.write(0x2e);
		// 3 character fractional seconds
		outWriter.write( String.format("%03d", time%1000));
		outWriter.write(0x09);
		
		outWriter.write( dataBlock.toString());
		// end of log entry
		outWriter.write(0x0a);
		
		
	}
	
	private String getSrFlag( Proto p, ObservationType t)
	{
		String value = "";
		switch (p)
		{
			case UDP: value = "u"; break;
			case TCP: value = "t"; break;
			case TLS: value = "l"; break;
		}
		if ( t == ObservationType.SENDER)
			value = value.toUpperCase();
		return value;
	}
	
	private String getIpString( InetSocketAddress addr)
	{
		return addr.getAddress().getHostAddress() + ":" + addr.getPort();
	}
	
	private int addMandatoryField(String f, int dataPtr, StringBuilder pointer, StringBuilder data)
	{
		String field = f;
		if ( field == null)
			field = "-";
		// any existing tabs must be changed to spaces
		field = field.replace((char) 0x09, (char) 0x20);
		// add a four character pointer and 
		pointer.append( String.format("%04x", dataPtr));
		data.append(field);
		data.append((char) 0x09); // tab seperated
		return dataPtr + field.length() + 1; // 1 for the tab
		
	}

	@Override
	public void open(String file, int obs) throws IOException {
		
		// Open the file and setup a Byte stream for writing
		outWriter = new BufferedWriter(new FileWriter(file));
		
	}

	@Override
	public void close() throws IOException {

		outWriter.close();	
	}

}
