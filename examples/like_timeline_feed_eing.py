""" instabot example Workflow: Like rescent medias from your timeline feed. """
import os
import sys
import time

sys.path.append(os.path.join(sys.path[0], '../'))
from instabot import Bot

print(sys.argv[3])

bot = Bot()
bot.login(username=sys.argv[1], password=sys.argv[2], proxy=sys.argv[3])
wait = 5 * 60 # in seconds
while True:
    bot.like_timeline()
    time.sleep(wait)
