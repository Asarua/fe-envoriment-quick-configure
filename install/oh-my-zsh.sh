#!/bin/bash

set -e

curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh | \
  sed "s#REPO=\${REPO:-ohmyzsh/ohmyzsh}#REPO=\${REPO:-mirrors/oh-my-zsh}#" | \
  sed "s#REMOTE=\${REMOTE:-https://github.com/\${REPO}.git}#REMOTE=\${REMOTE:-https://gitee.com/\${REPO}.git}#" | \
  sh
