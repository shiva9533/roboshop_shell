
cp user.service /etc/systemd/system/user.service
cp mongodb.repo /etc/yum.repos.d/mongo.repo

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


dnf install mongodb-org-shell -y
mongo --host mongodb.sdevopsd74.online </app/schema/user.js
systemctl enable user
systemctl start user