FROM praqma/pac
RUN ls
COPY repository .
RUN ls
RUN echo "Updated"
WORKDIR repository
RUN ls /usr/src/app
RUN pac -h
RUN pac --date 2016-12-20 --settings=./pac-release-notes/pac-settings.yml
