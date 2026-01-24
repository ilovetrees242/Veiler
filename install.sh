if [ $(id -u) -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi
install -v -m 771 Veiler /usr/bin/
install -v -m 660 -d /usr/lib/Veiler/Tools
cp -ra Tools/* /usr/lib/Veiler/Tools
