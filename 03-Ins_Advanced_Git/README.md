# Advanced Git

At this point, you should all be pretty well versed in the basis ways we use git.

- `git pull` to pull down changes from a remote repository to your local repository.
- `git add -A` to track new or otherwise untracked files and directories.
- `git commit -m "commit message"` to commit changes made to tracked files.
- `git push` to push committed changes to the remote repository.

We even covered some branching:

- `git branch <branch>` to branch the current repository
- `git checkout <branch>` to move to the branch
- `git merge <branch>` to merge the commited changes to the master (or whatever branch is checked out)

But there are a few things we haven't officially covered:

- `git commit -a -m "commit message"` to add deleted or modified and commit in one command _Note_: this doesn't stage new files, you have to use `git add` for that.
- `git fetch` to download the changes to your local but not merge anything. They won't show up in your master branch until merged.
- `git log` View all commits.
- `git diff <source branch> <target branch>` Preview changes before merge
- `git stash` to store your changes and revert to the HEAD commit. `git stash --apply` will bring back the stashed changes.
- `git reset <commit>` reset to the target commit (go back in time)
