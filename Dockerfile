FROM ubuntu:latest
ENV WEAVE_VERSION 2.5.2
ADD https://github.com/weaveworks/weave/releases/download/v${WEAVE_VERSION}/weave /weave
RUN chmod a+x /weave
CMD "/weave setup && /weave launch && eval $(/weave env)"
