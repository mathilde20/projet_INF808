#!/bin/env python

import os
import signal
import time

mem=abs(int(os.environ.get('MEMORY',2048)))
print("Consuming "+str(mem)+"MB of memory ...")
memory=' '*int(1024*1024*mem)

run = True

def handler_stop_signals(signum, frame):
    global run
    run = False

signal.signal(signal.SIGINT, handler_stop_signals)
signal.signal(signal.SIGTERM, handler_stop_signals)

while run:
    time.sleep(1)
    pass

print("Exiting ...")
