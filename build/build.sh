#!/bin/sh

set -e # fail fast
set -x # print commands

git clone dotnet-pipeline build
cd build
cd dotnet-testfolder
#cd test
#dotnet test

git config --global user.email "johannes_christensen@msn.com"
git config --global user.name "sharor"

dotnet run

git status

git add .
git commit -m "build dotnet project"

