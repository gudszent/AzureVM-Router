# These actions will be run at provisioning time
# Enable IP forwarding
sudo -i sysctl -w net.ipv4.ip_forward=1
sudo sed -i "/net.ipv4.ip_forward=1/ s/# *//" /etc/sysctl.conf
sudo -i iptables -A FORWARD -o eth0 -j ACCEPT
sudo -i iptables -A FORWARD -i eth0 -j ACCEPT
sudo -i iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
