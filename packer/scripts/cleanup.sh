yum clean all
# Remove traces of mac address from network configuration
sed -i /UUID/d /etc/sysconfig/network-scripts/ifcfg-eth0

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
