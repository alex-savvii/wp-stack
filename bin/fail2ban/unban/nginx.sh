#!/bin/sh

. ${lib}/prefix.inc.sh
. ${lib}/customer.inc.sh

sudo fail2ban-client set warpdrive-site-${customer} unbanip "$@" | prefix "unbanned for nginx"
