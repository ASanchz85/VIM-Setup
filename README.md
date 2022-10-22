# VIM-Setup

[!] This way of setting up my vim is based on 4strodev youtube channel with some minor modifications. 
    His channel has helped me a lot and I really recommend you to visit his channel and show your gratitude there.

[+] HOW TO INSTALL IT?

1) Visit https://github.com/junegunn/vim-plug 
2) Follow the steps to install it.
3) Restart your vim.
4) Use -> :PlugInstall in order to download all the plugins included.
5) Visit -> https://github.com/neoclide/coc.nvim
6) Intall node -> curl -sL install-node.vercel.app/lts | zsh
7) Then -> :PlugInstall again to get the COC completion ready
8) Visit -> https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
9) Select and install all the languages in which you are interested -> :CocInstall
    
[+] KEYBOARD SHORTCUTS

Take a close look at how the shortcuts are mapped in order to understand how to win efficency using vim.
    
You can adapt it to your own way for feeling more comfortable. Pay attention to *map variables

[+] FIXING SOME ISSUES

Regarding yank command (YY) in macOS you have to change -> set clipboard=unnamedplus to -> set clipboard=unnamed

Also you can follow stackoverflow recommendation adding these lines to your .vimrc if you want to have an all road setup

    if system('uname -s') == "Darwin\n"
      "OSX
      set clipboard=unnamed 
    else
      "Linux
      set clipboard=unnamedplus
    endif
