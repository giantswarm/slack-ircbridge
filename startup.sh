#!/bin/bash

set -e

CONFIG_PATH=/tmp/config.json

NICKNAME=$1
SERVER=$2
TOKEN=$3
SLACK_CHANNEL=$4
IRC_CHANNEL=$5

TEMPLATE="[{\"nickname\":\"${NICKNAME}\",\"server\":\"${SERVER}\",\"token\":\"${TOKEN}\",\"channelMapping\":{\"#${SLACK_CHANNEL}\":\"#${IRC_CHANNEL}\"},\"ircStatusNotices\": {\"join\":true,\"leave\": true}}]"

echo $TEMPLATE > $CONFIG_PATH
exec slack-irc --config $CONFIG_PATH