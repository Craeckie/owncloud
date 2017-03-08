export ver=9.0.2
cp Dockerfile.orig Dockerfile
sed -i "s/OWNCLOUD_VERSION 9.0.2/OWNCLOUD_VERSION $ver/" Dockerfile
docker build -t "owncloud:$ver-apache-php7" .