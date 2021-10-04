# We're using Ubuntu 20.10
FROM lolys/userbot:buster

RUN git clone -b userbot https://github.com/LoLyz/userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/tofikdn/Man-Userbot/Man-Userbot/requirements.txt

CMD ["python3.9", "-m", "userbot"]
