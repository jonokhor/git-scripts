# git-scripts
A bunch of handy git scripts intended to be used with SourceTree's custom actions.

## reset-clean-to.sh
Saves all your local changes to a save point, and resets the index to the specified commit. This is better than just a straight hard reset because you can still get back the changes with `git reflog`.

### Arguments
1. Commit-ish

### Examples
`reset-clean-to.sh <branch>`
`reset-clean-to.sh <SHA>`
`reset-clean-to.sh <tag>`

## stash-with-untracked.sh
Stashes your local changes with untracked files.

## pop-stash-with-index.sh
Pops the stash and tries to reinstate the changes in the index when the stash was made.

## cherry-pick-no-commit.sh
Cherry picks the specified commit without committing.

### Arguments
1. Commit-ish

## del-merged.sh
Deletes local branches that have been merged into the specified branch. The current branch, specified branch, and master are ignored. If no branch has been specified, the current branch is used.

### Arguments
1. Branch name

### Examples
Example | Description
--- | ---
del-merged.sh | Deletes local branches merged into current branch
del-merged.sh mybranch | Deletes local branches merged into `mybranch`
del-merged.sh master | Deletes local branches merged into `master`

## force-push.sh
Probably a dangerous operation, but is guaranteed to be safe.

### #notaguarantee #isreallynotsafe #ubetanowoturdoin

### Arguments
1. Branch name: if not specified, defaults to the current branch
1. Remote name: if not specified, defaults to origin

### Examples
Example | Description
--- | ---
force-push.sh | Force pushes the current branch to origin
force-push.sh mybranch | Force pushes `mybranch` to origin
force-push.sh mybranch myotherremote | Force pushes `mybranch` to `myotherremote`
force-push.sh myotherremote | Wanted to force push the current branch to `myotherremote`? Well, bad arguments means force push the branch `myotherremote` to origin. Oops.

### #youhavebeenwarned