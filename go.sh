# Source: http://codecrate.com/2013/11/cooking-osx-machines-with-kitchenplan.html
# configure location of custom kitchenplan repository
export KITCHENPLAN_REPO=https://github.com/pal/kitchenplan-config.git

# install/update kitchenplan recipes and run chef
ruby -e "$(curl -fsSL https://raw.github.com/kitchenplan/kitchenplan/master/go)"
