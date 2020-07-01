API="http://localhost:4741"
URL_PATH="/foodTruck"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "foodTruck": {
    "name": "'"${NAME}"'",
    "currentLocation": "'"${LOC}"'",
    "cuisine": "'"${CUISINE}"'"
  }
}'

echo
