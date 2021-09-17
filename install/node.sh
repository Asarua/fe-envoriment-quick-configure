#!/bin/bash

set -e

. "$(dirname $(dirname $0))/shared/check_has.sh"

if [[ `check_has $(brew -v)` =~ "true" ]]; then
  [[ `check_has $(node -v)` =~ "true" ]] || \
    brew install node && \
    echo "You have downloaded node."
else
  echo "Homebrew not found, please install it"
  read -p "Do you want to download it now(Please input y or n)?: " install

  if [[ $install =~ ^[Yy]$ ]]; then
    echo "Start install Homebrew"
    bash `dirname $0`/homebrew.sh
  else
    exit 1
  fi
fi
