#!/usr/bin/env bash

app_class=$(hyprctl activewindow -j 2>/dev/null | jq -r '.class' 2>/dev/null)

if [[ -z "$app_class" || "$app_class" == "null" ]]; then
  echo "no apps"
else
  echo "$app_class"
fi

