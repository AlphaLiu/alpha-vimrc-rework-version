#README
#####介绍:
本项目目的是快速配置一个可用的vim环境以使vim更加方便易用。

本项目在[alpha-vimrc](https://github.com/alphaliu/alpha-vim)的基础上重新改写了vimrc，增加可读性和插件之间的兼容性。

本项目只在 Unix like 系统环境下测试通过。

#####安装:
0. 如果已经存在```~/.vim```文件夹，请先删除。
0. 运行```git clone git://github.com/AlphaLiu/alpha-vimrc-rework-version.github```。
0. 运行```cd alpha-vimrc-rework-version```
0. 运行```./install```，若系统已经安装了ruby语言，可以使用```rake deploy```。

#####插件:
* [vundle]()
	
	vim 插件管理工具。
	
* [vim-addon-mw-utils]()
	
	函数库，一些插件可能会依赖这个函数库。

* [tlib_vim]()

	函数库，一些插件可能会依赖这个函数库。

* [ack.vim](https://github.com/mileszs/ack.vim)
* [vim-colors-solarized]()
* [vim-colors]()
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [ctrlp](https://github.com/kien/ctrlp.vim)
* [supertab]()
* [minibufexpl](https://github.com/fholgado/minibufexpl.vim)
* [vim-match]()
* [vim-easymotion]() 
* [neocomplcache](https://github.com/Shougo/neocomplcache)
* [gundo](https://github.com/sjl/gundo.vim)
* [vim-surround](https://github.com/tpope/vim-surround)
* [vim-unimpaired](https://github.com/tpope/vim-unimpaired)
* [vim-repeat](https://github.com/tpope/vim-repeat)
* [delimitMate](https://github.com/Raimondi/delimitMate)

* [neocomplcache](https://github.com/Shougo/neocomplcache)
* [The-NERD-Commenter](https://github.com/scrooloose/nerdcommenter)
* [a.vim]()

#####快捷键:
0. ```CTRL-h```	(全模式)跳到左边的窗口。
1. ```CTRL-l``` (全模式)跳到右边的窗口。
2. ```CTRL-j```	(全模式)跳到上边的窗口。
3. ```CTRL-k``` (全模式)跳到下边的窗口。
4. ```CTRL-w CTRL-w``` (全模式)光标在窗口循环。
