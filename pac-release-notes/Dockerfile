FROM praqma/pac
RUN ls
COPY repository .
RUN ls
RUN echo "Updated"
WORKDIR repository
RUN ls /usr/src/app
RUN /usr/src/app/pac.rb -d 2015-12-01 --settings=./pac-release-notes/pac-settings.yml
