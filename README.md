# My Neovim configuration

This is a Neovim port of [my .vimrc-file](https://github.com/nootr/dotfiles). The
structure was stolen from ThePrimeagen's
[excellent Neovim setup tutorial](https://www.youtube.com/watch?v=w7i4amO_zaE).


## Setup

* Execute `git clone git@github.com:nootr/init.lua.git ~/.config/nvim`.
* Install [packer.nvim, the package manager](https://github.com/wbthomason/packer.nvim`).
* Run `:PackerSync` twice to install the plugins (the first run will contain errors).
* Restart Neovim.
* Execute `:checkhealth` for any missing dependencies.


## Useful keybindings and commands

| Key            | Description                               |
| -------------- | ----------------------------------------- |
| ?              | Open this file in a new window            |
|                |                                           |
| jj             | Enter normal mode                         |
| ;              | Leader                                    |
|                |                                           |
| ;t             | Open a terminal down                      |
| ;T             | Open a terminal to the right              |
|                |                                           |
| ;fs            | Search project for string                 |
| ;ff            | Search project for filename               |
| ;fb            | Open file browser                         |
| <Tab>          | Toggle file tree                          |
|                |                                           |
| ;w j           | Move to window down                       |
| ;w k           | Move to window up                         |
| ;w h           | Move to window left                       |
| ;w l           | Move to window right                      |
|                |                                           |
| :hide          | Close window without closing buffer       |
| :bd            | Close window and buffer                   |
| :bn            | Show next buffer                          |
| :bp            | Show previous buffer                      |
| :ls            | List buffers                              |
| :b N           | Show buffer N                             |
|                |                                           |
| ;w >           | Increase window to the right by 1 column  |
| ;w N >         | Increase window to the right by N columns |
| ;w <           | Increase window to the left by 1 column   |
| ;w N <         | Increase window to the left by N columns  |
| ;w +           | Increase window height by 1 row           |
| ;w N +         | Increase window height by N rows          |
| ;w -           | Decrease window height by 1 row           |
| ;w N -         | Decrease window height by N rows          |
|                |                                           |
| :PackerSync    | Install/upgrade plugins                   |
| :TSUpdate      | Install/upgrade treesitter parsers        |
