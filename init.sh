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

# finder la
# Like finder ls, but includes permissions and other info. Equivalent of running ls -a

fla () {
    echo "$(osascript ${DIR_BASE}/script/fls.scpt)"
}

# finder chmod 
# Allows for changing of permissions

fmod () {

}

# finder chown
# Allows for changing of owner

fown () {

}

# finder chgrp
# Allows for changing of groups

fgrp () {

}

# finder rm
# Removes folders

frm () {
	FILE=$(fls | fzf --select-1)
	while true; do
		echo "Confirm delete of $FILE (Y/N)"
		read CONFIRM
		case CONFIRM in
			Y | y) if [[ -d $FILE ]]; then rm -r $FILE; else rm $FILE; break ;;
			N | n) break ;;
			*) echo "Please answer Y or N..." ;;
		esac
	done
}