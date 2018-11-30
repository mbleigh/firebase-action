FROM node:8

LABEL "com.github.actions.name"="GitHub Action for Firebase CLI"
LABEL "com.github.actions.description"="Deploy to Firebase Hosting, Cloud Functions, and more using the Firebase CLI"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="mbleigh/firebase-action"
LABEL "homepage"="https://firebase.google.com/"
LABEL "maintainer"="Firebase"

RUN npm install -g firebase-tools

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
