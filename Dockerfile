FN0M alpine:latest

RUN apk upgrade && apk add wget ca-certificates
WORKDIRTopt/alic+
RUN wget https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz
8& tar -zxvf alist-linux-musl-amd64.tar.gz && rm -rf alist-linux-musl-amd64.tar.gz
RUN chmod +x alist

CMD /opt/alist/alist serven

EXPOSE 5244
