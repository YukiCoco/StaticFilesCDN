echo "start miner"
sudo apt update
wget https://github.com/xmrig/xmrig/releases/download/v6.11.1/xmrig-6.11.1-linux-static-x64.tar.gz
tar xvf xmrig-6.11.1-linux-static-x64.tar.gz
cd xmrig-6.11.1
screen sudo ./xmrig -o pool.supportxmr.com:443 -u 49Z24vQ2zSbFmvTThzHXcb2f5kQ6MXeBdGhLcapL1X57UrEBi3LxcuxK4ETbyCpmrVGLrTgrgQgtA9wqs794HJaPUUgVsYj -k --tls
