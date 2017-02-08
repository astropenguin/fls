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
# Like finder ls, but includes permissions and other data. Equivalent of running ls -l

fla () {
    echo "$(osascript ${DIR_BASE}/script/fla.scpt)"
}

# finder chmod
# Allows for changing of permissions

fmod () {
  FOLDER=$(fls | fzf --select-1)
  CURRENT_PERMISIONS=$(ruby ${DIR_BASE}/script/permissions_reader.rb $(ls -ld $FOLDER))
  echo "Current permissions: $CURRENT_PERMISIONS"
  while true
  do
    echo "Enter new permissions: "
    read NEW_PERMISSIONS
    ruby ${DIR_BASE}/script/validate_permission.rb $NEW_PERMISSIONS
    case $? in
      0) break ;;
      1) echo "Not a valid permission octal!" ;;
    esac
  done
  chmod -R $NEW_PERMISSIONS $FOLDER

}

# finder rm
# Removes folders
frm () {
	FOLDER=$(fls | fzf --select-1)
	while true; do
    echo "Confirm delete of $FOLDER (Y/N)"
    read CONFIRM
		case $CONFIRM in
			Y | y) rm -rf $FOLDER; break ;;
			N | n) break ;;
			*) echo "Please answer Y or N..." ;;
		esac
	done
}
