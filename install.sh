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
tar --strip-components=1 -C /var/db/Veiler/ -xvf db.tar.gz
install -v -m 774 -d /var/cache/Veiler
install -v -m 774 veiler.conf /etc/
set +e
