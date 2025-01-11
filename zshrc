ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="jbfeldisagnoster"
DEFAULT_USER=`whoami`
# Add ruby version on prompt (float right)
# RPS1='[$(ruby_prompt_info)]$EPS1'

# Useful plugins for Rails development with Sublime Text
plugins=(asdf git gitfast git-flow-avh bundler gem rails chruby last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# export PATH="./bin:${HOME}/bin:${HOME}/.local/bin:${HOME}/.npm-global/bin:${PATH}"
export PATH="./bin:${HOME}/bin:${HOME}/.local/bin:${PATH}"

# unalias fd # common-aliases shortcuts find but we want to really use the fd exec

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

eval "$(direnv hook zsh)"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias ksnvim='NVIM_APPNAME="ks-nvim" nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. ~/bin/z.sh # run z.sh to replace cd

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
# export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"
export EDITOR="ksnvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
