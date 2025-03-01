# Using a compact OS
ARG BASEIMAGE

FROM "${BASEIMAGE}"

RUN apk add --no-cache bash

# Add 2048 stuff into Nginx server
COPY . /usr/share/nginx/html

EXPOSE 80

# Start Nginx and keep it running background and start php
CMD bash /usr/share/nginx/html/scripts/start.sh
