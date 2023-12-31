component=cart
source common.sh

func_nodejs


cp cart.service /etc/systemd/system/cart.service

curl -sL https://rpm.nodesource.com/setup_lts.x | bash
dnf install nodejs -y
echo ">>>>>>>>>>>> install complete <<<<<<<<<<<<"
useradd roboshop
echo ">>>>>>>>>>>> user added  <<<<<<<<<<<<"
mkdir /app
echo ">>>>>>>>>>>> dir created   <<<<<<<<<<<<"
curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip
cd /app
unzip /tmp/cart.zip
cd /app
npm install
systemctl daemon-reload

systemctl enable cart
systemctl start cart