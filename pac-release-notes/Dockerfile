FROM praqma/pac
RUN ls
COPY repository .
WORKDIR repository/pac-release-notes
RUN pac -d 2015-12-01 --settings./pac-settings.yml
