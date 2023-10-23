# discord-debian11

Convierte el deb de Discord hecho para Ubuntu a Debian 11.

## Descripción

Actualmente, Discord tiene un paquete creado para Ubuntu; sin embargo, 
falla debido a las dependencias al intentar instalarlo en Debian 11. Esto es
porque la librería no tiene el mismo nombre en Debian como en Ubuntu,
por lo que es necesario cambiar la lista de dependencias del paquete para instalarlo.

## Basado en

Este script se basa en los pasos indicados en el sitio web 
https://www.linuxcapable.com/how-to-install-discord-on-debian-11-bullseye

## USO

El uso del script debería ser similar al siguiente:

```bash
git clone https://github.com/RAcl/discord-debian11.git
cd discord-debian11
wget https://dl.discordapp.net/apps/linux/0.0.18/discord-0.0.18.deb
sh debian11-discord.sh discord-0.0.18.deb
```
donde 0.0.18 es la versión de Discord.

Ha sido probado con éxito desde las versiones de Discord 0.0.16 hasta la 0.0.32.

## Importante
El usuario que ejecuta el script requiere acceso a sudo.
