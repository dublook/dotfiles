set number
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz

set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅

" -------------------------------
" NeoBundle
" -------------------------------
if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

" 静的解析
NeoBundle 'scrooloose/syntastic'

" 自動で閉じる
NeoBundle 'tpope/vim-endwise'

" emmet, HTML input
NeoBundle 'mattn/emmet-vim'

" molokai
NeoBundle 'tomasr/molokai'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

call neobundle#end()

NeoBundleCheck

" --------------------------------
" 基本設定
" --------------------------------
" vim内部で使われる文字エンコーディングをutf-8に設定する
set encoding=utf-8

colorscheme molokai

" 想定される改行コードの指定する
set fileformats=unix,dos,mac

" ハイライトを有効化する
" syntax enable

" 挿入モードでTABを挿入するとき、代わりに適切な数の空白を使う
set expandtab

" 新しい行を開始したとき、新しい行のインデントを現在行と同じにする
" set autoindent

" ファイル形式の検出の有効化する
" ファイル形式別プラグインのロードを有効化する
" ファイル形式別インデントのロードを有効化する
" filetype plugin indent on
" 
" let g:user_emmet_mode = 'iv'
" let g:user_emmet_leader_key = '<C-Y>'
" let g:use_emmet_complete_tag = 1
" let g:user_emmet_settings = {
"       \ 'lang' : 'ja',
"       \ 'html' : {
"       \   'filters' : 'html',
"       \ },
"       \ 'css' : {
"       \   'filters' : 'fc',
"       \ },
"       \ 'php' : {
"       \   'extends' : 'html',
"       \   'filters' : 'html',
"       \ },
"       \}
" augroup EmmitVim
"   autocmd!
"   autocmd FileType * let g:user_emmet_settings.indentation = '               '[:&tabstop]
" augroup END
