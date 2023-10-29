cp catalogue.service /etc/systemd/system/catalogue.service
cp mongodb.repo /etc/yum.repos.d/mongo.repo

curl -sL https://rpm.nodesource.com/setup_lts.x | bash
dnf install nodejs -y
useradd roboshop
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install


dnf install mongodb-org-shell -y
mongo --host mongodb.sdevopsd74.online </app/schema/catalogue.js

systemctl daemon-reload
systemctl enable catalogue
systemctl start catalogue