"General {
"不兼容VI键盘，使用vim键盘
set nocompatible
"文件类型检测与缩进
filetype plugin indent on
"设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"设置背景色
set background=dark
"语法补全
syntax enable
"语法着色
syntax on
"允许buffer在未保存前进行切换
set hidden
"历史记录数
set history=50
"禁止生成临时文件
set nobackup
set noswapfile

"Vim UI {
	"显示当前所处的mode
	set showmode
	"高亮光标所在行
	set cursorline
	if has('cmdline_info')
		"显示标尺
		set ruler
		"标尺格式
		set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
		"提示命令
		set showcmd
	endif
	"显示文件名
	set title
	"退格符
	set backspace=indent,eol,start
	"No extra spaces between rows
	set linespace=0
	"行号
	set nu
	"高亮显示匹配的括号
	set showmatch
	"边输边搜
	set incsearch
	"高亮搜索结果
	set hlsearch
	"windows can be 0 line high
	set winminheight=0
	"搜索忽略大小写
	set ignorecase
	"case sensitive when uc present
	set smartcase
	"lines to scroll when cursor leaves screen
	set scrolljump=5
	"minimum lines to keep above and below cursor
	set scrolloff=3
	"auto fold code
	set foldenable
	"Set 7 lines to the curors - when moving vertical..
	set so=7
	"The commandbar is 1 high
	set cmdheight=1
	"命令行下按tab键自动完成
  set wildmode=list:full
  set wildmenu
	set laststatus=2
"}
"Formatting {
	"tab宽度
	set shiftwidth=2
	set softtabstop=2
	set tabstop=2
	set backspace=2
	set smarttab
	set lbr
	"Auto indent
	set ai
	"Smart indet
	set si
	"C-style indenting
	set cindent
	"自动换行
	set wrap
	"带有如下符号的单词不要被换行分割
	set iskeyword+=_,$,@,%,#,-
	"backspace and cursor keys wrap to
	set whichwrap=b,s,h,l,<,>,[,]
	"没有错误声
	set noerrorbells
"}
"Key (re)Mappings {
		"设置mapleader
		let mapleader = ","
		let g:mapleader = ","
    "让 ; 跟 : 一样可以进入命令模式
    "nnoremap ; :
		"在不同的窗口移动
		map <C-j> <C-W>j
		map <C-k> <C-W>k
		map <C-h> <C-W>h
		map <C-l> <C-W>l
		map <C-i> <C-W><C-W>
		"在插入模式下用jj映射为ESC键
		imap jj <Esc> 
		"在插入模式下跳过一个字符，对autoclose类的插件很有用
		imap <F12> <Esc>la
		"Tab configuration
		map <leader>tn :tabnew .<cr>
		map <leader>tc :tabclose<cr>
		map <leader>tm :tabn<cr>
		map <leader>tp :tabp<cr>
		"关闭buffer
		nmap <leader>q :bd<cr> 
		"快速保存
		nmap <leader>w :w!<cr>
    "Wrapped lines goes down/up to next row, rather than next line in file.
    nnoremap j gj
    nnoremap k gk
    "清除高亮的搜索结果
    nmap <silent> <leader>/ :nohlsearch<CR>
    "For when you forget to sudo.. Really Write the file.
    cmap w!! w !sudo tee % >/dev/null
    "Easier horizontal scrolling
    map zl zL
    map zh zH
"}
"}
"GUI Settings{
" GVIM- (here instead of .gvimrc)
if has('gui_running')
	set guioptions-=T           " remove the toolbar
	set lines=40                " 40 lines of text instead of 24,
	if has("gui_gtk2")
		set guifont=Source\ Code\ Pro\ for\ Powerline:h16
	else
		set guifont=Source\ Code\ Pro\ for\ Powerline:h16
	endif
	if has('gui_macvim')
		set guifont=Source\ Code\ Pro\ for\ Powerline:h16
		set transparency=5          " Make the window slightly transparent
	endif
else
	if &term == 'xterm' || &term == 'screen'
		set t_Co=256                 " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
	endif
endif
"}

"Plugins {
	"vim-color {
		"默认颜色主题
		colorscheme molokai 
	"}
	"NerdTree {
		"把 F4 映射到 切换NERDTree插件
		map <F4> :NERDTreeToggle<cr>
		"map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
		map <leader>e :NERDTreeFind<CR>
		nmap <leader>nt :NERDTreeFind<CR>

		let NERDTreeShowBookmarks=1
		let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
		let NERDTreeChDirMode=0
		let NERDTreeQuitOnOpen=0
		let NERDTreeShowHidden=0
		let NERDTreeKeepTreeInNewTab=1
		let NERDTreeWinPos = "left"
		let NERDTreeMapChangeRoot="cc"
		autocmd vimenter * if !argc() | NERDTree | endif
	"}
	"ctrlp {
		"let g:ctrlp_working_path_mode = 2
		nnoremap <silent> <D-t> :CtrlP<CR>
		nnoremap <silent> <D-r> :CtrlPMRU<CR>
		let g:ctrlp_custom_ignore = {
				\ 'dir':  '\.git$\|\.hg$\|\.svn$',
				\ 'file': '\.exe$\|\.so$\|\.dll$' }
	"}
	"neocomplcache {
		let g:neocomplcache_enable_at_startup = 1
		let g:neocomplcache_enable_camel_case_completion = 1
		let g:neocomplcache_enable_smart_case = 1
		let g:neocomplcache_enable_underbar_completion = 1
		let g:neocomplcache_min_syntax_length = 3
		let g:neocomplcache_enable_auto_delimiter = 1

		"AutoComplPop like behavior.
		let g:neocomplcache_enable_auto_select = 0

		"Plugin key-mappings.
		imap <C-k>     <Plug>(neocomplcache_snippets_expand)
		smap <C-k>     <Plug>(neocomplcache_snippets_expand)
		inoremap <expr><C-g>     neocomplcache#undo_completion()
		inoremap <expr><C-l>     neocomplcache#complete_common_string()

		inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
		inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
		inoremap <expr><C-y>  neocomplcache#close_popup()
		inoremap <expr><C-e>  neocomplcache#cancel_popup()

		"Enable omni completion.
		autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
		autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
		autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
		autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
		autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

		"Enable heavy omni completion.
		if !exists('g:neocomplcache_omni_patterns')
				let g:neocomplcache_omni_patterns = {}
		endif

		let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
		let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
		let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

		"For snippet_complete marker.
		if has('conceal')
			set conceallevel=2 concealcursor=i
		endif
	"}
	"MinibufferExpl {
		let g:miniBufExplModSelTarget = 1
		let g:miniBufExplUseSingleClick = 1
		let g:miniBufExplMapWindowNavVim = 1
		let g:miniBufExplMapWindowNavArrows = 1
		let g:miniBufExplMapCTabSwitchBufs = 1
		"let g:miniBufExplorerMoreThanOne = 1
	"}
	"Gundo {
		nnoremap <F6> :GundoToggle<CR>
		let g:gundo_width = 35
		let g:gundo_preview_height = 10
		"}
		"unimpaired.vim {
			"Buble single line
			nmap <S-Up> [e
			nmap <S-Down> ]e
			"Buble mulitle lines
			vmap <S-Up> [egv
			vmap <S-Down> ]egv
		"}
		"a.vim {
			"映射a.vim 快捷键 
			map <leader>a :A<cr>
		"}
		"Tabular {
		if exists(":Tabularize")
			nmap <Leader>a= :Tabularize /=<CR>
			vmap <Leader>a= :Tabularize /=<CR>
			nmap <Leader>a: :Tabularize /:<CR>
			vmap <Leader>a: :Tabularize /:<CR>
			nmap <Leader>a:: :Tabularize /:\zs<CR>
			vmap <Leader>a:: :Tabularize /:\zs<CR>
			nmap <Leader>a, :Tabularize /,<CR>
			vmap <Leader>a, :Tabularize /,<CR>
			nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
			vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

			"The following function automatically aligns when typing a
			"supported character
			inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

			function! s:align()
				let p = '^\s*|\s.*\s|\s*$'
				if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
					let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
					let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
					Tabularize/|/l1
					normal! 0
					call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
				endif
			endfunction

		endif
		"}
		"tagbar {
			if executable('ctags')
				nmap <F5> :TagbarToggle<CR>
				let g:tagbar_width = 30
				let g:tagbar_autoclose = 1
				let g:tagbar_autofocus = 1
        let g:tagbar_compact = 1
        let g:tagbar_iconchars = ['▾', '▸']
			endif
		"}
		"vim-indent-guides {
			"note: <leader>ig to toggle this plugin
			let g:indent_guides_auto_colors = 0
			autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd	guibg=red	 ctermbg=3
			autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
		"}
		"ruby-conque {
			nmap <silent> <Leader>rcrr :call RunRubyCurrentFileConque()<CR>
			nmap <silent> <Leader>rcss :call RunRspecCurrentFileConque()<CR>
			nmap <silent> <Leader>rcll :call RunRspecCurrentLineConque()<CR>
			nmap <silent> <Leader>rccc :call RunCucumberCurrentFileConque()<CR>
			nmap <silent> <Leader>rccl :call RunCucumberCurrentLineConque()<CR>
			nmap <silent> <Leader>rcRR :call RunRakeConque()<CR>
			nmap <silent> <Leader>rcrl :call RunLastConqueCommand()<CR>
		"}
		"vim-powerline {
			let Powerline_symbols = 'compatible'
			let g:Powerline_symbols = 'fancy'
		"}
"}

"Action {
"打开文件时跳到上次退出时的位置
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif
"}

