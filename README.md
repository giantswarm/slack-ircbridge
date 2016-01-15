# slack-ircbridge

- A wrapper around https://github.com/chihchun/slack-ircbridge-docker that allows for setting configuration values at run-time via arguments
- Designed to be used in a GiantSwarm cluster

## Usage
```swarm up --var=NICKNAME=slackbridge --var=SERVER=irc.freenode.org --var=TOKEN=:token --var=SLACK_CHANNEL=freenode-giantswarm --var=IRC_CHANNEL=giantswarm```