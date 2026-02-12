if [ $(id -u) -ne 0 ]; then
    echo "Run as root."
    exit 1
fi
install -v -m 777 ./Veiler /usr/bin/
install -v -m 660 -d /usr/lib/Veiler/Tools
install -v -m 660 -d /var/db/Veiler/
install -v -m 660 ./package.db /var/db/Veiler/
install -v -m 660 -d /var/cache/Veiler
cp -ra Tools/* /usr/lib/Veiler/Tools
