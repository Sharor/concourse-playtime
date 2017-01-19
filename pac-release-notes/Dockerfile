FROM praqma/pac
RUN ls
COPY repository .
RUN ls
RUN echo "Updated"
WORKDIR repository
RUN /usr/bin/pac -d 2015-12-01 --settings=./pac-release-notes/pac-settings.yml
