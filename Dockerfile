

FROM lolyz/userbot:buster

RUN git clone -b userbot https://github.com/lolyz/userbot /home/userbot/ \
    && chmod 777 /home/userbot \
    && mkdir /home/userbot/bin/

COPY ./sample_config.env ./config.env* /home/userbot/

WORKDIR /home/userbot/

CMD ["python3", "-m", "userbot"]
