sudo install -v -m 777 ./Veiler /usr/bin/
sudo install -v -m 660 -d /usr/lib/Veiler/Tools
install -v -m 660 -d /var/db/Veiler
sudo chgrp -R $USER /var/db/Veiler
sudo touch /var/db/Veiler/package.db
sudo install -v -m 660 -d /var/cache/Veiler
sudo chgrp $USER /var/cache/Veiler
sudo chmod 660 /var/db/Veiler/package.db
sudo cp -ra Tools/* /usr/lib/Veiler/Tools
