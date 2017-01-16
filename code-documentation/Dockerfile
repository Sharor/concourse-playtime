FROM ubuntu
RUN apt-get update
RUN apt-get install -y wget
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list 
RUN  apt-get update
RUN wget https://github.com/dotnet/docfx/archive/v2.9.3.tar.gz
RUN ls
RUN tar -xzf v2.9.3.tar.gz
RUN ls
