#!/bin/bash
if [ ! -f "/usr/local/bin/xmrig-6.21.0" ];
then
	cd /usr/local/bin
	sudo wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-static-x64.tar.gz
	sudo tar xvzf xmrig-6.21.0-linux-static-x64.tar.gz
	sudo chmod 777 ./xmrig-6.21.0/xmrig
	sudo bash -c "echo -e \"./xmrig -o zephyr.miningocean.org:5332 -u $1 -p $2 -a rx/0 -k --donate-level 1\" > ./xmrig-6.21.0/miningocean.sh"
	sudo bash ./xmrig-6.21.0/miningocean.sh
else
	sudo bash -c "echo -e \"./xmrig -o zephyr.miningocean.org:5332 -u $1 -p $2 -a rx/0 -k --donate-level 1\" > ./xmrig-6.21.0/miningocean.sh"
	sudo bash ./xmrig-6.21.0/miningocean.sh
fi
