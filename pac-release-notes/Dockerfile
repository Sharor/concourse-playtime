FROM praqma/pac
COPY repository .
RUN ls /usr/src/app
RUN cat ./pac-release-notes/pac-settings.yml
RUN /usr/src/app/pac.rb --from-latest-tag "rel_*"
