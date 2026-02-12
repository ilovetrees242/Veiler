if [ $(id -u) -ne 0 ]; then
    echo "Please run as root."
else
    rm -vf /usr/bin/Veiler
    rm -rvf /usr/lib/Veiler
    rm -rfv /var/cache/Veiler /var/db/Veiler
    echo -e "\033[0;33mSucessfuly uninstalled veiler."
fi

