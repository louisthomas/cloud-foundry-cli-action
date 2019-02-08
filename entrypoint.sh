#!/bin/sh

set -e

cf login -a $CF_API_ENDPOINT -o $ORG -s $SPACE -u $USERNAME -p $PASSWORD

cf push $APP_NAME