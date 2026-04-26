FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget \
 && wget https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz \
 && tar -xvzf gotty_linux_amd64.tar.gz \
 && mv gotty /usr/local/bin/

EXPOSE 8080

CMD ["sh", "-c", "gotty -r -w --port $PORT /bin/bash"]
