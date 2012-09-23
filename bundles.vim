set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
if executable('ack')
	Bundle 'mileszs/ack.vim'
endif

if !exists('g:bundle_groups')
	let g:bundle_groups=['general', 'programming', 'ruby', 'javascript', 'html', 'misc']
endif

" To override all the included bundles, put
if !exists("g:override_bundles")
	" General
	if count(g:bundle_groups, 'general')
		Bundle 'altercation/vim-colors-solarized'
		Bundle 'spf13/vim-colors'
		Bundle 'vim-scripts/ScrollColors'
		Bundle 'scrooloose/nerdtree'
		Bundle 'kien/ctrlp.vim'
		Bundle 'ervandew/supertab'
		Bundle 'fholgado/minibufexpl.vim'
		Bundle 'edsono/vim-matchit.git'
		Bundle 'Lokaltog/vim-easymotion'
	endif

	if count(g:bundle_groups, 'programming')
		Bundle 'Shougo/neocomplcache'
	endif
endif

filetype plugin indent on     " required!
