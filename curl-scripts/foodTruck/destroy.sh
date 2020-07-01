#!/bin/bash

API="http://localhost:4741"
URL_PATH="/foodTruck"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \

echo
