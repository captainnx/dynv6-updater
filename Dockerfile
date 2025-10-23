FROM alpine:latest

RUN apk add --no-cache curl bash

COPY update.sh /update.sh
RUN chmod +x /update.sh

ENV DYNV6_HOST=""
ENV DYNV6_TOKEN=""
ENV INTERVAL=300

CMD ["/update.sh"]
