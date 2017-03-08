cd "`dirname \"$0\"`"
git pull
docker pull php:7-apache
docker build -t owncloud:9.1.0-apache-php7 .
