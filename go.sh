# Automated setup of machine config, thanks to pliljenberg!
export KITCHENPLAN_REPO=https://github.com/pal/kitchenplan-config.git

# Increase the sudo timeout (since kitchenplan provision will take some time):
sh set_longer_sudoers_timeout.sh

# Install Kitchenplan and run it (takes a loooong time)
sudo gem install kitchenplan
kitchenplan setup
kitchenplan provision

# Install Homeshick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# Get my homeshick profile files
homeshick clone pal/profile
ln -s $HOME/.profile.d/init $HOME/.profile

# Switch to Bash4 shell
echo "/usr/local/bin/bash" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash
