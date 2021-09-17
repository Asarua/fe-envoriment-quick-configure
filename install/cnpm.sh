#!/bin/bash

set -e

. "$(dirname $(dirname $0))/shared/check_has.sh"

[[ `check_has $(cnpm -v)` =~ "true" ]] && echo "You have installed cnpm." && exit 0
check_npm

sudo npm i cnpm -g --registry=https://registry.npm.taobao.org
