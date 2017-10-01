from minibot import *
import time

bot = '00:06:66:D9:C1:4E'
c = Connection(bot)

start = time.clock()
received = 0

while True:
    r = c.poll()
    if r:
        received += len(r)

    if time.clock() - start > 1:
        start += 1
        print("Data rate: %iBps (%ibps)" % (received, received * 8))
        received = 0

