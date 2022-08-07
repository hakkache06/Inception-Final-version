
echo "start mysql...."
service mysql start;
echo "creating data...."
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wp_db; CREATE USER IF NOT EXISTS 'wp-user'@'%' IDENTIFIED BY 'wp-pass';GRANT ALL PRIVILEGES ON *.* TO 'wp-user'@'%';FLUSH PRIVILEGES;"
echo "creating stop...."
mysql -u root wp_db < dbexport.sql
service mysql stop;

echo "creating start...."
mysqld
