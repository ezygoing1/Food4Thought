#!/bin/bash

API="http://localhost:4741"
URL_PATH="/user"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "user": {
      "text": "'"${TEXT}"'",
      "title": "'"${TITLE}"'"
    }
  }'


echo
