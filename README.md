My dotfiles managed by GNU Stow.

## Installation

Based on a 2012 macbook running ubunu 22.04

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

    ``ssh-add <ssh.pub location>``
    (I think this should be private key location instead....
    I should fix this)

    clone frome github:

    ``git clone git@<>``

3. install and activate stow

    install stow:

    ``sudo apt install stow``

    cd into .dotfiles and activate stow:

    ``cd .dotfiles && stow <packages>``
