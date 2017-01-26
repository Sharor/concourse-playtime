#!/bin/sh

set -e # fail fast
set -x # print commands

git clone dotnet-test restore
cd restore
cd dotnet-testfolder

git config --global user.email "johannes_christensen@msn.com"
git config --global user.name "sharor"

dotnet restore
dotnet build
git status

git add .
git commit -m "restore dotnet project" 