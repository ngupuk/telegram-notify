#!/bin/sh -l

apk add curl --no-cache

curl \
    --data-urlencode "chat_id=$2" \
    --data-urlencode "text=$3" \
    https://api.telegram.org/bot$1/sendMessage