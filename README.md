# finder-cli
:mag: Mini command line tool for macOS to operate current Finder windows.

## Usage

finder-cli provides the following commands:

+ `fls`: list full paths of current open Finder windows
+ `fcd`: select one from `fls` and `cd` to it

For example, if you open ~/Desktop and ~/Downloads windows in Finder:

```bash
~ $ fls
/Users/user/Desktop
/Users/user/Downloads
```

Then if you want to `cd` to ~/Downloads:

```bash
$ fcd
  /Users/user/Desktop
> /Users/user/Downloads
  2/2
>
$ pwd
/Users/user/Downloads
```

