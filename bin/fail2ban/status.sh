#!/bin/sh

. ${lib}/nul.inc.sh

$nul/ssh "$@"
$nul/nginx "$@"
