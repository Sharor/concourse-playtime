FROM praqma/pac
ENTRYPOINT []
CMD []
COPY repository .
RUN ls /usr/src/app
RUN cat ./pac-release-notes/pac-settings.yml
RUN ruby /usr/src/app/pac.rb --from 25c7be31684079f53beb01934d34dab00d9d8a9c
