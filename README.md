# My dotfiles managed by GNU Stow.

Packages:  
    1. [nvim](#nvim)  
    2. [git](#git)  

# Stow

## Adding additional configurations

1. cd into .dofiles and mkdir <package-name>

    `mkdir <package-name>`

    in .dotfiles we now should have:

```
    .dotfiles/
    | nvim/
    |   | .config/
    |       | init.lua 
    |       | lua/
    | git/
    |   | .gitconfig
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

# Git

# NeoVim
