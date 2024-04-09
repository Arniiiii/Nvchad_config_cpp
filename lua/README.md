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
It's have clangd through Mason, cmake plugin, cmake debugger, c++ debugger, python debugger, some keybindings. 
In general, it's great to use.

## TODO
- [x] Debugger stuff. Console GDB/LLDB is cool, but some want it inside editor...
    - [x] CMake debugger in neovim !!! CMake Generate (`<leader>G`), toggle a breakpoint (`<leader>b`), press Continue(`<F5>`), it works! Prerequisite: cmake is 3.27+ and is compiled with dap feature. (for gentoo users `flaggie dev-build/cmake +dap`).
        - [x] build folder is taken from cmake plugin
            - [x] (Resolved) is taken at the initialization of neovim. Changed build dir? Right now only restart neovim.
        - [ ] it doesn't take `generate_options` from `:CMakeSettings`.
    - [x] c++/c/rust debugger : press CMake debug (`<leader>cd`), enjoy
        - [x] codelldb by default is taken from meson. So, generally, no manual typing pathes
        - [ ] how to go through asm instructions?
        - [ ] how to place breakpoint at main, if executable is compiled with `-g0` ?
    - [x] nvim-dapui is connected
        - [x] added bindings for opening(`<leader>do`) and closing (`<leader>dc`) nvim-dapui .
    - [ ] nvim-dap-ui and cmake-tools are added at startup, not lazy.
    - [x] where's python debugger?
        - [x] added debugpy through mason and copy pasted config for it with slight changes
        - [x] toggle breakpoint, `<F5>`, wooalla 
- [ ] More keybindigs for some plugins
    - [x] dap related
	- [ ] telescope related
	- [ ] gitsigns related
- [ ] get keybindings to new-old format, as nvchad v2.5 changed it to default.
- [x] tmux navigator. Added keybindings for it. Ctrl+hjkl for navigating + tmux integration!!!
- [x] added CodeCompanion plugin. Do you have ollama installed? Do you have a self-deployed AI ? This plugin is for you
    - [ ] still no shortcuts. `:CodeCompanion` will give you options to use.
- [ ] Find out if there's a way to turn on less plugin not lazily. Investigation
- [x] Find a plugin for cool command palette
	- [ ] [hachy/cmdpalette.nvim](https://github.com/hachy/cmdpalette.nvim) doesn't support ranges and feels not so good  
	- [x] [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim) seems to be a little bit unmaintained  ([my pain at installing it](https://github.com/gelguy/wilder.nvim/issues/196)). UPD: it's still is too buggy, and most important: it's slow. It's using python behind in sync way and on my pc it feels so badly sometimes... Maybe this plugin should be rewritten to lua or C/C++ ?
        - [ ] has some problems with config portability?
	- [ ] [VonHeikemen/fine-cmdline.nvim](https://github.com/VonHeikemen/fine-cmdline.nvim) doesn't support ranges
	- [ ] [mrjones2014/legendary.nvim](https://github.com/mrjones2014/legendary.nvim) seems to *not* have ability to somehow get commands from everywhere like `:Telescope commands` , though looks cool. Doesn't support ranges. 
- [ ] Find out how to put more snippets and put them from somewhere. Investigation.
- [ ] Find a good alternative to `:s`. 
- [ ] Allow more diversity of folder structures for include-guard plugin. Now only works if there's `src` in a path to a file. Maybe rewrite plugin to lua and use neovim's API?
