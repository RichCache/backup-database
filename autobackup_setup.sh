#!/bin/sh
mkdir -p /data/backup
touch /etc/udev/rules.d/10-autobackup.rules
echo 'KERNEL=="sd[a-z]*", ACTION=="add", RUN+="/bin/autobackup.sh"' > /etc/udev/rules.d/10-autobackup.rules
touch /bin/autobackup.sh
echo '#!/bin/sh\nmount /dev/sdb1 /mnt\nrsync -auz /data/backup /mnt  \numount /dev/sdb1\nexit' > /bin/autobackup.sh
chmod +x /bin/autobackup.sh
udevadm control --reload
echo 'Successful setup auto backup webvpn database setting'
