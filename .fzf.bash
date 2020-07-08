# Setup fzf
# ---------
if [[ ! "$PATH" == */home/golovatskii/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/golovatskii/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/golovatskii/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/golovatskii/.fzf/shell/key-bindings.bash"
