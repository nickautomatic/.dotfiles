# Install Oracle JDK (required by Elasticsearch):
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer

# Install Elasticsearch:
if ! dpkg -l elasticsearch >/dev/null 2>&1; then
  wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.2.deb
  sudo dpkg -i elasticsearch-5.1.2.deb
  rm elasticsearch-5.1.2.deb
fi

# Start Elasticsearch:
sudo service elasticsearch start

