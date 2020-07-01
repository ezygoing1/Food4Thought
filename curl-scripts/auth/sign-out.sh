#!/bin/bash
API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
--include \
--request DELETE \
--header "Authorization: Bearer ${TOKEN}" \
--header "Content-Type: application/json" \

echo
