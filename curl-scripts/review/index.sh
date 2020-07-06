#!/bin/sh

API="http://localhost:4741"
URL_PATH="/review"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \

echo
