# My dotfiles managed by GNU Stow.

Packages:  
    1. [bash](#bash)  
    2. [git](#git)  
    3. [nvim](#neovim)  
    4. [pi](#pi)  

# Stow

## Adding additional configurations

1. cd into `.dotfiles` and create a package directory:

    `mkdir <package-name>`

    in `.dotfiles` we now should have:

```
    .dotfiles/
    | bash/
    |   | .bashrc
    |   | .bash_aliases
    | nvim/
    |   | .config/
    |       | init.lua 
    |       | lua/
    | git/
    |   | .gitconfig
    | pi/
    |   | .pi/
    |       | agent/
    |           | AGENTS.md
    |           | references.json
    |           | settings.json
    |           | prompts/
    |           | skills/
    |           | themes/
    | <package-name>/
    |   | <file>
```

2. move the dotfile into the new package directory:

    `mv ~/.<dotfile-name> ~/.dotfiles/<package-name>/.<dotfile-name>`

3. execute stow:

    `stow <package-name>`

## Installing stow from a new machine

1. install and activate stow

    install stow:

    - ubuntu

        `sudo apt install stow`

    - mac
        
        `brew install stow`

    cd into `.dotfiles` and activate stow:

    `cd .dotfiles && stow <packages>`

# Bash

# Git

# Pi

Pi agent configuration lives under `~/.pi/agent`. This repo intentionally tracks only stable, portable configuration that is useful across machines.

## Managed files

Currently managed by stow:

| Repo path | Target path | Purpose |
| --- | --- | --- |
| `pi/.pi/agent/AGENTS.md` | `~/.pi/agent/AGENTS.md` | Global agent instructions/context |
| `pi/.pi/agent/references.json` | `~/.pi/agent/references.json` | Named reference locations available to Pi |
| `pi/.pi/agent/settings.json` | `~/.pi/agent/settings.json` | UI/model/provider preferences and extension registrations |
| `pi/.pi/agent/prompts/` | `~/.pi/agent/prompts/` | Reusable prompt templates |
| `pi/.pi/agent/skills/` | `~/.pi/agent/skills/` | Locally installed/custom skills |
| `pi/.pi/agent/themes/` | `~/.pi/agent/themes/` | Custom Pi themes path; currently tracked with `.gitkeep` |

Current references:

| Name | Path | Description |
| --- | --- | --- |
| vault | `~/[ethanworkfed]` | Ethan's knowledge vault |

## Stowing Pi config

From the dotfiles repo:

```bash
cd ~/.dotfiles
stow pi
```

This creates symlinks for the managed files and directories, for example:

```text
~/.pi/agent/AGENTS.md -> ~/.dotfiles/pi/.pi/agent/AGENTS.md
~/.pi/agent/references.json -> ~/.dotfiles/pi/.pi/agent/references.json
~/.pi/agent/settings.json -> ~/.dotfiles/pi/.pi/agent/settings.json
~/.pi/agent/prompts -> ~/.dotfiles/pi/.pi/agent/prompts
~/.pi/agent/skills -> ~/.dotfiles/pi/.pi/agent/skills
```

Note: `settings.json` may contain machine-specific absolute paths, such as local extension paths under `~/Projects`.

## Do not track

These files are local, generated, sensitive, or noisy and should stay out of git:

| Path | Reason |
| --- | --- |
| `~/.pi/agent/auth.json` | Authentication tokens/secrets |
| `~/.pi/agent/models-store.json` | Provider/model configuration that may contain sensitive account details |
| `~/.pi/agent/sessions/` | Conversation/session logs |
| `~/.pi/agent/mmc-mcp-runs.jsonl` | MCP run logs |
| `~/.pi/agent/trust.json` | Local workspace trust state |
| `~/.pi/agent/bin/` | Local/generated helper binaries |

## Adding another Pi file to stow

Only add files that are stable, portable, and safe to commit. Put them under `pi/` using the same path they should have from `$HOME`, then run `stow pi`.

If a target file already exists on a new machine, move or back it up before running `stow pi`.

# NeoVim
