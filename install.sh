if [ $(id -u) -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi
install -v -m 777 ./Veiler /usr/bin/
install -v -m 660 -d /usr/lib/Veiler/Tools
install -v -m 660 -d /var/db/Veiler
touch /var/db/Veiler/package.db
install -v -d 660 /var/cache/Veiler
chmod 660 /var/db/Veiler/package.db
cp -ra Tools/* /usr/lib/Veiler/Tools
