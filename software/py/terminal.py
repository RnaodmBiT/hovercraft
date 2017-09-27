from minibot import *
from threading import Timer

bot = '00:06:66:D9:C1:4E'
c = Connection(bot)

def poll(c, i):
    r = c.poll()
    if r:
        print("\n%s" % r)
    Timer(i, poll, (c, i)).start()

poll(c, 0.1)

while True:
    user = input(">")
    c.send(user)

