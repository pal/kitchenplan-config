#!/bin/sh
# Code from http://stackoverflow.com/a/3706774/697243
if [ -z "$1" ]; then
  export EDITOR=$0 && sudo -E visudo
else
  cat $1 | sed 's/env_reset/env_reset,timestamp_timeout=30/' >> $1
  echo "Changed sudoers to increase timeout"
fi
