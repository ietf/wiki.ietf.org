#!/usr/bin/python
# Simple script to check the ASCII indexing
#
 
import string
import re
import sys

# ptrs is a compressed ASCII block of hex-encoded pointer values
# message is the complete text of a messge

fields = ["CSeq", "Response", "ReqURI", "dest", "src", "To URI", "To tag", "From URI", "From tag", "CallId", 
          "server-txn", "client-txn" ]

def processPointers(ptrs, message):
    # chop up into 4 character sections
    i = 4
    prev = 0
    ptr = int(ptrs[0:4], 16)
    print 'String length {0}\n'.format(len(message))
    fieldIndex = 0;
    while i < len(ptrs)-4:
        ptrStrNext = ptrs[i:i+4]
        ptrNext = int(ptrStrNext, 16)
        print 'str={3} {4:<16} message[{0}:{1}] = {2}\n'.format( ptr, ptrNext, message[ptr:ptrNext], ptrStrNext, fields[fieldIndex]) 
        fieldIndex += 1
        i += 4
        ptr = ptrNext
#
# MAIN
#
if sys.argv[1]:
    fileName = sys.argv[1]
else:
    print "Usage: asciReader.py <filename>"
    exit
    
file = open(fileName, "r")

# NO error handling - assume input is well formatted 
line1 = line2 = "x"
while line1 and line2:
   line1 = file.readline();
   if line1:
      line2 = file.readline();
      # line 1 contains the pointers in a block in the third comma separated part
      s2 = line1.split(",")
      processPointers(s2[2], line1+line2)
   
   
    
