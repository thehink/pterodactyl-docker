docker build -t pterodactyl-daemon -f ./daemon/Dockerfile ./daemon
docker tag pterodactyl-daemon:latest thehink/pterodactyl-daemon:1.0.0-rc.5
docker push thehink/pterodactyl-daemon:1.0.0-rc.5

docker build -t pterodactyl-panel -f ./panel/Dockerfile ./panel
docker tag pterodactyl-panel:latest thehink/pterodactyl-panel:1.0.0-rc.5
docker push thehink/pterodactyl-panel:1.0.0-rc.5