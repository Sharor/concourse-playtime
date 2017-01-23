FROM praqma/pac
COPY repository .
RUN ls /usr/src/app
RUN cat ./pac-release-notes/pac-settings.yml
WORKDIR /usr/src/app
RUN pac -s 25c7be31684079f53beb01934d34dab00d9d8a9c
