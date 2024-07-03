#!/bin/bash

sudo apt install x11vnc
#to install x11vnc server

# we need to a "x11vnc.service" file in /etc/systemd/system/ folder and paste the below code in it
touch /etc/systemd/system/x11vnc.service

sudo tee /etc/systemd/system/x11vnc.service > /dev/null << 'EOF'
[Unit]
Description="x11vnc"
Requires=display-manager.service
After=display-manager.service

[Service]
ExecStart=/usr/bin/x11vnc -xkb -noxrecord -noxfixes -noxdamage -display :0 -auth guess -rfbauth /etc/x11vnc.pass
ExecStop=/usr/bin/killall x11vnc
Restart=on-failure
Restart-sec=2

[Install]
WantedBy=multi-user.target
EOF


sudo systemctl enable x11vnc.service
sudo systemctl start x11vnc.service
#this will enable and start the service
