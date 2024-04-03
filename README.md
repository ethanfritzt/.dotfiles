# My dotfiles managed by GNU Stow.

Packages:  
    1. [ctags](#ctags)  
    2. [git](#zsh)  
    3. [ssh](#ssh)  
    4. [vim](#vim)  
    5. [zsh](#zsh)  

# Stow

## Adding additional configurations

1. cd into .dofiles and mkdir <package-name>

    `mkdir <package-name`

    in .dotfiles we now should have:

```
    .dotfiles/
    | ctags/
    |   | .ctags
    | git/
    |   | .gitconfig
    | vim/
    |   | .vimrc
    | zsh/
    |   | .zshrc
    | ssh/
    |   | config
    | <package-name>/
    |   | <file>
```

2. mv dotfile into new directory in .doftiles

    `mv ~/.<dofile-name> ~/.dotfiles/<package-name>/<dotfile-name>`

3. execute stow

    `stow <package-name>`

## Installing stow from a new machine

1. install and activate stow

    install stow:

    - ubuntu

        `sudo apt install stow`

    - mac
        
        `brew install stow`

    cd into .dotfiles and activate stow:

    `cd .dotfiles && stow <packages>`

# Ctags

## Generating new tags file

1. generate tags file recursivley in the current directory

    `ctags -R .`

# Git

## Cloning new project

1. clone with personal account

    `git clone git@me.<host>:<username>/<repo-name>.git`

2. clone with work account

    `git clone git@work.<host>:<username>/<repo-name>.git`

# SSH

# Vim

# Zsh

## Setup

1. check what shell is running

    `echo $SHELL`

    for me the result was:

    `/bin/bash`

    I need zsh:

    `sudo apt install zsh`

    and to set zsh as default shell:

    `chsh -s /usr/bin/zsh`

    For me I needed to login and logout for the change to reflect

2. clone .dotfiles from github

    I needed to setup an ssh key and connect it to github
    here were my steps

    Generate key

    `ssh-keygen`

    accept all default

    copy key:

    `cat <ssh.pub/location> (copy and paste into github)`

    and finally:

    `ssh-add <location>`

    clone frome github:

    `git clone git@github.com:ethanfritzt/.dotfiles.git`


