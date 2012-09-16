"General {
	"不兼容VI键盘，使用vim键盘
		set nocompatible

    set background=dark         "Assume a dark background
		"
    if !has('gui')
        "set term=$TERM          "Make arrow and other keys work
    endif

    syntax on                   "syntax highlighting

		"set autowrite                  "automatically write a file when leaving a modified buffer
    set shortmess+=filmnrxoOtT      "abbrev. of messages (avoids 'hit enter')
    set viewoptions=folds,options,cursor,unix,slash "better unix / windows compatibility
    set virtualedit=onemore         "allow for cursor beyond last character
    "set spell                       "spell checking on
    set hidden                      "allow buffer switching without saving
		"历史记录数
		set history=50

		"设置编码
    scriptencoding utf-8
		set enc=utf-8

		"设置文件编码
		set fenc=utf-8

	"设置文件编码检测类型及支持格式
		set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

		"禁止生成临时文件
		set nobackup
		set noswapfile

    "Setting up the directories {
        "if has('persistent_undo')
            "set undofile                "so is persistent undo ...
            "set undolevels=1000         "maximum number of changes that can be undone
            "set undoreload=10000        "maximum number lines to save for undo on a buffer reload
        "endif
        "Could use * rather than *.*, but I prefer to leave .files unsaved
				au BufWinLeave *.* silent! mkview  "make vim save view (state) (folds, cursor, etc)
				au BufWinEnter *.* silent! loadview "make vim load view (state) (folds, cursor, etc)
    "}
"}
"Vim UI {

		"设置默认的颜色
		colorscheme molokai 

    set showmode                    "display the current mode

    set cursorline                  "highlight current line

    if has('cmdline_info')
			"显示标尺
			set ruler

			set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) "a ruler on steroids
			set showcmd                 "show partial commands in status line and
                                    "selected characters/lines in visual mode
    endif


    "if has('statusline')
        "set laststatus=2
        "Broken down into easily includeable segments
        "set statusline=%<%f\    "Filename
        "set statusline+=%w%h%m%r "Options
        "set statusline+=%{fugitive#statusline()} " Git Hotness
        "set statusline+=\ [%{&ff}/%Y]            "filetype
        "set statusline+=\ [%{getcwd()}]          "current dir
        "set statusline+=%=%-14.(%l,%c%V%)\ %p%%  "Right aligned file nav info
    "endif

    set backspace=indent,eol,start  "backspace for dummies
    set linespace=0                 "No extra spaces between rows
    set nu                          "Line numbers on
		"高亮显示匹配的括号
    set showmatch
    set incsearch                   "find as you type search
    set hlsearch                    "highlight search terms
    set winminheight=0              "windows can be 0 line high
		"搜索忽略大小写
		set ignorecase
    set smartcase                   "case sensitive when uc present
		"命令行下按tab键自动完成
    set wildmenu                    "show list instead of just completing
    set wildmode=list:longest,full  "command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]   "backspace and cursor keys wrap to
    set scrolljump=5                "lines to scroll when cursor leaves screen
    set scrolloff=3                 "minimum lines to keep above and below cursor
    set foldenable                  "auto fold code
    "set list
    "set listchars=tab:,.,trail:.,extends:#,nbsp:. "Highlight problematic whitespace
		
		"Set 7 lines to the curors - when moving vertical..
		set so=7
		"The commandbar is 1 high
		set cmdheight=1
		"设置在最上面一行显示当前文件名
		"if exists("&showtabline")
		"set stal=2
		"endif


"}

"Formatting {
		"tab宽度
		set shiftwidth=2
		set softtabstop=2
		set tabstop=2
		set backspace=2
		set smarttab
    "set expandtab                   "tabs are spaces, not tabs
		set lbr
		"	Auto indent
		set ai
		"	Smart indet
		set si
		"	C-style indenting
		set cindent
		"	Wrap line
		set wrap
		"带有如下符号的单词不要被换行分割
		set iskeyword+=_,$,@,%,#,-
    "set matchpairs+=<:>                "match, to be used with %
    set pastetoggle=<F12>           "pastetoggle (sane indentation on pastes)
    "set comments=sl:/*,mb:*,elx:*/  "auto format comment blocks
    "Remove trailing whitespaces and ^M chars
    "autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
"}

"Key (re)Mappings {
    "The default leader is '\', but many people prefer ',' as it's in a standard
    "location
		"Set mapleader
		let mapleader = ","
		let g:mapleader = ","

    "Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
    nnoremap ; :

		"在不同的窗口移动
		map <C-j> <C-W>j
		map <C-k> <C-W>k
		map <C-h> <C-W>h
		map <C-l> <C-W>l
		map <C-i> <C-W><C-W>

		"设置自动保存
		imap <F9> <Esc>:up<cr>

		"auto skip one char in insert mode, it's useful in autoclose plugin
		imap <F8> <Esc>la

		"Tab configuration
		map <leader>tn :tabnew .<cr>
		map <leader>tc :tabclose<cr>
		map <leader>tm :tabn<cr>
		map <leader>tp :tabp<cr>

		"Moving fast to front, back and 2 sides ;)
		imap <m-4> <esc>$a
		imap <m-0> <esc>0i
		imap <D-4> <esc>$a
		imap <D-0> <esc>0i

		"Fast close the buffer
		nmap <leader>q :bd<cr> 

		"Fast saving
		nmap <leader>w :w!<cr>

    "Wrapped lines goes down/up to next row, rather than next line in file.
    nnoremap j gj
    nnoremap k gk

    "The following two lines conflict with moving to top and bottom of the
    "screen
    "If you prefer that functionality, comment them out.
    map <S-H> gT
    map <S-L> gt

    "Yank from the cursor to the end of the line, to be consistent with C and D.
    nnoremap Y y$

    """Code folding options
    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

    "clearing highlighted search
    nmap <silent> <leader>/ :nohlsearch<CR>

    "Shortcuts
    "Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
    cmap cd. lcd %:p:h

    "visual shifting (does not exit Visual mode)
    vnoremap < <gv
    vnoremap > >gv

    "Fix home and end keybindings for screen, particularly on mac
    "- for some reason this fixes the arrow keys too. huh.
    map [F $
    imap [F $
    map [H g0
    imap [H g0

    "For when you forget to sudo.. Really Write the file.
    cmap w!! w !sudo tee % >/dev/null

    "Some helpers to edit mode
    "http://vimcasts.org/e/14
    cnoremap %% <C-R>=expand('%:h').'/'<cr>
    map <leader>ew :e %%
    map <leader>es :sp %%
    map <leader>ev :vsp %%
    map <leader>et :tabe %%

    "Adjust viewports to the same size
    map <Leader>= <C-w>=

    "Easier horizontal scrolling
    map zl zL
    map zh zH
"}

