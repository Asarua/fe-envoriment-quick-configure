#!/bin/bash

set -e

echo "Please select project to install: "

files=`cd $(dirname $0)/install; ls | sed s/\.sh$//g`

select project in $files; do
  bash "$(dirname $0)/install/$project.sh"
  exit $?
done
