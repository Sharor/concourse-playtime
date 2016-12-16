#!/bin/sh

set -e # fail fast
set -x # print commands

for remote in `git branch -r`
do
  echo $remote
  if [[ $remote == *"origin/ready/"* ]]
  then
    echo $remote > ready_branch;
  fi
done
