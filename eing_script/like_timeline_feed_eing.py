""" instabot example Workflow: Like rescent medias from your timeline feed. """
import os
import sys
import time

sys.path.append(os.path.join(sys.path[0], '../'))
from instabot import Bot

USERNAME = os.getenv('IG_USERNAME')
PASSWORD = os.getenv('IG_PASSWORD')
PROXY = os.getenv('IG_PROXY')
print("Running with user: %s and password: %s and proxy: %s" % (USERNAME, PASSWORD,PROXY))
bot = Bot()
bot.login(username=USERNAME, password=PASSWORD,
          proxy=PROXY, use_cookie=True)

wait = 15 * 60 # in seconds
while True:
    bot.like_timeline(amount=300 // 24)
    time.sleep(wait)
