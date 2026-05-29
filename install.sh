if [ $(id -u) -ne 0 ]; then
    echo "Run as root."
    exit 1
fi
useradd -M veiler-build-user
set -e
trap 'echo "Error while installing"' INT ERR TERM
chown -R veiler-build-user /var/cache/Veiler
chmod -R 775 /var/cache/Veiler
install -v -m 775 ./Veiler /usr/bin/
install -v -m 775 -d /var/db/Veiler/
install -v -m 775 -d /var/lib/Veiler
install -v -m 775 -d /var/db/Veiler/local
tar --no-same-owner --strip-components=1 -C /var/db/Veiler/ -xf db.tar.xz
install -v -m 774 -d /var/cache/Veiler
install -v -m 755 -d /etc/Veiler
install -v -m 775 veiler.conf /etc/Veiler/
install -v -m 775 package.use /etc/Veiler/
set +e
