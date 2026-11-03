FROM alpine:latest
RUN apk add --no-cache python3 py3-pip git curl tar
RUN mkdir /bombsquad
WORKDIR /bombsquad
RUN curl -L https://bombsquadgame.com | tar -xyz --strip-components=1
EXPOSE 43210/udp
CMD ["./bombsquad_server"]
