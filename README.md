# Nvchad config C++

## What is it?
It's my config for NvChad with orientation to C++ and python.

## How to use it?
Install neovim  ( google it if you don't know how )

If you are on linux:
- In a console:  `git clone https://github.com/Gerodote/Nvchad_config_cpp.git --branch master ~/.config/nvim`

If another operational system:
- check where neovim config is usually located and change the last part of the command for linux.

Then maybe type `:MasonInstallAll`

Then maybe type `:Lazy` and update all packages using `<shift>u` keybindging.

To get some plugins working, which are written in some other languages than lua ( aka remote plugins ), do next stuff:
- `:runtime! plugin/rplugin.vim`
- `:UpdateRemotePlugins`
- restart neovim

## Is it good?
It's have clangd through Mason, cmake plugin, cmake debugger, c++ debugger, python debugger, some keybindings. 
In general, it's great to use.

## TODO
- [ ] Find a good solution for .ipynb files.
    - [ ] [goerz/jupytext.vim](https://github.com/goerz/jupytext.vim) only editing, not executing. Though, amazing, needs jupytext installed
    - [ ] [dccsillag/magma-nvim](https//github.com/dccsillag/magma-nvim) seems to be about executing `*.py` scripts using jupyter. Not about executing ipynb.
    - [ ] [luk400/vim-jukit](https://github.com/luk400/vim-jukit) investigation...
- [x] migrate to nvchad v2.5
    - [x] apply migrate.sh 
    - [x] transform mappings syntax to vim mappings
    - [ ] cheatsheet [doesn't have hints for categories with one mapping](https://github.com/NvChad/NvChad/issues/2688#issuecomment-2046201103) 
- [x] Debugger stuff. Console GDB/LLDB is cool, but some want it inside editor...
    - [x] CMake debugger in neovim !!! CMake Generate (`<leader>G`), toggle a breakpoint (`<leader>b`), press Continue(`<F5>`), it works! Prerequisite: cmake is 3.27+ and is compiled with dap feature. (for gentoo users `flaggie dev-build/cmake +dap`).
        - [x] build folder is taken from cmake plugin
            - [x] (Resolved) is taken at the initialization of neovim. Changed build dir? Right now only restart neovim.
        - [x] ([Resolved](https://github.com/Civitasv/cmake-tools.nvim/issues/203)) it doesn't take `generate_options` from `:CMakeSettings`.
    - [x] c++/c/rust debugger : press CMake debug (`<leader>cd`), enjoy
        - [x] codelldb by default is taken from meson. So, generally, no manual typing pathes
        - [ ] how to go through asm instructions? seems that codelldb doesn't support it, or my experimental mapping doesn't work.
        - [ ] how to place breakpoint at main, if executable is compiled with `-g0` ? In raw gdb or lldb it's possible.
    - [x] nvim-dapui is connected
        - [x] added bindings for opening(`<leader>do`) and closing (`<leader>dc`) nvim-dapui .
    - [ ] nvim-dap-ui and cmake-tools are added at startup, not lazy.
        - [ ] for cmake stuff find out how in `lazy` package manager load it if project folder has CMakeLists.txt . Investigation.
        - [ ] for dap stuff should be loading by certain keymappings, though idk how exactly now. Investigation.
    - [x] where's python debugger?
        - [x] added debugpy through mason and copy pasted config for it with slight changes
        - [x] toggle breakpoint, `<F5>`, wooalla 
- [ ] More keybindigs for some plugins
    - [x] dap related
    - [ ] telescope related
    - [ ] gitsigns related
- [x] tmux navigator. Added keybindings for it. Ctrl+hjkl for navigating + tmux integration!!!
- [x] added CodeCompanion plugin. Do you have ollama installed? Do you have a self-deployed AI ? This plugin is for you
    - [x] check next stuff to specify what model to use, if it's self-deployed: [here](https://github.com/olimorris/codecompanion.nvim/pull/45#issuecomment-2054028057)
    - [ ] still no shortcuts. `:CodeCompanion` will give you options to use.
- [ ] Find out if there's a way to turn on less plugin not lazily. Investigation
    - [ ] `ft` for some plugins works, for some not, idk why0
- [x] Added [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify). Good looking plugin.
- [x] Find a plugin for cool command palette
    - [ ] [hachy/cmdpalette.nvim](https://github.com/hachy/cmdpalette.nvim) doesn't support ranges and feels not so good  
    - [x] [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim) seems to be a little bit unmaintained  ([my pain at installing it](https://github.com/gelguy/wilder.nvim/issues/196)). UPD: it's still is too buggy, and most important: it's slow. It's using python behind in sync way and on my pc it feels so badly sometimes... Maybe this plugin should be rewritten to lua or C/C++/Rust/Go/whatever_language ?
        - [ ] has some problems with config portability?
    - [ ] [VonHeikemen/fine-cmdline.nvim](https://github.com/VonHeikemen/fine-cmdline.nvim) doesn't support ranges
    - [ ] [mrjones2014/legendary.nvim](https://github.com/mrjones2014/legendary.nvim) seems to *not* have ability to somehow get commands from everywhere like `:Telescope commands` , though looks cool. Doesn't support ranges. 
- [ ] Find out how to put more snippets and put them from somewhere. Investigation.
- [ ] Find a good alternative to `:s`. 
- [ ] Allow more diversity of folder structures for include-guard plugin. Now only works if there's `src` in a path to a file. 
    - [ ] Rewrite plugin to lua and use neovim's API?
    - [x] Actually there's a snippet `#guard`.

