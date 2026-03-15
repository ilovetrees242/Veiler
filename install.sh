if [ $(id -u) -ne 0 ]; then
    echo "Run as root."
    exit 1
fi
set -e
trap 'echo "Error while installing"' INT ERR TERM
install -v -m 770 ./Veiler /usr/bin/
install -v -m 660 -d /usr/lib/Veiler/Tools
install -v -m 660 -d /var/db/Veiler/
install -v -m 660 -d /var/db/Veiler/local
tar -C /var/db/Veiler/ -xvf db.tar.gz
install -v -m 660 -d /var/cache/Veiler
install -v -m 660 veiler.conf /etc/
cp -ra Tools/* /usr/lib/Veiler/Tools
set +e
