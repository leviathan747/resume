#!/bin/bash

STAT_OUTPUT=
while true; do
  NEW_STAT_OUTPUT=`stat src/resume.md`
  if [[ "$NEW_STAT_OUTPUT" != "$STAT_OUTPUT" ]]; then
    echo "Changes detected. Regenerating..."
    bash generate.sh
    STAT_OUTPUT=`stat src/resume.md`
  fi
  sleep 1
done
