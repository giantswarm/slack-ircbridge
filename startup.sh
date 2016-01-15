#!/bin/bash

NICKNAME=$1
SERVER=$2
TOKEN=$3
SLACK_CHANNEL=$4
IRC_CHANNEL=$5

TEMPLATE="[{\"nickname\":\"${NICKNAME}\",\"server\":\"${SERVER}\",\"token\":\"${TOKEN}\",\"channelMapping\":{\"#${SLACK_CHANNEL}\":\"#${IRC_CHANNEL}\"}}]"

echo $TEMPLATE > /slack-irc/config.json

/usr/bin/supervisord -n -c /supervisord.conf