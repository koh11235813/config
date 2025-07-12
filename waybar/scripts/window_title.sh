#!/bin/sh
TITLE=$(hyprctl activewindow -j | jq -r '.title')
MAX_LEN=30

if [ ${#TITLE} -gt $MAX_LEN ]; then
  echo "${TITLE:0:$MAX_LEN}..."
else
  echo "$TITLE"
fi
