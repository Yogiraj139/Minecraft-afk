FROM ubuntu:22.04

RUN apt update && apt install -y wine xvfb wget unzip

WORKDIR /app

RUN wget -O bot.zip "https://store1.gofile.io/download/web/1X3g4v/afkconsoleclient.zip" \
 && unzip bot.zip

CMD ["bash", "-c", "xvfb-run -a wine *.exe"]
