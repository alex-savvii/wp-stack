# shell include

. $lib/color.inc.sh

die() {
    printf "${RED}ERROR${OFF}: %s\n" "$1" 1>&2
    exit 2
}

warn() {
    printf "${YEL}WARNING${OFF}: %s\n" "$1" 1>&2
}

info() {
    printf "${GRN}INFO${OFF}: %s\n" "$1" 1>&2
}

say() {
    printf "%s\n", "$1"
}