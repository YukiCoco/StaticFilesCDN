cd /root/linux-amd64/services/nkn-node
sudo service nkn-commercial stop
sudo rm wallet.json
sudo rm wallet.pswd
sudo echo 123123 | sudo tee wallet.pswd
sudo ./nknc wallet -c --password=123123
sudo service nkn-commercial start
