FROM python:3.8.3-alpine3.12

RUN apk add --update \
    curl \
	which \
	bash
	
RUN curl -sSL https://sdk.cloud.google.com | bash

ENV PATH $PATH:/root/google-cloud-sdk/bin

COPY ./bqtable.sh /opt/

RUN chmod +x /opt/bqtable.sh

CMD ["sh", "-c", "tail -f /dev/null"]
