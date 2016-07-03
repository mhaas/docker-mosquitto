# --restart=always enables autostart on boot:
# https://serverfault.com/questions/633067/how-do-i-auto-start-docker-containers-at-system-boot
docker run --volumes-from mqtt-data --detach=true --name=mqtt --restart=unless-stopped -p 1883:1883 mhaas/mosquitto
