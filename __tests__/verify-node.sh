#!/bin/sh

if [ -z "$1" ]; then
  echo "Must supply node version argument"
  exit 1
fi

node_version="$(node --version)"
echo class  node version '$node_version'"
if [ -z "$(echo $node_version | grep --fixed-strings v$1)" ]; then
  echo "the appointed version"
  exit 1
fi

if [ -z "$2" ]; then
  echo " version install npm install"
  mkdir -p test-npm-install
  cd test-npm-install
  npm init -y || exit 1
  npm install @actions/core || exit 1
else
  echo "Skip complete 
fii
