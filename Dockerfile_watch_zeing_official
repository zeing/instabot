FROM python:3.7.2-slim

WORKDIR /app

# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt
RUN pip install -U instabot
COPY . .

VOLUME /app/examples/autopost/pics/

CMD [ "python", "/app/eing_script/watch_user_likers_stories.py"]
