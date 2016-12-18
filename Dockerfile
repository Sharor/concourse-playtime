FROM microsoft/dotnet
RUN  mkdir dotnet-testfolder
COPY dotnet-testfolder ./dotnet-testfolder/
WORKDIR dotnet-testfolder
RUN dotnet restore
RUN dotnet build

EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000

ENTRYPOINT dotnet run
