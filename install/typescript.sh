#!/bin/bash

set -e

. "$(dirname $(dirname $0))/shared/check_has.sh"

[[ `check_has $(tsc -v)` =~ "true" ]] && echo "You have installed Typescript." && exit 0
check_npm

sudo npm i typescript -g 
