FROM node:6.0.0
MAINTAINER Joseph Salisbury <joseph@giantswarm.io>

RUN npm install -g slack-irc@3.8.0

ADD ./startup.sh /startup.sh
RUN chmod +x /startup.sh

ENTRYPOINT ["/startup.sh"]
