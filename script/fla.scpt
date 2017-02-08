tell application "Finder"
	set windowpaths to {}
	set n to 1
	repeat while true
		try
			set p to POSIX path of (folder of window n as alias) & "
 	-> Created: " & the creation date of (folder of window n as alias)
			set p to p & "
	-> Modified: " & the modification date of (folder of window n as alias)
			set p to p & "
	-> Owner: " & the owner of (folder of window n as alias)
			set p to p & "
	-> Locked: " & the locked of (folder of window n as alias)
			set p to p & "
	-> Files: " & the number of files in folder (folder of window n as alias)
			set p to p & "
	-> Subfolders: " & the number of folders in folder (folder of window n as alias)

			set p to p & "\n"
			set end of windowpaths to p
			set n to n + 1
		on error
			exit repeat
		end try
	end repeat
end tell

set default to AppleScript's text item delimiters
set AppleScript's text item delimiters to "
"
set output to windowpaths as string
set AppleScript's text item delimiters to default
return output
