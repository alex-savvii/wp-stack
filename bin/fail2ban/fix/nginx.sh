#!/bin/sh

. ${lib}/prefix.inc.sh
. ${lib}/customer.inc.sh

if [ -n "$customer" ]
then
    for ip in $(sudo fail2ban-client get "warpdrive-site-${customer}" banip); do echo "$ip 1;"; done | sudo tee /var/www/${customer}/config/fail2ban_nginx.conf | wc -l | prefix "nginx fixed"
else
    for site in /var/www/*
    do 
    (
        cd $site
        $nul | prefix "$site"
    )
    done
fi
