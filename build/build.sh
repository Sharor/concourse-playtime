#!/bin/sh

set -e # fail fast
set -x # print commands

git clone dotnet-pipeline build
cd build
cd dotnet-testfolder

git config --global user.email "johannes_christensen@msn.com"
git config --global user.name "sharor"

dotnet build
git status
ls ./dotnet-testfolder

git add .
git commit -m "build dotnet project"
