# Try the automatic setup script!
    
    git clone https://github.com/pal/kitchenplan-config.git
    cd kitchenplan-config
    ./go.sh
    
# Still done manually
* Run all updates in App Store and restart
* Switch to Alfred and add the path for Cask Apps (/opt/homebrew-cask/Caskroom)
* Activate LastPass in all browsers

Install these apps from the App Store:
* Pixelmator
* Skitch
* SimpleMind Free
* Keynote, Numbers, Pages

Download and install these manually:
* FortiClient
* Yousician

Logging in to/setting up a bunch of apps:
* Spotify
* Chrome
* Slack
* HipChat
* Dropbox
* Google Drive
* Evernote
* Skype
* FortiClient
* Microsoft Office 365

Also setup these CLI-apps:
* GitHub
* heroku

    git config --global user.name "Pål Brattberg"
    git config --global user.email "pal@subtree.se

    
# Or else, try the following...
Increase the sudo timeout (since kitchenplan provision will take some time):

    ./set_longer_sudoers_timeout.sh

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
