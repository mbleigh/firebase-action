#!/usr/bin/env bash

if [ -n "$ENCODED_APPLICATION_CREDENTIALS_KEY" ]; then
  echo ">> Using value stored in '$ENCODED_APPLICATION_CREDENTIALS_KEY' as encoded service account key"
  export ENCODED_APPLICATION_CREDENTIALS=${!ENCODED_APPLICATION_CREDENTIALS_KEY}
fi

if [ -n "$ENCODED_APPLICATION_CREDENTIALS" ]; then
  echo ">> Detected encoded service account credential. Decoding to /service_account.json"
  echo "$ENCODED_APPLICATION_CREDENTIALS" | base64 --decode > /service_account.json
  export GOOGLE_APPLICATION_CREDENTIALS=/service_account.json
fi

sh -c "firebase $*"
