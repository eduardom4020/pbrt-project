sudo su -
passwd ubuntu

sudo su - ubuntu

sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG docker ubuntu
su - ubuntu

echo '\n\nplease inform crop size:'
echo '\nMin X: '
read X0
echo '\nMax X: '
read X1
echo '\nMin Y: '
read Y0
echo '\nMax Y: '
read Y1