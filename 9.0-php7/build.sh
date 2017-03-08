cd "`dirname \"$0\"`"
git pull
#docker pull php:7.0-apache
docker build -t owncloud:9.0.5-apache-php7 .
