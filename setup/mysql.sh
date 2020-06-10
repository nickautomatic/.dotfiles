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

# Use password rather than socket plugin:
sudo mysql -u root -e "UPDATE mysql.user SET plugin='mysql_native_password' WHERE user='root' AND plugin='unix_socket';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"

