echo "start miner"
sudo apt update
wget https://github.com/xmrig/xmrig/releases/download/v6.11.1/xmrig-6.11.1-linux-static-x64.tar.gz
tar xvf xmrig-6.11.1-linux-static-x64.tar.gz
sudo touch /etc/systemd/system/xmrig.service
sudo chmod 777 /etc/systemd/system/xmrig.service
sudo cat >/etc/systemd/system/xmrig.service<<EOF
[Unit]
Description=start xmrig

[Service]
WorkingDirectory=/home/admin/xmrig-6.11.1/
ExecStart=/home/admin/xmrig-6.11.1/xmrig -o pool.supportxmr.com:443 -u 49Z24vQ2zSbFmvTThzHXcb2f5kQ6MXeBdGhLcapL1X57UrEBi3LxcuxK4ETbyCpmrVGLrTgrgQgtA9wqs794HJaPUUgVsYj -k --tls
Restart=always
# Restart service after 10 seconds if the dotnet service crashes:
RestartSec=10
KillSignal=SIGINT
User=root
[Install]
WantedBy=multi-user.target
EOF
sudo systemctl enable xmrig.service
sudo systemctl start xmrig.service
