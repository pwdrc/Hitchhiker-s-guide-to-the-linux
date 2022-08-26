# How to sync time and date via timedatectl and with a remote NPT server

> timedatectl set-ntp true

> systemctl enable --now systemd-timesyncd.service

> vim /etc/systemd/timesyncd.conf
NTP=a.st1.ntp.br b.st1.ntp.br c.st1.ntp.br d.st1.ntp.br gps.ntp.br a.ntp.br b.ntp.br c.ntp.br

> timedatectl set-ntp true

> service systemd-timesyncd restart

