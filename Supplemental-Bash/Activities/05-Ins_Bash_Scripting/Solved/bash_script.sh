#!bin/bash

# Declare my static variables
home= ~/Documents/RICEHOU201906DATA1


# Check if there are changes that would conflict
pushd $home
if [[ `git diff --check HEAD origin/master` ]]; then
    echo "$home is up to date"
    
else
    # Prompt stash and reset if no
    read -r -p "$home has conflicting changes, Stash them for safekeeping? [Y]/N" pullstuff

    case $pullstuff in
        [Nn]* )
        #git fetch --all
        #git reset --hard origin/master
        #git pull -q origin master
        echo "All Done"
        ;;
        [Yy]* | *) 
        #git stash -u
        #git pull -q origin master    
        #git stash pop
        echo "All Done"
        ;;
    esac
fi
popd