# Latin Clementine Vulgate Bible on the Command Line

The Clementine Vulgate made accessible through the POSIX Shell.

This version of the tool contains the complete 73-book Canon of the Church.

The Book titles are in their original Latin renderings according to the way that the [Clementine Text Project](https://bitbucket.org/clementinetextproject/) lists them. All textual contents are derived from [Clementine Text Project](https://bitbucket.org/clementinetextproject/).

If you're not familar with the Vulgate, you may run the `vul` program with the `-l` flag in order to get a complete list of the books.



## Usage

```
    usage: ./vul [flags] [reference...]

      -l      list books
      -W      no line wrap
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern

```

## Installation

Install `vul` by running:

```
git clone https://github.com/theunpleasantowl/vul-complete.git
cd vul
sudo make install
```

## Arch User Repository

Arch users can install the package from the [AUR](https://aur.archlinux.org/packages/vul-complete-git/).

The package name is `vul-complete-git`. For example, if you have an AUR helper installed you may run:

```
yay -S vul-complete-git
```


## License

Public domain
