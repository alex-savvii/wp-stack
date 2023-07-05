#!/bin/sh

. ${lib}/prefix.inc.sh
. ${lib}/customer.inc.sh

[ -n "$customer" ] && sudo fail2ban-client status warpdrive-site-${customer} | prefix "nginx fail2ban"

if [ "$1" = "full" ]
then
    [ -n "$customer" ] && sudo cat /var/www/${customer}/config/fail2ban_nginx.conf | prefix "nginx config  "
fi
