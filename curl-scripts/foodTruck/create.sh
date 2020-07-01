#!/bin/bash

API="http://localhost:4741"
URL_PATH="/foodTruck"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "foodTruck": {
      "name": "'"${NAME}"'",
      "currentLocation": "'"${LOC}"'",
      "cuisine": "'"${CUISINE}"'"
    }
  }'

echo
