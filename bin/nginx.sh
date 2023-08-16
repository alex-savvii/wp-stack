#!/bin/sh

. ${lib}/die.inc.sh
. ${lib}/nul.inc.sh

usage() {
	say "Usage: $nul <action>"
}

help() {
	echo "Usage: $nul <action>"
	echo "with <action> (first letter is enough, case is important)"
	echo "    test: do a configtest"
	echo "    Test: do a configtest and store the assembled configuration file in ~/nginx-configtest.txt"
	echo "    reload: reload the Nginx service"
	echo "    Restart: restart (stop and start) the Nginx service"
	echo "    status: do 'systemctl status nginx'"
}

case "$1" in
	usage)
		usage 1>&2
		;;
	help)
		help 1>&2
		;;
    T*)
		sudo nginx -T -c /etc/nginx/nginx.conf > ${HOME}/nginx-configtest.txt
		;;
    t*)
		sudo nginx -t -c /etc/nginx/nginx.conf
		;;
    R*)
        sudo systemctl restart nginx
		$0 status
		;;
    r*)
        sudo systemctl reload nginx
		$0 status
		;;
    s*)
		sudo systemctl status nginx
		;;
    *)
		usage 1>&2
		;;
esac
