cd "`dirname \"$0\"`"
git pull --rebase upstream master || exit
git push -f
docker pull php:7.0-apache
docker build -t owncloud:9.1.8-apache-php7 .
