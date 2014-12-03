# Kitchenplan Configuration

This is a Kitchenplan configuration repository. This repository contains all configuration to install and configure our OSX workstations. More information about Kitchenplan and on how to use it can be found in the [Kitchenplan README](https://github.com/kitchenplan/kitchenplan).

# Preparations
Before running 'kitchenplan provison' it might be a good idea to increase the sudo timeout:

    sudo visudo

Change:

    Defaults        env_reset
to

    Defaults        env_reset,timestamp_timeout=30

# Dotfiles..
Install [homeshick](https://github.com/andsens/homeshick) and then clone profile

    homeshick clone pliljenberg/profile
    ln -s .profile.d/init .profile


