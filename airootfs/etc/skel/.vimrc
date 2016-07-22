"---------------------------------------------------------------Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'jeaye/color_coded'
"Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'sjl/gundo.vim'
Plugin 'mbbill/undotree'
Plugin 'fcitx.vim'
Plugin 'asins/vimcdoc'
Plugin 'bling/vim-airline'
Plugin 'szw/vim-ctrlspace'
Plugin 'junegunn/goyo.vim'
Plugin 'bling/vim-bufferline'
Plugin 'Valloric/ListToggle'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'dyng/ctrlsf.vim'
Plugin 'peterhoeg/vim-qml' "qml
call vundle#end()            " required
filetype plugin indent on

"-------------------------------------------------显示行号,按下F2显示/隐藏
set number
nnoremap <F3> :set nonumber!<CR>:set foldcolumn=0<CR>

"--------------------------------------------高亮
syntax on
"if has('gui_running')
"        colorscheme solarized
"else
"        colorscheme flatlandia
"endif
colorscheme gruvbox
"colorscheme flatlandia
"colorscheme solarize
"colorscheme atom-dark
"colorscheme molokai
"colorscheme Dracula

"let g:solarized_termcolors=256
"let g:solarized_visibility="normal"

let g:gruvbox_bold = 0
let g:gruvbox_termcolors = 256
let g:gruvbox_hls_cursor = 'orange'
let g:gruvbox_invert_tabline = 1
"let g:gruvbox_improved_strings = 1
let g:gruvbox_improved_warnings = 1

set background=dark
set cursorline
set cursorcolumn
set hlsearch
"-----------------------------缩进
"set noexpandtab / expandtab
set autoindent
"set expandtab
set ts=4 sw=4
"set softtabstop=4
"set shiftwidth=4
set smartindent " 智能对齐方式
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace "显示多余空白  from spf13
set smarttab " 智能tab
"-------------------------------------YouCompleteMe
" YCM 补全菜单配色
" 菜单
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"Do not ask when starting vim
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_always_populate_location_list = 1
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<Up>']
"在注释输入中也能补全
"let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"let g:syntastic_always_populate_loc_list = 1
"let g:ycm_key_invoke_completion = '<C-N>'
"nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nmap <M-f> :YcmForceCompileAndDiagnostics<CR>
"set completeopt-=preview "不在预览窗口显示

"-----------------------------NERDTreeToggle
map <F2> :NERDTreeToggle<CR>

let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeQuickOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
"autocmd vimenter * NERDTreeToggle "auto start
"----------------------------------------------vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

"--------------------------------CtrlSpace
set nocompatible
set hidden

nnoremap <silent><C-[> :CtrlSpace<CR>
"----------------------------------------------------tagbar
nmap <F8> :TagbarToggle<CR>
"autocmd FileType c,cpp,h,hpp,cc,cxx,lua nested :TagbarOpen
let Tlist_Exit_OnlyWindow = 1 "exit when it is only 1 window
"let g:tagbar_left = 1 "left
"--------fold setting
set foldmethod=syntax               " 折叠方式
set nofoldenable
set foldcolumn=1                      " 折叠为1 行
"-----------------------------------------------UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ["Ultisnips","bundle/vim-snippets/UltiSnips"]
"----------------------------------------------ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
"-----------------------syntax
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_lua_checkers = ['luac']

let g:syntastic_error_symbol = '>'
let g:syntastic_warning_symbol = '△'

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11'
"----------------------------------------------autoopen in begining
"autocmd vimenter * NERDTreeToggle

set guioptions-=T               "隐藏工具栏
set guioptions-=m               " 隐藏菜单栏
set guioptions-=b               "隐藏底部滚动栏
set guioptions-=l
set guioptions-=L               "~~~~左边~~~
set guioptions-=R
set guioptions-=r               "~~~~右边~~~
"-----------------------gundo
"nnoremap <F10> :GundoToggle<CR>
"Gundo was deleted...........................-------------------------------

"undotree
if has("persistent_undo")
    set undodir='~/.undodir/'
    set undofile
endif
nnoremap <F10> :UndotreeToggle<cr>
"---------------------------------------------------air line
"let g:airline_powerline_fonts=1
set laststatus=2
let g:airline_theme='gruvbox'
"--------------------------etc 杂项
"对齐线
set cc=100
set ignorecase                        " 搜索时忽略大小写
set smartcase                         " 搜索内容中有大写字母才对大小写敏感
set whichwrap=b,s,<,>,[,] " 光标行首行尾时自动移动
set ruler " 总是显示当前光标位置
set wrapscan                          " 循环搜索
set hlsearch                          " 高亮搜索
set encoding=utf-8 " vim内部使用的编码方式
set showmatch " 显示括号匹配
"set nocompatible
let mapleader = ','
"--------------MAP
" Window navigation
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

