# Install Heroku:
# cf. https://devcenter.heroku.com/articles/heroku-cli#standalone-installation
wget https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-linux-x64.tar.gz -O heroku.tar.gz
tar -xvzf heroku.tar.gz
sudo mkdir -p /usr/local/lib /usr/local/bin

# The contents of the downloaded tarball contain a version number, so let's
# grep for the name of the folder rather than hardcode it:
HEROKU_FOLDER_NAME=`ls -a | grep 'heroku-cli-'`
sudo mv $HEROKU_FOLDER_NAME /usr/local/lib/heroku
sudo ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

rm heroku.tar.gz

