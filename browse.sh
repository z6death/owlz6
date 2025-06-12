#!/bin/bash

# Prompt for a URL using rofi (or dmenu if you prefer)
URL=$(rofi -dmenu -p "Enter URL")

# If no input, open DuckDuckGo
if [ -z "$URL" ]; then
    links https://duckduckgo.com
    exit
fi

# Try to open the entered URL
links "$URL"
if [ $? -ne 0 ]; then
    echo "Failed to open $URL, searching it on DuckDuckGo..."
    # Use printf for safe encoding
    QUERY=$(printf "%s" "$URL" | jq -sRr @uri)
    links "https://duckduckgo.com/?q=$QUERY"
fi
