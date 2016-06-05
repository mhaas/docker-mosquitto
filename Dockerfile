FROM ioft/armhf-debian
# Inspired by examples from the Docker Hub, e.g.
# https://hub.docker.com/r/aexea/mosquitto/~/dockerfile/
# and https://hub.docker.com/r/toke/mosquitto/
MAINTAINER Michael Haas <haas@computerlinguist.org>
EXPOSE 1883
# mosquitto normally starts as root under Debian, so we have to adjust the
# permissions on the log directory
RUN apt-get update && apt-get install -y mosquitto && chown mosquitto /var/log/mosquitto
VOLUME ["/var/lib/mosquitto", "/var/log/mosquitto", "/etc/mosquitto"]
USER mosquitto
CMD ["mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]
