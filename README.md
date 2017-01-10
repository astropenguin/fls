# finder-cli
:mag: Command line interface for macOS to operate current Finder windows.

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

## Installation

Install it from Homebrew and follow the message of caveats.
As a dependency, [fzf][fzf] (command-line fuzzy finder by [junegunn][junegunn]) will be also installed.

```bash
$ brew tap snoopython/formulae
$ brew install finder-cli
...
==> Caveats
To enable finder-cli, add to your profile:
  source /usr/local/etc/finder-cli/init.sh

$ echo "source /usr/local/etc/finder-cli/init.sh" >> ~/.bashrc
```

## Hints

+ If you open only one window in Finder, `fcd` will not show fzf prompt to directly `cd` to the one.
+ Front Finder window will be listed at the bottom of fzf prompt.

[fzf]: https://github.com/junegunn/fzf
[junegunn]: https://github.com/junegunn