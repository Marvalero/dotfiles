parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[91m\]\$?\[\e[00m\][\t]\[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "


#Update jenv
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
# export JAVA_HOME=$(jenv javahome)

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Configure NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

nvm use 22

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi


# Alias
alias brew-update='brew update && brew upgrade && brew upgrade --cask'
alias lt='du -sh * | sort -h'
alias structurizr='docker run -it --rm -p 8080:8080 -v $(PWD):/usr/local/structurizr structurizr/lite'

