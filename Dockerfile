FROM ioft/armhf-debian
# Inspired by examples from the Docker Hub, e.g.
# https://hub.docker.com/r/aexea/mosquitto/~/dockerfile/
# and https://hub.docker.com/r/toke/mosquitto/
MAINTAINER Michael Haas <haas@computerlinguist.org>
RUN apt-get update && apt-get install -y mosquitto
EXPOSE 1883
USER mosquitto
ENTRYPOINT "mosquitto"
# TODO: add data volumes: https://docs.docker.com/engine/userguide/containers/dockervolumes/
# or data volume container - can that be used at image creation time?
# VOLUME instruction adds a volume to the image - what does that give me?
CMD ["-c", "/etc/mosquitto/mosquitto.conf"]
