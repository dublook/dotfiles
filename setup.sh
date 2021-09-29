git config alias.co commit
git config alias.br branch
git config alias.st status
git config alias.ch checkout
git config alias.log1 "log --oneline"
git config alias.graph "log --graph"
git config alias.bra "branch -a"
git config alias.l "pull --prune origin HEAD"
git config alias.s "push origin HEAD"
git config alias.delete-merged-branches "git branch --merged | grep -v * | xargs -I % git branch -d %"
git config alias.fp "git fetch --prune && git delete-merged-branches"
git config alias.a-c interactive.diffFilter "git diff --color-words"
git config alias.issue "sh -c 'git checkout -b issue-$1' -"
git config alias.to-master "git fp && git ch master && git fp"
git config alias.diff-char "git diff --word-diff-regex=$'[^\x80-\xbf][\x80-\xbf]*' --word-diff=color"
