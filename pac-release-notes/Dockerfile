FROM praqma/pac
RUN ls
COPY repository .
RUN ls
RUN echo "Updated"
WORKDIR repository
RUN ls /usr/src/app
RUN pac -d 2015-12-01
RUN ruby /usr/src/app/pac.rb -d 2015-12-01 --settings=./pac-release-notes/pac-settings.yml
