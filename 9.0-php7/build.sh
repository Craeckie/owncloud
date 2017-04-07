cd "`dirname \"$0\"`"
git pull --rebase upstream master
#docker pull php:7.0-apache
docker build --pull -t owncloud:9.0.8-apache-php7 .
