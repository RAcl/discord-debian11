# discord-debian11

Convert the discord deb made for ubuntu to debian11

## Descripction

Discord currently has a package created for ubuntu, however,
it fails due to dependencies when trying to install it on debian 11. This is
because the library does not have the same name under debian as in ubuntu,
so it is necessary to change the package's
dependency list to install.

## Based on

This script is based on the steps indicated on the website
https://www.linuxcapable.com/how-to-install-discord-on-debian-11-bullseye

## USAGE

The use of the script should be similar to the following:

```bash
git clone https://gitlab.com/bash-script/discord-debian11.git
cd discord-debian11
wget https://dl.discordapp.net/apps/linux/0.0.18/discord-0.0.18.deb
sh debian11-discord.sh discord-0.0.18.deb
```
where 0.0.18 is the discord version.

It has been successfully tested from version 0.0.16 to 0.0.24.
