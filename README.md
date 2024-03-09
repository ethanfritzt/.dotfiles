# My dotfiles managed by GNU Stow.

## Adding additional configurations

1. cd into .dofiles and mkdir <package-name>
    
    ``mkdir <package-name``

    in .dotfiles we now should have:

    .dotfiles/
    | ctags/
    |   | .ctags
    | git/
    |   | .gitconfig
    | vim/
    |   | .vimrc
    | zsh/
    |   | .zshrc
    | <package-name>/

2. mv dotfile into new directory in .doftiles

    ``mv ~/.<dofile-name> ~/.dotfiles/<package-name>/<dotfile-name>``

3. execute stow

    ``stow <package-name>``


## Installation

### Installing zsh

1. check what shell is running

    ``echo $SHELL``
    
    for me the result was:

    ``/bin/bash``

    I need zsh:

    ``sudo apt install zsh``

    and to set zsh as default shell:

    ``chsh -s /usr/bin/zsh``

    For me I needed to login and logout for the change to reflect

2. clone .dotfiles from github

    I needed to setup an ssh key and connect it to github
    here were my steps

    Generate key

    ``ssh-keygen``

    accept all default

    copy key:

    ``cat <ssh.pub/location> (copy and paste into github)``

    and finally:

    ``ssh-add <location>``

    clone frome github:

    ``git clone git@github.com:ethanfritzt/.dotfiles.git``

3. install and activate stow

    install stow:

    ``sudo apt install stow``

    cd into .dotfiles and activate stow:

    ``cd .dotfiles && stow <packages>``
