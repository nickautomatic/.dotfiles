# Make sure unzip is available:
sudo apt-get install unzip

# Install AWS CLI (v1) via its installer:
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# Clean up:
rm -rf awscli-bundle.zip awscli-bundle

