# Automated setup of machine config, thanks to pliljenberg!
export KITCHENPLAN_REPO=https://github.com/pal/kitchenplan-config.git

# Increase the sudo timeout (since kitchenplan provision will take some time):
./set_longer_sudoers_timeout.sh


echo "Installing kitchenplan"
sudo gem install kitchenplan

echo "Running kitchenplan setup (takes a looong time)"
kitchenplan setup
echo "Running kitchenplan provision"
kitchenplan provision
echo "kitchenplan completed"


echo "Installing Homeshick"
HS_REPO=$HOME/.homesick/repos/homeshick
if cd $HS_REPO; then git pull; else git clone git://github.com/andsens/homeshick.git $HS_REPO; fi
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# Get my homeshick profile files
homeshick clone pal/profile
ln -s $HOME/.profile.d/init $HOME/.profile
homeshick link
homeshick pull

# Switch to Bash4 shell (or not, Mac OS X default is fine)
#echo "/usr/local/bin/bash" | sudo tee -a /etc/shells
#chsh -s /usr/local/bin/bash
