FROM debian:stretch
RUN apt-get update 
RUN apt-get install -y python-pip
WORKDIR /app
COPY requirements.txt /app/
COPY Bot.py /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD python bot.py
