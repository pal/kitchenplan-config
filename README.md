# Setup
Increase the sudo timeout (since kitchenplan provision will take some time):

    sudo visudo

Change:

    Defaults        env_reset
to

    Defaults        env_reset,timestamp_timeout=30
# Kitchenplan Configuration
Install [Kitchenplan](https://github.com/kitchenplan/kitchenplan) and provision:

    sudo gem install kitchenplan

    kitchenplan setup

    kitchenplan provision

# Dotfiles..
Install [homeshick](https://github.com/andsens/homeshick) and then clone castle:

    git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    source "$HOME/.homesick/repos/homeshick/homeshick.sh"

    homeshick clone pal/profile
    ln -s $HOME/.profile.d/init $HOME/.profile

# Bash4

    echo "/usr/local/bin/bash" | sudo tee -a /etc/shells
    chsh -s /usr/local/bin/bash
