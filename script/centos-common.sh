# Update OS
sudo yum install -y epel-release
sudo yum install -y htop
sudo yum install -y nano
sudo yum install -y net-tools
sudo yum install -y yum-utils
sudo yum install -y git
# Tat SELinux
setenforce 0
sed -i --follow-symlinks 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/sysconfig/selinux

# Tat Firewall
systemctl disable firewalld >/dev/null 2>&1
systemctl stop firewalld

#Hosts
# cat >>/etc/hosts<<EOF
# 172.16.10.100 hanoi
# 172.16.10.101 saigon
# 172.16.10.102 cantho
# EOF

cat >>/etc/hosts<<EOF
34.87.169.123 hanoi
34.126.129.239 saigon
34.132.194.208 cantho
EOF
