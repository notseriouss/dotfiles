# Created by newuser for 5.9
# ~/.zshrc
# -----------------------------------------------------------
# 1. CORE SETTINGS
# -----------------------------------------------------------
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory     # Append to history file
setopt share_history     # Share history between sessions
setopt hist_ignore_dups  # Ignore duplicate commands

# Enable colors
autoload -U colors && colors

# Better tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)  # Include hidden files



# Simple Git branch in prompt
git_branch() {
    local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    if [[ -n $branch ]]; then
        echo "($branch) "
    fi
}

# ===================================================
# PROMPT CONFIGURATION (MUST COME AFTER vcs_info setup)
# ===================================================
if [[ ${EUID} == 0 ]] ; then
    # Root prompt
    PROMPT="%F{red}[%F{cyan}%m%F{white} %F{blue}%~%F{red}] %F{214}\$(git_branch)%f%F{red}#%f "
else
    PROMPT="%F{red}%n%f%F{242}@%m%f %F{33}%~%f %F{214}\$(git_branch)%f%F{93}❯%f " #%f: %F
fi



# Configure Git display
zstyle ':vcs_info:git:*' formats '(%b)'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '*'  # Show * for unstaged changes
zstyle ':vcs_info:git:*' stagedstr '+'    # Show + for staged changes

setopt prompt_subst

# -----------------------------------------------------------
# 3. ALIASES
# -----------------------------------------------------------
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias ll='ls -lah --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear'

# Uncomment these if you want them:
# alias cp="cp -i"           # confirm before overwriting
# alias df='df -h'           # human-readable sizes
# alias free='free -m'       # show sizes in MB
# alias np='nano -w PKGBUILD'

# -----------------------------------------------------------
# 4. KEY BINDINGS
# -----------------------------------------------------------
bindkey '^[[3~' delete-char          # Fix delete key
bindkey '^[[1;5C' forward-word        # Ctrl+Right
bindkey '^[[1;5D' backward-word       # Ctrl+Left

# -----------------------------------------------------------
# 5. FUNCTIONS
# -----------------------------------------------------------
# yazi function
y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

# -----------------------------------------------------------
# 6. TERMINAL TITLE (converted from bashrc)
# -----------------------------------------------------------
case ${TERM} in
    xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*|alacritty*)
        precmd() {
            # For user@host:dir in title
            print -Pn "\e]0;%n@%m:%~\a"
        }
        ;;
    screen*)
        precmd() {
            print -Pn "\e]0;%n@%m:%~\a"
            # For screen
            print -Pn "\033k%~\033\\"
        }
        ;;
esac

# -----------------------------------------------------------
# 7. OPTIONS
# -----------------------------------------------------------
setopt autocd            # Type directory name to cd into it
setopt correct           # Suggest command corrections
setopt interactive_comments  # Allow comments in shell



# Load zsh-autosuggestions (Arch Linux path)
##source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Configure appearance (light gray suggestions)
##ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# Key bindings to accept suggestions
##bindkey '^ ' autosuggest-accept         # Ctrl+Space to accept
##bindkey '^[[C' autosuggest-accept       # Right arrow to accept
#
#
#

#autoload -Uz vcs_info
#precmd() { vcs_info }

#zstyle ':vcs_info:git:*' formats '(%b)'

#setopt prompt_subst
#PROMPT='%F{green}%n%f@%F{blue}%m%f:%F{yellow}%~%f${vcs_info_msg_0_}%f » '

