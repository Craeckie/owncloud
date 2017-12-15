cd "`dirname \"$0\"`"
git pull
docker pull php:7.0-apache
docker build -t owncloud:9.1.7-apache-php7 .
