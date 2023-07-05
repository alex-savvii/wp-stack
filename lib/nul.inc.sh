# shell include

_this="$(readlink -f "$0")"
_cmd="${_this##$bin/}"
_cmd="${_cmd%%.sh}"
_cmd="${_cmd%%.py}"
_cmd="${_cmd%.sh}"

export nul="savvii ${_cmd}"
