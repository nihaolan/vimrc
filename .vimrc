" Vundle配置开始
set nocompatible              " be iMproved, required
filetype off                  " required

" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后

" 让Vundle管理Vundle，需要
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline' " 最佳状态栏
Plugin 'vim-airline/vim-airline-themes' " 最佳状态栏主题
Plugin 'bling/vim-bufferline' " vim 缓冲线
Plugin 'preservim/nerdtree' " Vim 编辑器的文件系统浏览器
" 原始 Markdown和扩展的语法突出显示、匹配规则和映射。
Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'
Plugin 'instant-markdown/vim-instant-markdown' " Vim 的即时 Markdown 预览
" 改进的 PHP 全方位补全。基于默认的 phpcomplete.vim。
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'posva/vim-vue' " Vue 组件的 Vim 语法高亮显示。
Plugin 'mattn/emmet-vim' " 它提供对类似于 emmet的扩展缩写的支持。
Plugin 'turbio/bracey.vim' " 用于在 vim 中实时编辑 html、css 和 javascript 的插件

" 安装插件写在这之前
call vundle#end()            " required
filetype plugin indent on    " required


" （可选）对于那些使用fish shell的人：添加set shell=/bin/bash到您的.vimrc
set shell=/bin/bash

" 安装插件：
" 启动 vim 并运行 :PluginInstall
" 从命令行安装 vim +PluginInstall +qall

" -------------------------------------------------------------------------------

" Vim-plug配置开始
call plug#begin() " 开始

Plug 'lambdalisue/battery.vim' " 电池.vim
" Flog 是一个轻量级且功能强大的 git 分支查看器，它与 fugitive集成。
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'ryanoasis/vim-devicons' " 将文件类型字形（图标）添加到各种 vim 插件。
Plug 'sheerun/vim-polyglot' " vim 多语言
Plug 'yianwillis/vimcdoc' " Vim 中文文档计划
Plug 'arcticicestudio/nord-vim' " 北极，北蓝色干净优雅的Vim主题。
" vim-lsp 设置
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" 异步完成.vim
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" ddc.vim
Plug 'Shougo/ddc.vim'
Plug 'shun/ddc-vim-lsp'
Plug 'luochen1990/rainbow' " 彩虹括号增强版
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rlue/vim-barbaric' " 输入法模式自动切换设置

call plug#end() " 结束

" 安装插件:
" 启动 vim 并运行 :PlugInstall
" 卸载插件
" 请先在vimrc配置文件中注释或者删除对应插件的配置信息，然后再执行命令 :PlugClean
" 更新插件
" 更新vim-plug插件自身，执行命令 :PlugUpgrade
" 批量更新所有已安装的插件，执行命令 :PlugUpdate
" 查看当前已安装插件的状态信息，执行命令 :PlugStatus

" ------------------------------------------------------------------------------

" 使用 vim 电池
set statusline=...%{battery#component()}...
set tabline=...%{battery#component()}...

" ------------------------------------------------------------------------------

" Vim 状态栏中显示时间
"set statusline=\PATH:\ %r%F\ \ \ \ \LINE:\ %l/%L/%P\ TIME:\ %{strftime('%c')}

" 启用vim状态栏
let g:airline#extensions#tabline#enabled = 1

" -----------------------------------------------------------------------------

" Vim 配置

" 不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible

" 打开语法高亮。自动识别代码，使用多种颜色显示。
syntax on

" 支持使用鼠标。
set mouse=a

" 使用 utf-8 编码。
set encoding=UTF-8

" 启用256色。
set t_Co=256

" 显示行号
set number

" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。
set relativenumber

" 光标所在的当前行高亮。
" set cursorline

" 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set laststatus=2

" 在状态栏显示光标的当前位置（位于哪一行哪一列）。
"set  ruler

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set showmatch

" 搜索时，高亮显示匹配结果。
set hlsearch

" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set incsearch

" 保留撤销历史。
set undofile

" Vim 需要记住多少次历史操作。
set history=1000

" ---------------------------------------------------------------------

" vim-airline 主题
" let g:airline_theme='violet'

" 状态行也可以绘制在顶部
let g:airline_statusline_ontop=1

" 与电力线字体集成
let g:airline_powerline_fonts = 1

" ---------------------------------------------------------------------

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight' " vim-nerdtree 语法高亮
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" 安装插件
" 打开vim 运行 NeoBundleInstall

" vim-nerdtree 语法高亮
" 使用完全匹配突出显示文件夹
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" ------------------------------------------------------------------------------
" 原始 Markdown和扩展的语法突出显示、匹配规则和映射。禁用折叠配置
let g:vim_markdown_folding_disabled = 1

" ----------------------------------------------------------------------------
" vim-javascript
" 用于 vim 的 JavaScript 包，该包提供语法高亮和改进的缩进。
" 启用JSDocs的语法突出显示。
let g:javascript_plugin_jsdoc = 1
" 为 NGDocs 启用一些额外的语法突出显示。还需要启用 JSDoc 插件。
let g:javascript_plugin_ngdoc = 1
" 启用Flow的语法高亮显示。
" let g:javascript_plugin_flow = 1

" -----------------------------------------------------------------------
" 要激活并使用 Nord Vim 作为默认颜色主题
colorscheme nord

" ------------------------------------------------------------------------
let g:rainbow_active = 1 " 启用彩虹括号

" -------------------------------------------------------------------------

" NerdTree 在 .vimrc 中的常用配置
" 是否显示行号
let g:NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let g:NERDTreeHidden=1     "不显示隐藏文件
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" --------------------------------------------------------------------------
" 在所有模式下启用 emmet
let g:user_emmet_mode='a'
