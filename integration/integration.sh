#!/bin/sh

set -e # fail fast
set -x # print commands

git clone repository integration
cd integration
echo "hello"
git fetch


