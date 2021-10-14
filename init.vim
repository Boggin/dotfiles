  " Integrate with whichkey for spacemacs-style space key
  nnoremap <space> :call VSCodeNotify('whichkey.show')<CR>
 { 
 	"keys": "s.c", 
 	"name": "Clear highlight", 
 	"type": "command", 
 	"command": "vscode-neovim.send", 
 	"args":  ":noh<CR>"
 }
