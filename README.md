# fls
List paths of current macOS Finder windows

## Installation

```bash
$ brew tap astropenguin/formulae
$ brew install fls
```

## Usage

```bash
$ fls
/Users/user/Desktop
/Users/user/Downloads
```

## Extras

As shown in the caveats of installation, it also provides a command `fcd`,
which enables to `cd` to one of paths of current macOS Finder windows.

```
==> Caveats
To enable fcd, add it to your shell profile:
  (for bash) source /usr/local/etc/fcd.sh
  (for fish) source /usr/local/etc/fcd.fish
```
