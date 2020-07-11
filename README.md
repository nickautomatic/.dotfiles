To use these dotfiles, `git clone` them to your home directory, then run the following command:

    bash ~/.dotfiles/bootstrap.sh

To install various optional extra things, you could also run:

    bash ~/.dotfiles/bootstrap.sh extra
    source setup-extras.sh

...but that's definitely not essential. All the scripts in `./setup` can be run individually - `setup-extras.sh` just provides a convenient way of running a selection of them in one go. "extra" is an Ansible role for optional extras. Over time, I'll move everything from `./setup` to the Ansible "extra" role.

The bootstrap script runs the "common" tasks by default, but can also accept a comma-separated list of tags to run specific tasks only. eg:

    bash ~/.dotfiles/bootstrap.sh extra,symlinks
