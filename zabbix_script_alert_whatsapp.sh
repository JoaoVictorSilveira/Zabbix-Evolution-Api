#!/bin/bash

URL="http://IP_EVOLUTIONAPI/message/sendText/{instance}"
APIKEY="CHAVE DE API INSTACIA EVOLUTION API"
PHONE="$1"
TITULO="$2"
MESSAGE="$TITULO$3"

curl --request POST \
  --url "${URL}" \
  --header 'Content-Type: application/json' \
  --header 'apikey: ${APIKEY}' \
  --data '{
  "textMessage": {
    "text": "${MESSAGE}"
  },
  "number": "${PHONE}"
}'
