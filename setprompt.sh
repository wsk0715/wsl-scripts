#!/bin/bash

# [사용자명@호스트명] 현재경로$
PROMPT='export PS1="\[\e[32m\][\u@\h]\[\e[0m\] \[\e[34m\]\W\[\e[33m\]\[\e[0m\]\$ "'

if ! grep -Fxq "$PROMPT" ~/.bashrc; then
  echo -e "\n$PROMPT" >> ~/.bashrc
fi

source ~/.bashrc
echo "적용 완료!"
