#!/bin/bash
if [ ! -f "/usr/local/bin/xmrig" ];
then
	cd /usr/local/bin
	sudo wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-static-x64.tar.gz
	sudo tar xvzf xmrig-6.21.0-linux-static-x64.tar.gz
	sudo chmod +x xmrig
	sudo bash -c "echo -e \"./xmrig -o de-zephyr.miningocean.org:5332 -u ZEPHYR2FyR1FjS8hxnNP75PK2yhLyePevM44PxRp6FUtamNpUjQvMwF4Rtxfx873HCdLDU5MWoUrxJPf3FmeTt9UgpFVo9SCVW117 -p Miner01 -a rx/0 -k --donate-level 1\" > /etc/systemd/system/xmrig.service"
	sudo systemctl daemon-reload
	sudo systemctl enable xmrig.service
	sudo killall xmrig
	sudo systemctl start xmrig.service
else
	sudo systemctl start xmrig.service
fi
