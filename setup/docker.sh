# Install Docker Engine - Community
# from https://docs.docker.com/install/linux/docker-ce/ubuntu/
#
# nb. Docker for Windows must be installed separately (via installer)

sudo apt-get update

sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

sudo apt-get update

sudo apt-get install \
  docker-ce \
  docker-ce-cli \
  containerd.io

# Update .bashrc:
if (! grep "DOCKER_HOST" ~/.bashrc) >/dev/null; then
  echo 'export DOCKER_HOST=tcp://127.0.0.1:2375' >> ~/.bashrc
  source ~/.bashrc
fi

