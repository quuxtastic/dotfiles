extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2|*.tbz2)   tar -jxvf "$1"      ;;
            *.tar.gz|*.tgz)     tar -zxvf "$1"      ;;
            *.bz2)              bunzip2 "$1"        ;;
            *.gz)               gunzip "$1"         ;;
            *.tar)              tar -xvf "$1"       ;;
            *.zip|*.ZIP)        unzip "$1"          ;;
            *.pax)              cat "$1" | pax -r   ;;
            *.pax.Z)            uncompress "$1" --stdout | pax -r ;;
            *.Z)                uncompress "$1"     ;;
            *) echo "Dunno what '$1' is" ;;
        esac
    else
        echo "'$1' does not exist"
    fi
}
