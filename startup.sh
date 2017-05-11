#!/bin/bash

CONFIG_PATH=/tmp/config.json

TEMPLATE="[{\"nickname\":\"${NICKNAME}\",\"server\":\"${SERVER}\",\"token\":\"${TOKEN}\",\"channelMapping\":{\"#${SLACK_CHANNEL}\":\"#${IRC_CHANNEL}\"}}]"

echo $TEMPLATE > $CONFIG_PATH
exec slack-irc --config $CONFIG_PATH
