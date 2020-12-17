FROM alpine:3.12.3

LABEL "name"="Cloud Foundry CLI Action"
LABEL "maintainer"="ltlamontagne@gmail.com>"
LABEL "version"="1.0.2"

LABEL "com.github.actions.name"="GitHub Action for Cloud Foundry"
LABEL "com.github.actions.description"="Wraps the Cloud foundry CLI to enable CF commands."
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="green"

# Install uuidgen
RUN apk add --no-cache ca-certificates curl bash jq util-linux

# Install Cloud Foundry cli
ADD https://cli.run.pivotal.io/stable?release=linux64-binary&version=6.47.2 /tmp/cf-cli.tgz
RUN mkdir -p /usr/local/bin && \
  tar -xzf /tmp/cf-cli.tgz -C /usr/local/bin && \
  cf --version && \
  rm -f /tmp/cf-cli.tgz

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
