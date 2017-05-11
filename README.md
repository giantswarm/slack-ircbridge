# slack-ircbridge

A Dockerfile and some manifests for running [ekmartin/slack-irc](https://github.com/ekmartin/slack-irc) on Kubernetes.

Originally based on https://github.com/chihchun/slack-ircbridge-docker, but without using supervisord.

The Docker image is available via [`giantswarm/slack-ircbridge`](https://hub.docker.com/r/giantswarm/slack-ircbridge/) as an automated build.

## Running the image

```
docker run --rm -ti \
  -e NICKNAME=slackbridge \
  -e SERVER=irc.freenode.org \
  -e SLACK_CHANNEL=freenode-giantswarm \
  -e IRC_CHANNEL=giantswarm \
  -e TOKEN=your_slack_token \
  giantswarm/slack-ircbridge
```
