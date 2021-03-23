FROM vydev/terraform:latest as resource

RUN apk add --update --no-cache musl-dev gcc
RUN pip install --no-cache-dir pipenv

FROM resource
ENTRYPOINT [ "/bin/bash" ]
