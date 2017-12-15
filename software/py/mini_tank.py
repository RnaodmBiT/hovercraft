from minibot import Connection
import pygame
import time


tank_address = "00:06:66:D9:DE:DB"
bot = Connection(tank_address)


pygame.init()

screen = pygame.display.set_mode((400, 300))
running = True

while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False


    keys = pygame.key.get_pressed()

    left = keys[pygame.K_LEFT]
    right = keys[pygame.K_RIGHT]
    forward = keys[pygame.K_UP]


    data = bytes([ 74, forward, left, right ])
    bot.send(data)

    time.sleep(0.05)

    #print(data)

