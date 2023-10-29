
cp user.service /etc/systemd/system/user.service

curl -sL https://rpm.nodesource.com/setup_lts.x | bash
dnf install nodejs -y
useradd roboshop
mkdir /app
curl -L -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user.zip
cd /app
unzip /tmp/user.zip
cd /app
npm install

systemctl daemon-reload

cp mongodb.repo /etc/yum.repos.d/mongo.repo

dnf install mongodb-org-shell -y

systemctl enable user
systemctl start user