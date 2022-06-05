FROM debian:stable-slim

COPY . /src/

RUN apt update && apt install -y hugo

RUN  apt autoremove -y

USER hugo

WORKDIR /src

CMD [ "hugo" ]