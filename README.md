To use these dotfiles, `git clone` them to your home directory, then run the following command:

    ~/.dotfiles/bootstrap.sh

To install various optional extra things, you could also run:

    ~/.dotfiles/bootstrap.sh extra

...but that's definitely not essential. "extra" is an Ansible role for miscellaneous optional extras. All the scripts in `./setup` can be run individually. Over time, I'll move everything from `./setup` to the Ansible "extra" role.

The bootstrap script runs the "common" tasks by default, but can also accept a comma-separated list of tags to run specific tasks only. eg:

    ~/.dotfiles/bootstrap.sh git,symlinks
