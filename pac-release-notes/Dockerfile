FROM praqma/pac
RUN ls
COPY repository .
RUN ls
RUN echo "Updated"
RUN ls /usr/src/app
RUN pac -h
RUN cat ./pac-release-notes/pac-settings.yml
RUN pac from "HEAD~2" --settings=./pac-release-notes/pac-settings.yml
