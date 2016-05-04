# slack-ircbridge

- A Giant Swarm application for running https://github.com/ekmartin/slack-irc
- Originally based on https://github.com/chihchun/slack-ircbridge-docker, but without using supervisord.
- Designed to be used in a Giant Swarm cluster

## Usage
```swarm up --var=NICKNAME=slackbridge --var=SERVER=irc.freenode.org --var=TOKEN=:token --var=SLACK_CHANNEL=freenode-giantswarm --var=IRC_CHANNEL=giantswarm```