#!/bin/sh

set -e # fail fast
set -x # print commands

git clone dotnet-test
cd dotnet-test



git config --global user.email "johannes_christensen@msn.com"
git config --global user.name "sharor"

dotnet restore
git add .
git commit -m "restore dotnet project" 
