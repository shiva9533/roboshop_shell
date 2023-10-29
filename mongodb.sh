cp mongobd.repo /etc/yum.repos.d/mongobd.repo
dnf install mongodb-org -y


systemctl enable mongod

systemctl restart mongod