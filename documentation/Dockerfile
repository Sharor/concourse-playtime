FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y wget
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list 
RUN apt-get update
RUN apt-get install -y git unzip
RUN apt-get install -y mono-devel  mono-complete referenceassemblies-pcl 
COPY dotnet-testfolder .
RUN git clone https://github.com/docascode/docfx-seed.git
RUN wget https://github.com/dotnet/docfx/releases/download/v2.10.2/docfx.zip
RUN unzip docfx.zip -d ./docfx-seed/docfx
RUN ls
RUN ls ./docfx-seed
WORKDIR docfx-seed 
RUN ls
RUN ls
RUN mono docfx/docfx.exe build
RUN mono docfx/docfx.exe serve
