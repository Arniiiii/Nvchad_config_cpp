# Nvchad config C++

## What is it?
It's my config for NvChad with orientation to C++ and python.

## How to use it?
Install neovim  ( google it if you don't know how )

Install NvChad  ( google it if you don't know how )

Then go to neovim config folder. `cd ~/.config/nvim/` on Linux

Then go to `lua` folder in the config folder.

Then clone this repo to `custom` folder. `git clone https://github.com/Gerodote/Nvchad_config_cpp.git --branch master custom`


## Is it good?
It's have clangd through Mason, cmake plugin, some keybindings. 
In general, it's great to use, though no debugger.

## TODO
1. [ ] Debugger stuff. Console GDB/LLDB is cool, but some want it inside editor...
2. More keybindigs for some plugins
	- [ ] telescope related
	- [ ] gitsigns related 
3. Find out if there's a way to turn on less plugin not lazily. Investigation
4. [ ] Find a plugin for cool command palette]
	- [hachy/cmdpalette.nvim](https://github.com/hachy/cmdpalette.nvim) doesn't support ranges and feels not so good  
	- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim) seems to be unmaintained and I failed to installed it correctly [my attempt](https://github.com/gelguy/wilder.nvim/issues/196) . Maybe try again later. UPD: it's still is too buggy, and most important: it's slow. It's using python behind and on my pc it feels so badly... Maybe this plugin should be rewritten to lua or C/C++ ?
	- [VonHeikemen/fine-cmdline.nvim](https://github.com/VonHeikemen/fine-cmdline.nvim) doesn't support ranges
	- [mrjones2014/legendary.nvim](https://github.com/mrjones2014/legendary.nvim) seems to not have ability to somehow get commands from everywhere like `:Telescope commands` , though looks cool. Doesn't support ranges. 
5. Find out how to put more snippets and put them from somewhere. Investigation.
6. [ ] Find good alternative to `:s`. 
7. [ ] Allow more diversity of folder structures for include-guard plugin. Now only works if there's `src` in a path to a file. Maybe rewrite plugin to lua and use neovim's API?
