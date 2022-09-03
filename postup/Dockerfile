FROM alpine:latest

RUN apk update && apk add tzdata mongodb-tools

# Adjusts timezone
RUN unlink /etc/localtime || exit 0
RUN ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime 

# Otherwise crontab will generate duplicates
RUN sh -c "rm /etc/crontabs/root || exit 0"

CMD cat /etc/crontabs/0* | crontab - && \
  crond -f -d 8
