#!/bin/sh -l

if [ -z "$ENCODED_SERVICE_ACCOUNT" ]; then
  echo "$ENCODED_SERVICE_ACCOUNT" | base64 --decode > /service_account.json
  export GOOGLE_APPLICATION_CREDENTIALS=/service_account.json
fi

sh -c "firebase $*"
