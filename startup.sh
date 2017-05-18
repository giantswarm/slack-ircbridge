#!/bin/sh

CONFIG_PATH=/tmp/config.json

TEMPLATE="[{\"nickname\":\"${NICKNAME}\",\"server\":\"${SERVER}\",\"token\":\"${TOKEN}\",\"channelMapping\":{\"#${SLACK_CHANNEL}\":\"#${IRC_CHANNEL}\"}}]"

echo $TEMPLATE > $CONFIG_PATH
slack-irc --config $CONFIG_PATH
