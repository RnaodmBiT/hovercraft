from minibot import *
from threading import Timer
from time import sleep

bot = '00:06:66:D9:C1:4E'


def poke(c, interval):
    c.send("Poke!")
    Timer(interval, poke, (c, interval)).start()


c = Connection(bot)
poke(c, 1)

while True:
    sleep(0.05)
    msg = c.poll()
    if msg:
        print(">", msg)

