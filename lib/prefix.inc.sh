# shell include

. ${lib}/die.inc.sh

prefix() {
    while read line 
    do
        info "%s: %s\n" "$1" "$line"
    done
}
