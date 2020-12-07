#!/bin/sh -l

echo "Sending message..."
curl -s \
    --data-urlencode "chat_id=$2" \
    --data-urlencode "parse_mode=Markdown" \
    --data-urlencode "text=[$GITHUB_REPOSITORY](https://github.com/$GITHUB_REPOSITORY/commit/$GITHUB_SHA/checks): 

$3" \
    https://api.telegram.org/bot$1/sendMessage > /dev/null
echo "Done!"
