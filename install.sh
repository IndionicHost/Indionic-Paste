sudo apt update -y && sudo apt upgrade -y

clean

mkdir -p /var/www/

sudo apt install git -y

git clone https://github.com/IndionicHost/Indionic-Paste.git

clean

cd Indionic-Paste

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

apt install -y nodejs

clean 

cp config.demo.json config.json

npm install

mkdir hastes

npm install pm2 -g

clean

pm2 start server.js