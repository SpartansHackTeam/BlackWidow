FROM alpine:3.10


RUN apk --update add --no-cache python2 py2-requests py2-pip py2-lxml py2-requests openssl ca-certificates
RUN apk --update add --virtual build-dependencies python2-dev build-base wget git \
  && git clone https://github.com/SpartansHackTeam/BlackWidow.git
WORKDIR BlackWidow

RUN pip2 install -r requirements.txt
ENTRYPOINT ["python2", "blackwidow"]
CMD ["--help"]
