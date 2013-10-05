" 文字エンコーディング設定
scriptencoding utf-8
" vimの独自拡張機能を利用する
set nocompatible

if has('vim_starting')
  filetype plugin off
  filetype indent off
  execute 'set runtimepath+=' . expand('~/.vim/bundle/neobundle.vim')
"  autocmd VimEnter * execute 'NERDTree ./'
endif
call neobundle#rc(expand('~/.vim/bundle'))

" Jellybeansカラースキーマ
NeoBundle 'nanotech/jellybeans.vim'
" 再帰的にファイルを列挙し、絞り込んで開くプラグイン
NeoBundle 'git://github.com/kien/ctrlp.vim.git'
" プラグインパッケージマネージャ
NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
" ファイルエクスプローラー 
NeoBundle 'git://github.com/scrooloose/nerdtree.git'
" 保存時にシンタックスチェックを自動で行なう
NeoBundle 'git://github.com/scrooloose/syntastic.git'

" 色付けをon
" syntax on
filetype plugin on
filetype indent on

" カラースキーマ
colorscheme jellybeans

" バッファを保存しなくても他のバッファを表示できるようになる
set hidden
" コマンドライン補完を便利に
set wildmenu
" タイプ途中のコマンドを画面最下行に表示
set showcmd
" ステータスラインに現在のモードを表示
"set showmode
" 検索語を強調表示
set hlsearch
" オートインデント、改行、インサートモード開始直後にバックスペースで削除できるように
set backspace=indent,eol,start
" オートインデント
set autoindent
" 画面最下行にルーラーを表示
set ruler
" SSH クライアントの設定によってはマウスが使える（putty だと最初からいける）
set mouse=a

" タブ文字の代わりにスペース2個を使う
set shiftwidth=2
set softtabstop=2
set expandtab
" タブ文字、行末など不可視文字を表示
"set list
" 行番号を表示
set number

" キーバインディング
" vimrc編集用キーバインディング
nnoremap <Space>, :<C-u>edit $MYVIMRC<Enter>
" 論理行移動と表示行移動を入れ替え
noremap j  gj
noremap k  gk
noremap gj j
noremap gk k
" NERDTree用
nnoremap <Space>n :<C-u>NERDTree<Enter>
" 検索結果表示後のハイライトを消す
nnoremap <Esc><Esc> :<C-u>noh<Enter>






