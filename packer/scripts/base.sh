# Configure DNS
echo 'nameserver 114.114.114.114' > /etc/resolv.conf
echo 'options single-request-reopen' >> /etc/resolv.conf

# Install Base packages
yum clean all
yum makecache
yum -y update
yum -y install epel-release
yum -y install gcc make gcc-c++ bzip2 kernel-devel-`uname -r` perl wget dkms

echo "UseDNS no" >> /etc/ssh/sshd_config
