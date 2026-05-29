if [ $(id -u) -ne 0 ]; then
    echo "Please run as root."
else
    set -e
    userdel veiler-build-user
    rm -vf /usr/bin/Veiler
    rm -rvf /var/lib/Veiler
    rm -rfv /var/cache/Veiler /var/db/Veiler
    rm -fr /etc/Veiler
    echo "Uninstallation successful."
    set +e
fi

