FROM python:3.7.2-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

VOLUME /app/examples/autopost/pics/

CMD [ "python3", "example/like_timeline_feed_eing.py" ]
