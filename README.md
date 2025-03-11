# .dotfiles

## What is this?

These are my dotfiles, plus a bootstrap script to install them and all the other tools I commonly use.

Managing them like this has a few benefits:

* It makes it quick and easy to set up a new machine
* It makes it easy to keep my development environment consistent on different computers (eg. my work laptop and my home PC)
* It provides useful documentation for how and why I installed certain things

## Requirements

None, apart from `bash` and `git`: when running `bootstrap.sh` for the first time it will install everything else it needs (Ansible, etc).

I use these dotfiles in Ubuntu on WSL (Windows Subsystem for Linux), but they should work without modification in Ubuntu (or similar flavours of Linux).

## Usage

To use these dotfiles, `git clone` them to your home directory, then run the following command:

    ~/.dotfiles/bootstrap.sh

To install various optional extra things, you could also run:

    ~/.dotfiles/bootstrap.sh extra

...but that's definitely not essential. "extra" is an Ansible role for miscellaneous optional extras.

The bootstrap script runs the "common" tasks by default, but can also accept a comma-separated list of tags to run specific tasks only. eg:

    ~/.dotfiles/bootstrap.sh git,symlinks

## How it works

Behind the scenes, `bootstrap.sh` uses **Ansible** to manage the changes it makes. The reason for this (and why it's preferable to, say, bash scripts) is that it's *idempotent*: ie. it can safely be run multiple times without changing the outcome.

The Ansible tasks are essentially declarative: they describe a state that the system should be in after they're run. If the system is *already* in this state (eg. if a tool is already installed, or a file already exists), they will do nothing. This makes it reasonably fast and safe to re-run all tasks if needed.

## Highlights

There are a few things here I find particularly useful:

* [atuin](https://atuin.sh) - for infinite, searchable shell history
* [delta](https://github.com/dandavison/delta) - for nicer git diffs
* [fzf](https://github.com/junegunn/fzf) - for enhanced bash history search, among other things
* [mise](https://mise.jdx.dev) - for managing programming language versions
* [tig](https://www.atlassian.com/blog/git/git-tig) - for browsing git history
* [tldr](https://tldr.sh) - simplified man pages with practical examples of CLI commands
* [z](https://github.com/rupa/z) - for quickly jumping between recently-used directories
* The aliases in my [.gitconfig](https://github.com/nickautomatic/.dotfiles/blob/main/.gitconfig) (`git l` and `git br` in particular)
