FROM sharor/alpine
COPY release-notes .
RUN apt install -y jekyll
RUN jekyll --serve
