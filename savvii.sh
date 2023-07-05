#!/bin/sh

export here="$(dirname "$(readlink -f "$0")")"
export this="$(basename "$(readlink -f "$0")")"
export bin="${here}/bin"
export lib="${here}/lib"
export doc="${here}/doc"
export PYTHONPATH="$lib"

. $lib/die.inc.sh

cmd="$1"

[ -z "${cmd}" ] && die "no command given"

shift

[ -x "${bin}/${cmd}.py" ] && exec "${bin}/${cmd}.py" "$@"
[ -x "${bin}/${cmd}.pl" ] && exec "${bin}/${cmd}.pl" "$@"
[ -x "${bin}/${cmd}.sh" ] && exec "${bin}/${cmd}.sh" "$@"

die "$this $cmd not found"