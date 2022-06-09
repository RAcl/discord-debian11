# discord-debian11

Convertir el deb de discord  hecho para ubuntu a debian11

## Descripción

Discord actualmente tiene un paquete creado para ubuntu, sin embargo,
falla por dependencias al intentar instalarlo en debian 11. Esto se
debe a que la liberia no tiene el mismo nombre bajo debian que en ubuntu,
por lo que es necesario cambiar la lista de dependencias del paquete
a instalar.

## Basado en

Este script está basado en los pasos indicados en el sitio web
https://www.linuxcapable.com/how-to-install-discord-on-debian-11-bullseye

## USO

El uso del secript debe ser similar a lo siguente:

```bash
git clone https://gitlab.com/bash-script/discord-debian11.git
cd discord-debian11
wget https://dl.discordapp.net/apps/linux/0.0.18/discord-0.0.18.deb
sh debian11-discord.sh discord-0.0.18.deb
```

donde 0.0.18 es la versión actual de discord, se ha probado con las versiones 0.0.16, 0.0.17 y 0.0.18, pero se asume puede funcionar con una posterior.
