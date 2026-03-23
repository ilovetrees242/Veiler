if [ $(id -u) -ne 0 ]; then
    echo "Please run as root."
else
    set -e
    rm -vf /usr/bin/Veiler
    rm -rvf /usr/lib/Veiler
    rm -rfv /var/cache/Veiler /var/db/Veiler
    rm -f /etc/veiler.conf  
    echo -e "\033[0;33mSucessfuly uninstalled veiler.\033[0m"
    set +e
fi

