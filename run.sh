# --restart=always enables autostart on boot:
# https://serverfault.com/questions/633067/how-do-i-auto-start-docker-containers-at-system-boot
docker run --detach=true --name=mqtt --restart=always -p 1883:1883 mhaas/mosquitto
