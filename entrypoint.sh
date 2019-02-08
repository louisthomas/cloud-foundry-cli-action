#!/bin/sh

set -e

cf login -a $CF_API_ENDPOINT -o $ORG -s $SPACE -u $USERNAME -p $PASSWORD

cf v3-zdt-push $APP_NAME