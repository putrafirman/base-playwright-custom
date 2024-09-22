FROM mcr.microsoft.com/playwright:v1.44.1-jammy

LABEL author="Putra Firman A <me@putrafirman.com>"
LABEL version="1.0" \
      description="This is an image for running Playwright tests with pre-download dependencies and pre-downloaded browsers"

ENV DISPLAY=:99

WORKDIR /app
COPY package.json .

RUN apt-get update
RUN apt install xvfb --fix-missing -y
RUN npm install --legacy-peer-deps
RUN npm install -g @playwright/test
RUN npx -g playwright install
RUN npx -g playwright install webkit
RUN npx -g playwright install --with-deps chromium firefox webkit