# Included settings
* Shell: bash
* Terminal multiplexer: tmux
* Editor: vim

# Usefaul tools
* ctags
* cscope

# Vim plugins
* gruvbox
* taglist
* airline
* ctrlp
* NERDTree

# Installation
```
$ git clone https://github.com/fmpojsz/dotfiles --recursive
```

# Usage
```
// ctags
$ ctags -R

vim> set tags=./tags
vim> <ctrl-]>
vim> <ctrl-t>

// cscope
$ cscope -Rbq

vim> :cs find c|d|e|f|g|i|s|t name
	c: Find functions calling this function
	d: Find functions called by this function
	e: Find this egrep pattern
	f: Find this file
	g: Find this definition
	i: Find files #including this file
	s: Find this C symbol
	t: Find assignments to
```

# Reference
* [vim cheatsheet](https://vim.rtorr.com/)
* [tmux cheatsheet](https://gist.github.com/MohamedAlaa/2961058)

