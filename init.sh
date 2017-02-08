#!/bin/bash
# init.sh

# base directory where this script is located
DIR_BASE="$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd)"


# For development purposes only.
DEV_BASE="~/Documents/Code\ Box/finder-cli"

# finder ls
fls () {
    echo "$(osascript ~/Documents/Code\ Box/finder-cli/script/fls.scpt)"
}

# finder cd
fcd () {
    cd "$(fls | fzf --select-1)"
}

# finder la
# Like finder ls, but includes permissions and other data. Equivalent of running ls -l

fla () {
    echo "$(osascript ~/Documents/Code\ Box/finder-cli/script/fla.scpt)"
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
    if [[ $CONFIRM != "" ]]
    then
  		echo "Confirm delete of $FILE (Y/N)"
  		read CONFIRM
  		case $CONFIRM in
  			Y | y) rm -rf $FILE; break ;;
  			N | n) break ;;
  			*) echo "Please answer Y or N..." ;;
  		esac
    else
      break
    fi
	done
}
