#!/bin/bash

set -e

. "$(dirname $(dirname $0))/shared/check_has.sh"

[[ `check_has $(yarn -v)` =~ "true" ]] && echo "You have installed yarn." && exit 0
check_npm

sudo npm i yarn -g
