FROM chihchun/slack-ircbridge
MAINTAINER Joseph Salisbury <joseph@giantswarm.io>

ADD ./startup.sh /startup.sh
RUN chmod +x /startup.sh

ENTRYPOINT ["/startup.sh"]
