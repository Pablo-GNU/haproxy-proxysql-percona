CREATE USER 'haproxy_user'@'%';

CREATE USER 'monitor_proxysql'@'%' IDENTIFIED WITH mysql_native_password BY '123456789abcmonitor';
GRANT USAGE, REPLICATION CLIENT ON *.* TO 'monitor_proxysql'@'%';

CREATE USER 'test'@'%' IDENTIFIED WITH mysql_native_password BY '123456789abctest';
GRANT ALL ON *.* TO 'test'@'%';

FLUSH PRIVILEGES;