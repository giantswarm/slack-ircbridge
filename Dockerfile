FROM chihchun/slack-ircbridge
MAINTAINER Joseph Salisbury <joseph@giantswarm.io>

ADD ./startup.sh /startup.sh

ENTRYPOINT ["/startup.sh"]
