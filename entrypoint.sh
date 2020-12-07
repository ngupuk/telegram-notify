#!/bin/sh -l

apk add curl --no-cache

curl \
    --data-urlencode "chat_id=$2" \
    --data-urlencode "parse_mode=Markdown" \
    --data-urlencode "text=[$GITHUB_REPOSITORY](https://github.com/$GITHUB_REPOSITORY/runs/$GITHUB_RUN_ID): \n$3" \
    https://api.telegram.org/bot$1/sendMessage