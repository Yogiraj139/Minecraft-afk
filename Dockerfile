FROM ubuntu:22.04

RUN apt update && apt install -y wine xvfb wget

WORKDIR /app

COPY . .

CMD ["bash", "-c", "xvfb-run -a wine afkconsoleclient.exe"]
