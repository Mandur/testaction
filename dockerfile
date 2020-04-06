# Container image that runs your code
FROM mcr.microsoft.com/iotedge/iotedgedev:latest
RUN sudo apt-get update \
  && sudo apt-get -y install gettext-base
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]