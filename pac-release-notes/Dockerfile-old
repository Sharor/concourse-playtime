FROM ruby
RUN git clone https://github.com/Praqma/Praqmatic-Automated-Changelog.git
WORKDIR Praqmatic-Automated-Changelog
RUN apt-get update
RUN apt-get install -y cmake
RUN gem install rugged -v '0.24.0'
RUN bundle install
RUN ./pac.rb -h
