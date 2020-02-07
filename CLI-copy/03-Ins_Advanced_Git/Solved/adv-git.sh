#!bin/bash

#==========================================
# ALWAYS pull first before doing anything #
# on a project with multiple people       #
#==========================================

git pull

#==============================================
# Create and checkout new branch 'spellcheck' #
#==============================================

# checkout -b spellcheck is shorthand for
# git branch spellcheck && git checkout spellcheck

git checkout -b spellcheck

#=========================================
#            Do Something                #
#=========================================

# In this case we're fixing
# spelling mistakes in README.md

#=========================================
#          Commit your changes           #
#=========================================

git commit -m "I can spell now"

#=========================================
#          Swap back to master           #
#=========================================

git checkout master

#=========================================
#          Make a new branch             #
#=========================================

git pull
git checkout -b feature

#=========================================
#        Add a line to the README        #
#=========================================

echo "This is a feature" >> ../README.md


#=========================================
#            Commit Changes              #
#=========================================

git commit -m "Added useful feature"

#=========================================
#            Back to master              #
#        to merge our spelling fix       #
#=========================================

git checkout master
git pull
git merge spellcheck
# Hide the evidence
git checkout -d spellcheck

#==========================================
#         Merge in our new feature        #
#==========================================

git pull
git merge feature
git checkout -d feature