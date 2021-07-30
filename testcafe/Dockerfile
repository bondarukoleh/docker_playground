FROM node:erbium

SHELL ["/bin/bash", "-c"]

RUN apt-get update

RUN apt-get install -y wget

# Chrome dependencies
RUN apt-get install -y libseccomp2 python-openssl gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils

# Installing chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -y ./google-chrome*.deb

# Remove chrome installer
RUN rm google-chrome-stable*

# Installing Firefox
RUN wget --content-disposition "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"
RUN tar xjf firefox-*
RUN mv firefox /opt/firefox
RUN ln -s /opt/firefox/firefox /usr/bin/firefox

# Remove Firefox installer
RUN rm firefox-*
