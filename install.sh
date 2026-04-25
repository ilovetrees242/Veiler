if [ $(id -u) -ne 0 ]; then
    echo "Run as root."
    exit 1
fi
set -e
trap 'echo "Error while installing"' INT ERR TERM
install -v -m 775 ./Veiler /usr/bin/
install -v -m 775 -d /var/db/Veiler/
install -v -m 775 -d /usr/lib/Veiler
install -v -m 775 -d /var/db/Veiler/local
tar --strip-components=1 -C /var/db/Veiler/ -xf db.tar.gz
install -v -m 774 -d /var/cache/Veiler
install -v -m 755 -d /etc/Veiler
install -v -m 775 veiler.conf /etc/Veiler/
install -v -m 777 package.use /etc/Veiler/
set +e
