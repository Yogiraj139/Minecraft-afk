FROM ubuntu:22.04

RUN apt update && apt install -y wine xvfb wget

WORKDIR /app

RUN wget -O bot.exe "https://download.mediafire.com/z20hx4hq6306uzy/afkconsoleclient.exe"

CMD ["bash", "-c", "xvfb-run -a wine bot.exe"]
