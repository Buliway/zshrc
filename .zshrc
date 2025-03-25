# Включаем автодополнение и автоподсказки
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Включаем подсветку синтаксиса
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Включаем oh-my-zsh и необходимые плагины
export ZSH="/usr/share/oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
  #colored-man-pages
  copypath
  safe-paste
  #ssh-agent
  timer
)
source $ZSH/oh-my-zsh.sh

# История команд
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# Настройки history-substring-search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey "^[[A" history-substring-search-up
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey "$terminfo[kcud1]" history-substring-search-down

# Алиасы
alias f="fastfetch"
