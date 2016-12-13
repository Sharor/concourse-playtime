FROM microsoft/dotnet
RUN  mkdir dotnet-testfolder
COPY dotnet-testfolder ./dotnet-testfolder/
WORKDIR dotnet-testfolder
RUN dotnet restore
