cd "`dirname \"$0\"`"
git pull
docker pull php:7-apache
docker build -t owncloud:9.0.4-apache-php7-redis .
