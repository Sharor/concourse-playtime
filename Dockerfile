FROM microsoft/dotnet
COPY dotnet-testfolder .
RUN dotnet restore
