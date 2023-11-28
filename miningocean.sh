#!/bin/bash
if [ ! -f "/usr/local/bin/xmrig" ];
then
	cd /usr/local/bin
	sudo wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-static-x64.tar.gz
	sudo tar xvzf xmrig-6.21.0-linux-static-x64.tar.gz
	sudo chmod +x xmrig
	sudo bash -c "/xmrig -o zephyr.miningocean.org:5332 -u $1 -p $2 -a rx/0 -k --donate-level 1"
else
	sudo bash -c "/xmrig -o zephyr.miningocean.org:5332 -u $1 -p $2 -a rx/0 -k --donate-level 1"
fi
