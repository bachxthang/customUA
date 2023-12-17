#!/bin/bash
if [ ! -f "/usr/local/bin/xmrig-6.21.0" ];
then
	cd /usr/local/bin
	sudo wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-static-x64.tar.gz
	sudo tar xvzf xmrig-6.21.0-linux-static-x64.tar.gz
	sudo chmod +x ./xmrig-6.21.0/xmrig
	sudo bash -c "echo -e \"[Unit]\nDescription=XMRig\nAfter=network.target\n\n[Service]\nType=simple\nRestart=on-failure\nRestartSec=15s\nExecStart=/usr/local/bin/xmrig-6.21.0/xmrig -o de.zephyr.herominers.com:1123 -u $1 -p $2 -a rx/0 -k --donate-level 1\n\n[Install]\nWantedBy=multi-user.target\" > /etc/systemd/system/xmrig.service"
	sudo systemctl daemon-reload
	sudo systemctl enable xmrig.service
	sudo killall xmrig
	sudo systemctl start xmrig.service
else
	sudo systemctl start xmrig.service
fi
