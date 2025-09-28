# chon dotfiles

Personal system configuration files. Includes configurations for:
- shell
- terminal
- tmux
- editors
- git
- other cli tools

## Setup (using GNU Stow)

Make sure you have `stow` installed. 

```bash
brew install stow  # macOS
```

Then run the following commands:

```bash
# clone the repo
git clone git@github.com:gjonhajdari/dotfiles.git ~/.dotfiles

# set up symlinks
stow .
```
