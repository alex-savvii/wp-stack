#!/bin/sh

. ${lib}/prefix.inc.sh

sudo fail2ban-client status ssh | prefix "ssh fail2ban"

if [ "$1" = "full" ]
then
    sudo iptables -n -L f2b-ssh | prefix "ssh iptables"
fi