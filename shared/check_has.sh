#!/bin/bash

set -e

check_has() {
  has=true
  [[ "$1" =~ "not found" ]] && has=false
  echo $has
}

check_npm() {
  [[ `check_has $(npm -v)` =~ "false" ]] && echo "Please install npm." && exit 1
}
