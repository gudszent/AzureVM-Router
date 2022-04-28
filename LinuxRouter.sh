# These actions will be run at provisioning time
# Enable IP forwarding
sudo -i sysctl -w net.ipv4.ip_forward=1
sudo sed -i "/net.ipv4.ip_forward=1/ s/# *//" /etc/sysctl.conf
sudo -i iptables -A FORWARD -o eth0 -j ACCEPT
sudo -i iptables -A FORWARD -i eth0 -j ACCEPT
sudo -i iptables -t nat -A POSTROUTING ! -d 10.0.0.0/8 -o eth0 -j MASQUERADE
echo iptables-persistent iptables-persistent/autosave_v4 boolean true | sudo debconf-set-selections
echo iptables-persistent iptables-persistent/autosave_v6 boolean true | sudo debconf-set-selections
sudo apt-get update
sudo apt-get -y install iptables-persistent
