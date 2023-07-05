# shell include

. ${lib}/die.inc.sh

prefix() {
    while read line 
    do
        info "$(printf "%s: %s\n" "$1" "$line")"
    done
}
