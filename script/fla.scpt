tell application "Finder"
    set windowpaths to {}
    set n to 1
    repeat while true
        try
            set p to POSIX path of (folder of window n as alias)
            set p to p + the creation date of (folder of window n as alias)
            set p to p + the modification date of (folder of window n as alias)
            set end of windowpaths to p
            set n to n + 1
        on error
            exit repeat
        end try
    end repeat
end tell

set default to AppleScript's text item delimiters
set AppleScript's text item delimiters to "\n"
set output to windowpaths as string
set AppleScript's text item delimiters to default
return output