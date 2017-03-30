
"llm的vim配置
set number "行数
set autoindent "自动缩进
set smartindent "智能缩进
set cindent "C系列缩进
set softtabstop=4 "缩进长度
set shiftwidth=4 "缩进长度
set tabstop=4 "tab键长度
set expandtab "tab设为空格
set softtabstop=4 "缩进长度
syntax on 
syntax enable
set encoding=utf-8
colorscheme desert "配色沙漠 还有: torte, solarized, molokai, phd, ron, evening  等经典配色

"设置字体大小
if has('gui_win32')
    set guifont=Monospace:h10
else
    set guifont=Monospace\ 14
endif

set ruler "在右下角显示当前行信息
filetype plugin on
filetype indent on
set hlsearch "搜索高亮
" 让配置变更立即生效,有点问题
autocmd BufWritePost ~/.vimrc source ~/.vimrc
set mouse=a "鼠标

"窗口管理
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1


"映射复制、粘贴、剪贴ctrl+c ctrl+v ctrl+x
"map <C-V> "+pa<Esc>
map! <C-V> <Esc>"+pa
map <C-C> "+y
map <C-X> "+x
" 映射全选 ctrl+a
map <C-A> ggVG
map! <C-A> <Esc>ggVG
"ctrl+s为保存,终端里面无效，它会锁定
map <C-S> :w<CR>
map! <C-S> <Esc>:w<CR>a
"ctrl+z撤销
map <C-Z> :u<CR>
map! <C-Z> <Esc>:u<CR>a

"双击时高亮
map <2-LeftMouse> *N
map! <2-LeftMouse> <c-o>*N
"ctrl+鼠标左键跳转
map <C-LeftMouse> <C-]>
map! <C-LeftMouse> <Esc><C-]>

"设置gui打开时最大化
if has("gui_running")
    set lines=100 columns=200
endif






