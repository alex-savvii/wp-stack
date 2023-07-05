#!/bin/sh

. ${lib}/prefix.inc.sh

sudo sudo fail2ban-client set ssh unbanip "$@" | prefix "unbanned for ssh"
