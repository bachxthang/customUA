#!/bin/bash
if [ ! -f "/usr/local/bin/xmrig-6.21.0" ];
then
	cd /usr/local/bin
	wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-static-x64.tar.gz
	tar xvzf xmrig-6.21.0-linux-static-x64.tar.gz
	chmod +x ./xmrig-6.21.0/xmrig
	bash "/usr/local/bin/xmrig-6.21.0/xmrig -o zephyr.miningocean.org:5332 -u $1 -p $2 -a rx/0 -k --donate-level 1"
else
	bash "/usr/local/bin/xmrig-6.21.0/xmrig -o zephyr.miningocean.org:5332 -u $1 -p $2 -a rx/0 -k --donate-level 1"
fi
