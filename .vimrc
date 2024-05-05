"---------------------------------
" Common
"---------------------------------"

" スワップファイルを作成しない
set noswapfile

"ヤンクとクリップボードを共有
set clipboard+=unnamed

"---------------------------------
" Search
"---------------------------------

" 大文字、小文字の区別をしない
set ignorecase

" インクリメンタル検索（入力した時点で検索が開始される）
set incsearch

" 検索結果をハイライト
set hlsearch


"---------------------------------
" Display
"---------------------------------

" 行番号の表示
set number

" モードを非表示にする
set noshowmode

" 行頭でのタブ文字幅
set shiftwidth=2

" 行頭にshiftwidth分空白を加える
set smarttab

" タブを空白スペースにする
set expandtab

" 自動インデントを使用する
set smartindent

" 新しい行にしたとき自動でインデントが反映される
set autoindent

" カーソルの行を表示する
set cursorline

" カーソルの位置を行列番号で表示
set ruler

" ステータスラインを表示（ファイル名がわかる）
set laststatus=2

" コマンドライン補完
set wildmenu

" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>

" jjでインサートモードから抜ける
inoremap jj <ESC>


"---------------------------------
" vim-plug
"---------------------------------

" Helpの日本語化を優先表示
set helplang=ja

" vim-indent-guidesのデフォルト表示
let g:indent_guides_enable_on_vim_startup = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'papercolor'

" Fern
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=30<CR>
let g:fern#default_hidden = 1

call plug#begin()
" Helpの日本語化
Plug 'vim-jp/vimdoc-ja'

" インデントガイドを表示
Plug 'nathanaelkane/vim-indent-guides'

" ステータスラインを変更
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fern ファイルツリー
Plug 'lambdalisue/fern.vim'

call plug#end()
