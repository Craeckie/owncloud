#!/bin/bash
set -e

if [ ! -e '/var/www/html/version.php' ]; then
	#tar cf - --one-file-system -C /usr/src/owncloud . | tar xf -
	pushd /usr/src/owncloud
	DEST="/var/www/html"
	echo "Installing ownCloud to $DEST.. "
	find . -type d -exec mkdir -p "$DEST/"\{} \; || exit 1
	find . -type f -exec mv \{} "$DEST/"\{} \; || exit 1
	echo "Done!"
	find . -type d -empty -delete
	#chown -R www-data /var/www/html
fi

exec "$@"
