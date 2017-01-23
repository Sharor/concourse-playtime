FROM sharor/pac
RUN mkdir /usr/data
WORKDIR /usr/data
COPY repository .
RUN cat ./pac-release-notes/pac-settings.yml
RUN echo Generate release notes:
RUN ls
RUN /usr/src/app/pac.rb -s 25c7be31684079f53beb01934d34dab00d9d8a9c
RUN ls
RUN /usr/src/app/pac.rb -s 25c7be31684079f53beb01934d34dab00d9d8a9c --settings=./pac-release-notes/pac-settings.yml
RUN ls
