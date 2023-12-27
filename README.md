# Nvchad config C++

## What is it?
It's my config for NvChad with orientation to C++ and python.

## How to use it?
Install neovim  ( google it if you don't know how )

Install NvChad  ( google it if you don't know how )

Then go to neovim config folder. `cd ~/.config/nvim/` on Linux

Then go to `lua/custom`.

Then clone this repo there. `git clone https://github.com/Gerodote/Nvchad_config_cpp.git`


## Is it good?
It's have clangd through Mason, cmake plugin, some keybindings. 
In general, it's great to use, though no debugger.

## TODO
1. Debugger stuff. Console GDB/LLDB is cool, but some want it inside editor...
2. More keybindigs for some plugins
3. Findout if there's a way to turn on less plugin not lazily. Investigation
4. Find a plugin for cool command palette
5. Find how to put more snippets
6. Allow more diversity of folder structures for include-guard plugin. Now only works if there's `src` in a path to a file. Maybe rewrite plugin to lua and use neovim's API?
