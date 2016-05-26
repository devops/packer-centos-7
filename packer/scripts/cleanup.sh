yum clean all
# Remove traces of mac address from network configuration
sed -i /UUID/d /etc/sysconfig/network-scripts/ifcfg-eth0
