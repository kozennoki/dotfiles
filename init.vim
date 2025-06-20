"---------------------------------
" Common
"---------------------------------

"ヤンクとクリップボードを共有
set clipboard=unnamedplus

"---------------------------------
" Search
"---------------------------------

" 大文字、小文字の区別をしない
set ignorecase

" 検索結果をハイライト
set hlsearch

"---------------------------------
" Display
"---------------------------------

" 行番号の表示
set number

" デフォルトのシェルをzshに設定
set shell=/bin/zsh

" インデントの幅
set shiftwidth=2

" タブの幅
set tabstop=2

" タブを空白スペースにする
set expandtab

" 新しい行にしたとき自動でインデントが反映される
set autoindent

"---------------------------------
" KeyBind
"---------------------------------

" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>

" jjでインサートモードから抜ける
inoremap jj <ESC>
