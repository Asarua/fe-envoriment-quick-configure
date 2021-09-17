#!/bin/bash

set -e

. "$(dirname $(dirname $0))/shared/check_has.sh"

[[ `check_has $(create-react-app -V)` =~ "true" ]] && echo "You have installed create-react-app." && exit 0
check_npm

sudo npm i create-react-app -g
