CREATE DATABASE  IF NOT EXISTS wordpress;
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER
ON wordpress.*
TO wordpress@192.168.1.21
IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
