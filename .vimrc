"---------------------------------
" Common
"---------------------------------"

" スワップファイルを作成しない
set noswapfile

" ビープ音を消す
set belloff=all

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

" タブの表示幅
set tabstop=2

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


"---------------------------------
" KeyBind
"---------------------------------
"
" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>

" jjでインサートモードから抜ける
inoremap jj <ESC>

" 現在のバッファ（タブ）を削除
nnoremap bd :bd<CR>

if has('vim_starting')
  " 挿入モード時に非点滅の縦棒タイプのカーソル
  let &t_SI .= "\e[6 q"
  " ノーマルモード時に非点滅のブロックタイプのカーソル
  let &t_EI .= "\e[2 q"
  " 置換モード時に非点滅の下線タイプのカーソル
  let &t_SR .= "\e[4 q"
endif


"---------------------------------
" vim-go
"---------------------------------

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_methods =1
let g:go_highlight_structs = 1
autocmd FileType go :highlight goErr cterm=bold ctermfg=204
autocmd FileType go :match goErr /\<err\>/


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
let g:airline#extensions#tabline#buffer_idx_mode = 1
nnoremap <C-p> <Plug>AirlineSelectPrevTab
nnoremap <C-n> <Plug>AirlineSelectNextTab

" Fern
nnoremap <C-t> :Fern . -reveal=% -drawer -toggle -width=30<CR>
let g:fern#default_hidden = 1

" fzf
let mapleader = "\<Space>"
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :GFiles?<CR>

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

" ファジーファインダー
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Github Copilot
Plug 'github/copilot.vim'

" Color Scheme
Plug 'sts10/vim-pink-moon'
Plug 'rainglow/vim'

" 括弧補完
Plug 'cohama/lexima.vim'

call plug#end()

set termguicolors
set background=dark
"colorscheme spearmint-contrast
"colorscheme boxuk
colorscheme laracasts-contrast
"colorscheme pink-moon

