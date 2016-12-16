FROM microsoft/dotnet
WORKDIR dotnet-testfolder
RUN dotnet restore
RUN dotnet build
