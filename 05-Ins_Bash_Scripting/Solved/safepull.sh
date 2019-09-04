#!bin/bash

# Declare my static variables
# This doesn't have to be done at the top, but it's easy to follow if you're working 
home= ~/Documents/RICEHOU201906DATA1


# Check if there are changes that would conflict
pushd $home
if [[ `git diff --check HEAD origin/master` ]]; then
    echo "$home is up to date"
    
else
    # Prompt stash and hard reset if no
    read -r -p "$home has conflicting changes, Stash them for safekeeping? [Yes]/No" pullstuff

    case $pullstuff in
        [Nn][Oo]* )
        git fetch --all && git reset --hard origin/master && git pull -q origin master
        echo "Threw away local changes and pulled down remote"
        ;;
        [Yy][Ee][Ss]* | *) 
        git stash -u && git pull -q origin master && git stash apply
        echo "Pulled down remote and reapplied changes"
        ;;
    esac
fi
popd