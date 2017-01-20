FROM praqma/pac
RUN ls
COPY repository .
RUN ls
RUN echo "Updated"
RUN ls /usr/src/app
RUN pac -h
RUN cat ./pac-release-notes/pac-settings.yml
RUN pac -d 24-12-2016 --settings=./pac-release-notes/pac-settings.yml
