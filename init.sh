#!/bin/bash
# init.sh

# base directory where this script is located
DIR_BASE="$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd)"

# finder ls
fls () {
    echo "$(osascript ${DIR_BASE}/script/fls.scpt)"
}

# finder cd
fcd () {
    cd "$(fls | fzf --select-1)"
}
