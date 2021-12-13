FROM alpine:3

# install chromium
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont \

# install node
RUN apk add --no-cache \
    nodejs \
    npm \
    yarn

# install python
RUN apk add --no-cache \
    python3 \
    py3-pip

# install aws-cli
RUN pip3 install --upgrade pip && pip3 install awscli

# set environment variables
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

