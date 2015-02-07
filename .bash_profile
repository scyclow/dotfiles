source ~/.profile

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Terminal prompt
export PS1="\[\033[33m\]${bold}\w ${normal}\033[32m\]\$(parse_git_branch)\[\033[00m\]\n\t > "

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=/usr/local/bin:$PATH

alias be="bundle exec"

alias cdd="cd ~/Desktop"
alias ipy=ipython

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
