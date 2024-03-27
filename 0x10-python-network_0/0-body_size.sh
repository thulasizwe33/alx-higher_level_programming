#!/bin/bash

# Check if URL is provided as argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send request to the URL and get the size of the response body in bytes
body_size=$(curl -sI "$1" | grep -i content-length | awk '{print $2}' | tr -d '\r')

# Display the size of the response body
echo "$body_size"
