#README
#####介绍:
本项目目的是快速配置一个可用的vim环境以使vim更加方便易用。

本项目在[alpha-vimrc](https://github.com/alphaliu/alpha-vim)的基础上重新改写了vimrc 文件，增加可读性和插件之间的兼容性。

本项目只在 Unix like 系统环境下测试通过。

#####安装:
0. 如果已经存在```~/.vim```文件夹，请先删除。
0. 运行```git clone git://github.com/AlphaLiu/alpha-vimrc-rework-version.github```。
0. 运行```cd alpha-vimrc-rework-version```。
0. 运行```./install```，若系统已经安装了ruby语言，可以使用```rake deploy```。
0. vimrc默认使用 Source Code Pro 字体，请把 fonts_for_powerline/sourcecodepro_for_powerline.zip 解压并安装该字体, 以得到最好的显示效果。

__注意事项__: 

0. 最新版 vim-powerline 需要 vim 支持 Python 2。请参考安装文档: [http://lokaltog.github.com/powerline/](http://lokaltog.github.com/powerline/)。
如果你需要旧版本的 vim-powerline， 请到``` ~/.vim/bundle/vim-powerline/```， 使用以下命令 checkout ```develop``` 分支:
```git checkout develop```。
0. ack.vim需要系统安装有 ```ack``` 软件，请参考 [http://betterthangrep.com/install/](http://betterthangrep.com/install/) 进行安装。
0. tagbar需要系统安装有```Exuberant ctags```或者```GNU GLOBAL```， 请参考[Exuberant Ctags](http://ctags.sourceforge.net/) 或者 [GNU GLOBAL](http://www.gnu.org/software/global/)。

#####插件:
* [vundle](https://github.com/gmarik/vundle)
    
	vim 插件管理工具。
* [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
	
	函数库，一些插件可能会依赖这个函数库。
* [tlib_vim](https://github.com/tomtom/tlib_vim)

	函数库，一些插件可能会依赖这个函数库。
* [ack.vim](https://github.com/mileszs/ack.vim)
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-colors](https://github.com/spf13/vim-colors)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [ctrlp](https://github.com/kien/ctrlp.vim)
* [minibufexpl](https://github.com/fholgado/minibufexpl.vim)
* [vim-match](https://github.com/edsono/vim-matchit)
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion) 
* [vim-surround](https://github.com/tpope/vim-surround) 
* [vim-unimpaired](https://github.com/tpope/vim-unimpaired) 
* [vim-repeat](https://github.com/tpope/vim-repeat)
* [delimitMate](https://github.com/Raimondi/delimitMate)
* [cmdline-completion](https://github.com/vim-scripts/cmdline-completion)
* [gundo](https://github.com/sjl/gundo.vim)
* [neocomplcache](https://github.com/Shougo/neocomplcache)
* [The-NERD-Commenter](https://github.com/scrooloose/nerdcommenter)
* [a.vim](https://github.com/AlphaLiu/a.vim)
* [Indent Guides](https://github.com/nathanaelkane/vim-indent-guides)
* [Conque](https://github.com/rson/vim-conque)
* [snipmate.vim](https://github.com/garbas/vim-snipmate)
* [snipmate-snippets](https://github.com/spf13/snipmate-snippets)
* [vim-powerline](https://github.com/Lokaltog/vim-powerline)
* [fugitive.vim](https://github.com/tpope/vim-fugitive)
* [tabular](https://github.com/godlygeek/tabular)
* [tagbar](https://github.com/majutsushi/tagbar)
* [vim-ruby](https://github.com/vim-ruby/vim-ruby)
* [rails.vim](https://github.com/tpope/vim-rails)
* [vim-slim](https://github.com/slim-template/vim-slim)
* [vim-ruby-conque](https://github.com/skwp/vim-ruby-conque)
* [vim-endwise](https://github.com/tpope/vim-endwise)
* [vim-json](https://github.com/leshill/vim-json)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-web-indent](https://github.com/taxilian/vim-web-indent)
* [HTML-AutoCloseTag]()
* [css3-mod](https://github.com/vim-scripts/css3-mod)
* [zencoding-vim](https://github.com/mattn/zencoding-vim)
* [sudo.vim](https://github.com/vim-scripts/sudo.vim)
* [vim-markdown](https://github.com/tpope/vim-markdown)

#####常用快捷键:
0. ```CTRL-h```	(全模式)跳到左边的窗口。
0. ```CTRL-l``` (全模式)跳到右边的窗口。
0. ```CTRL-j```	(全模式)跳到上边的窗口。
0. ```CTRL-k``` (全模式)跳到下边的窗口。
0. ```CTRL-w CTRL-w``` (全模式)光标在窗口循环。
0. ```F4``` (全模式)开关 Nerdtree 窗口
0. ```F5``` (全模式)开关 tagbar 窗口
0. ```F6``` (全模式)开关 Gundo 窗口
0. ```F12``` (Insert)跳过一个字符
0. ```Tab``` (Normal)跳转到 minibufexpl 栏
0. ```,w``` (Normal)快速保存
0. ```,q``` (Normal)关闭当前buffer
0. ```CTRL-P``` (Normal)打开 CtrlP 搜索栏
0. ```,cc``` (Insert/Visual)注释
0. ```,cu``` (Insert/Visual)取消注释
0. ```,/``` (Normal)清除高亮的搜索结果
0. ```w!!``` (Command)对需要 sudo 的文件进行写操作
0. ```,a``` (Normal)快速打开 C 语言文件对应的头文件

更多自定义的快捷键请参考``` vimrc ```文件。
