# Install gh (Github CLI tool)
GH_VERSION=0.10.1
curl -L -O https://github.com/cli/cli/releases/download/v${GH_VERSION}/gh_${GH_VERSION}_linux_amd64.deb
sudo dpkg -i gh_${GH_VERSION}_linux_amd64.deb
rm gh_${GH_VERSION}_linux_amd64.deb

