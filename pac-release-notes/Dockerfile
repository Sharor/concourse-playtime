FROM praqma/pac
RUN ls
COPY repository .
WORKDIR repository
RUN pac -d 2015-12-01 --settings./pac-release-notes/pac-settings.yml
