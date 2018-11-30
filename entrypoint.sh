#!/bin/sh -l

if [ -n "$ENCODED_SERVICE_ACCOUNT" ]; then
  echo ">> Detected encoded service account. Decoding to /service_account.json"
  echo "$ENCODED_SERVICE_ACCOUNT" | base64 --decode > /service_account.json
  export GOOGLE_APPLICATION_CREDENTIALS=/service_account.json
fi

sh -c "firebase $*"
