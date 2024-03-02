if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -x PATH $PATH "$HOME/.cargo/env"
set -gx PATH /home/ayoub/Documents/flutter_linux_3.19.1-stable/flutter/bin $PATH
set -Ux PATH /home/ayoub/Documents/odin-ubuntu-amd64-dev-2024-02 $PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
set -x RUST_BACKTRACE 1
