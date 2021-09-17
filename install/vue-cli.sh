#!/bin/bash

set -e

. "$(dirname $(dirname $0))/shared/check_has.sh"

[[ `check_has $(vue -V)` =~ "true" ]] && echo "You have installed @vue/cli." && exit 0
check_npm

sudo npm i @vue/cli -g
