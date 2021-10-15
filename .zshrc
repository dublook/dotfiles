# https://qiita.com/ryutoyasugi/items/cb895814d4149ca44f12
# # 環境変数
# # export LANG=ja_JP.UTF-8
# export LSCOLORS=gxfxcxdxbxegedabagacad
# export VISUAL=vim

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=30000
SAVEHIST=30000
# 直前のコマンドの重複を削除
setopt hist_ignore_dups
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# 同時に起動したzshの間でヒストリを共有
setopt share_history
 
# 補完機能を有効にする
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi
# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完候補を詰めて表示
setopt list_packed
# 補完候補一覧をカラー表示
zstyle ':completion:*' list-colors ''


# コマンドのスペルを訂正
setopt correct
# ビープ音を鳴らさない
setopt no_beep

# prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd() { vcs_info }
PROMPT='%T %~ %F{magenta}
$%f '
RPROMPT='${vcs_info_msg_0_}'



alias grep="grep --color=auto"
alias to-webapp="cd ~/development/sapiens/lionbolt-webapp/"
alias to-adminwebapp="cd ~/development/sapiens/lionbolt-admin-webapp/"
alias to-work="cd ~/development/sapiens/lionbolt-webapp-work/"
alias to-search="cd ~/development/sapiens/lionbolt-search-api-v2/"
alias to-books="cd ~/development/sapiens/lionbolt-admin-backend-books/"
alias to-docs="cd ~/development/sapiens/lionbolt-admin-backend-documents/"
alias to-tenants="cd ~/development/sapiens/lionbolt-admin-backend-tenants/"
alias to-api="cd ~/development/sapiens/lionbolt-app-backend/"
alias to-cognito="cd ~/development/sapiens/lionbolt-app-cognito/"
alias to-pub="cd ~/development/sapiens/lionbolt-contents-publicomments/"
alias to-infra="cd ~/development/sapiens/lionbolt-backend-infra/"
alias to-prox="cd ~/development/sapiens/lionbolt-backend-service-proxies/"
alias to-hdd="cd /Volumes/sap190106-1/books"
alias to-covers="cd /Volumes/GoogleDrive/My\ Drive/lg_法律書へのアクセスを便利にしよう_since201812/法律事務所/n_長島・大野・常松法律事務所/所在検索/文献リスト書影画像/bookId"
alias load-env="export \$(cat .env | grep -v ^# | xargs)"
alias load-envdev="export \$(cat .env.dev | grep -v ^# | xargs)"
alias raspi3="ssh -i ~/.ssh/raspi pi@homebridge.local"
alias gst="git status"
alias gps="git push"
alias gpl="git pull --prune"
alias ga="git add -p"
alias ng-serve="node --max_old_space_size=16384 node_modules/@angular/cli/bin/ng serve"
alias to-midofront="cd ~/development/midotech/sb-front"
alias to-midobackend="cd ~/development/midotech/sb-backend"

# git settings
# source ~/.git-completion.bash
# source ~/.git-prompt.sh
# GIT_PS1_SHOWDIRTYSTATE=true
# PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
# export PS1=$PS1
# github cli
# eval "$(gh completion -s zsh)"

# source /usr/local/git/contrib/completion/git-prompt.sh
# source /usr/local/git/contrib/completion/git-completion.bash
# GIT_PS1_SHOWDIRTYSTATE=true
# export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[046m\]\u\[\033[0m\]@\[\033[036m\]\h\[\033[0m\]:\w\$ "
# export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
# export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
# [ -f /Users/kotafutami/.nodebrew/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/kotafutami/.nodebrew/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
# [ -f /Users/kotafutami/.nodebrew/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/kotafutami/.nodebrew/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.nodebrew/current/bin/node:$PATH"

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
# [ -f /Users/kotafutami/.config/yarn/global/node_modules/tabtab/.completions/slss.bash ] && . /Users/kotafutami/.config/yarn/global/node_modules/tabtab/.completions/slss.bash

# https://github.com/zsh-users/zsh-completions
# if type brew &>/dev/null; then
#   FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
# 
#   autoload -Uz compinit
#   compinit
# fi

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
