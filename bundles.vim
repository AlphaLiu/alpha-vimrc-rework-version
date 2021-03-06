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
		Bundle 'fholgado/minibufexpl.vim'
		Bundle 'edsono/vim-matchit.git'
		Bundle 'Lokaltog/vim-easymotion'
		Bundle 'sjl/gundo.vim'
		Bundle 'tpope/vim-surround'
		Bundle 'tpope/vim-unimpaired'
		Bundle 'tpope/vim-repeat'
		Bundle 'Raimondi/delimitMate'
		Bundle 'vim-scripts/cmdline-completion'
		Bundle 'yueyoum/vim-linemovement' 
	endif

	if count(g:bundle_groups, 'programming')
		Bundle 'Shougo/neocomplcache'
		Bundle 'scrooloose/nerdcommenter'
		Bundle 'AlphaLiu/a.vim'
		Bundle 'nathanaelkane/vim-indent-guides'
		Bundle 'austenito/vim-conque'
		Bundle 'garbas/vim-snipmate'
		Bundle 'spf13/snipmate-snippets'
		" Source support_function.vim to support snipmate-snippets.
		if filereadable(expand("~/.vim/bundle/snipmate-snippets/snippets/support_functions.vim"))
			source ~/.vim/bundle/snipmate-snippets/snippets/support_functions.vim
		endif
		Bundle 'Lokaltog/vim-powerline'
		Bundle 'tpope/vim-fugitive'
		Bundle 'godlygeek/tabular'
		if executable('ctags')
			Bundle 'majutsushi/tagbar'
		endif
	endif

	if count(g:bundle_groups, 'ruby')
		Bundle 'vim-ruby/vim-ruby'
		Bundle 'tpope/vim-rails'
		Bundle 'slim-template/vim-slim'
		Bundle 'skwp/vim-ruby-conque'
		Bundle 'tpope/vim-endwise'
	endif

	if count(g:bundle_groups, 'javascript')
		Bundle 'leshill/vim-json'
		Bundle 'groenewege/vim-less'
		Bundle 'taxilian/vim-web-indent'
	endif

	if count(g:bundle_groups, 'html')
		Bundle 'HTML-AutoCloseTag'
		Bundle 'vim-scripts/css3-mod'
		Bundle 'mattn/zencoding-vim'
	endif

	if count(g:bundle_groups, 'misc')
		Bundle 'vim-scripts/sudo.vim'
		Bundle 'tpope/vim-markdown'
	endif

endif

filetype plugin indent on     " required!
