cd "`dirname \"$0\"`"
git pull
docker pull php:5.6-apache
docker build -t owncloud:9.0.1-apache .
