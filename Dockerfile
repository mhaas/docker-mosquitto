FROM ioft/armhf-debian
# Inspired by examples from the Docker Hub, e.g.
# https://hub.docker.com/r/aexea/mosquitto/~/dockerfile/
# and https://hub.docker.com/r/toke/mosquitto/
MAINTAINER Michael Haas <haas@computerlinguist.org>
RUN apt-get update && apt-get install -y mosquitto
VOLUME ["/var/lib/mosquitto", "/var/log/mosquitto/", "/etc/mosquitto"]
EXPOSE 1883
USER mosquitto
CMD ["mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]
