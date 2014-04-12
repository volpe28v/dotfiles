filetype plugin indent on

" 行番号表示
set number
" シンタックスハイライトを利用
syntax on
" 改行時に自動インデントを行う
set autoindent
" vi互換モードを利用しない
set nocompatible
" 不可視文字を表示
"set list
"set listchars=eol:-
" 検索時に大文字/小文字を判別する
set smartcase

" <Tab>周りの設定
set smarttab
set tabstop=2
" <Tab>を展開する
set expandtab
set shiftwidth=2

" 末尾空白文字を判別する
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

if has("syntax")
" 全角スペースをハイライト
  syntax on
  function! ActivateInvisibleIndicator()
    syntax match InvisibleJISX0208Space "　" display containedin=ALL
    highlight InvisibleJISX0208Space term=underline ctermbg=Red guibg=Red
  endf
  augroup invisible
    autocmd! invisible
    autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
  augroup END
endif

"補完ポップアップ"
hi Pmenu ctermbg=8
hi PmenuSel ctermbg=4
hi PmenuSbar ctermbg=2
hi PmenuThumb ctermfg=3

" Backspace で文字を削除できるようにする
set backspace=indent,eol,start

" highlight for watchr
autocmd BufNewFile,BufRead *.watchr
      \ set filetype=ruby

" NeoBundle
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/dotfiles/.vim/bundle/'))
endif

" インストールしたいプラグイン
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'The-NERD-tree'
NeoBundle 'The-NERD-Commenter'
NeoBundle 'Gist.vim'

filetype plugin indent on
