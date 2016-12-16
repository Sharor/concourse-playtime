#!/bin/sh

set -e # fail fast
set -x # print commands

git clone dotnet-ready integration
cd integration
cd dotnet-testfolder

dotnet restore
dotnet build
cd../test
dotnet test


