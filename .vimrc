" release autogroup in MyAutoCmd
augroup MyAutoCmd
  autocmd!
augroup END

filetype off
filetype plugin indent off

set list         " 不可視文字の可視化
set number       " 行番号の表示
set nocompatible
set columns=120
set lines=35

" デフォル不可視文字を変更
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%,eol:\ 


" バックスペースで何でも消せるように
set backspace=indent,eol,start

" 素早くjを2回押すとコマンドモードへ
inoremap jj <Esc>

" j, kによる移動を折り返されたテキストでも自然に振る舞うように
nnoremap j gj
nnoremap k gk


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'thinca/vim-quickrun'

"カラースキーマの取得
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'


"インデントにガイドを入れる
NeoBundle 'nathanaelkane/vim-indent-guides'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

"デフォルトカラースキーマ設定
colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark


" vimを立ち上げた時に、自動的にvim-indent-guidesをオンにする
"let g:indent_guides_enable_on_vim_startup=1
" ガイドをスタートするインデントの量
"let g:indent_guides_start_level=2
" 自動カラーを無効にする
"let g:indent_guides_auto_colors=1
" 奇数インデントのカラー
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=gray
" 偶数インデントのカラー
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=darkgray
" ハイライト色の変化の幅
"let g:indent_guides_color_change_percent = 30
" ガイドの幅
"let g:indent_guides_guide_size = 1



filetype plugin indent on

