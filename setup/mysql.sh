# Install MySQL:
sudo apt-get update
sudo apt-get install -y mysql-server
sudo apt-get install -y libmysqlclient-dev

# Configure MySQL to use utf8 as its default encoding:
if ! grep -Fq 'character_set_server' /etc/mysql/mysql.conf.d/mysqld.cnf; then
  echo 'character_set_server = utf8' >> /etc/mysql/mysql.conf.d/mysqld.cnf
  echo 'collation_server = utf8_unicode_ci' >> /etc/mysql/mysql.conf.d/mysqld.cnf
fi;

# Start MySQL:
sudo service mysql start

