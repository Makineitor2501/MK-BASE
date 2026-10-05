#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Auto-launch Sway on TTY1 login
if [ "$(tty)" = "/dev/tty1" ]; then
    read -p "Start Sway? [y]es or [n]o: " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        exec sway
    fi
fi

# Hermes Agent command
case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) export PATH="$HOME/.local/bin:$PATH" ;; esac
