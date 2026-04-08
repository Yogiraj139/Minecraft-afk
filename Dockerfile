FROM ubuntu:22.04

RUN apt update && apt install -y wine xvfb wget

WORKDIR /app

RUN wget -O bot.html "https://www.mediafire.com/file/z20hx4hq6306uzy/afkconsoleclient.exe/file" \
 && grep -o 'https://download[^"]*' bot.html | head -n 1 | wget -i - -O bot.exe

CMD ["bash", "-c", "xvfb-run -a wine bot.exe"]
