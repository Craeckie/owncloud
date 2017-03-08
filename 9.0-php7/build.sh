cd "`dirname \"$0\"`"
<<<<<<< 41ee1903ed0689ffe8550ffd85e696316d9f8513
git pull --rebase upstream master
#docker pull php:7.0-apache
docker build --pull -t owncloud:9.0.8-apache-php7 .
=======
git pull
#docker pull php:7.0-apache
docker build -t owncloud:9.0.5-apache-php7 .
>>>>>>> My local additions
