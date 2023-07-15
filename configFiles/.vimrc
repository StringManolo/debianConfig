" Change colorscheme
colorscheme habamax

" Add small horizontal padding
set foldcolumn=1
set numberwidth=1
set colorcolumn=87

"Enable syntax highlighting
syntax enable

" Enable filetype detection
filetype plugin indent on

" Enable line numbers
" set number

" Use spaces instead of tabs
set expandtab
set tabstop=2
set shiftwidth=2

" Enable cursor line highlighting
set cursorline

" Customize CursorLine highlight
highlight CursorLine cterm=NONE ctermbg=Black gui=NONE guibg=Black

" Customize CursorLineNr highlight
highlight CursorLineNr cterm=NONE ctermfg=NONE ctermbg=Black gui=NONE guifg=NONE guibg=Black

" Highlight search results
set hlsearch

" Show matching parentheses
set showmatch

" Enable incremental search
set incsearch

" Enable smart case for searching
set smartcase

" Enable mouse support
set mouse=a

" Enable clipboard integration
set clipboard=unnamedplus

" Disable backup and swap files
set nobackup
set noswapfile

" Enable autoindentation
set autoindent

" Enable smart indentation
set smartindent

" Enable auto-pairing of brackets, quotes, etc.
" inoremap ( ()<Left>
" inoremap [ []<Left>
inoremap { {}<Left>
" inoremap ' ''<Left>
" inoremap " ""<Left>
" inoremap ` ``<Left>

" Map <Tab> to trigger autocompletion
inoremap <Tab> <C-n>

" Map <Shift+Tab> to go back in autocompletion
inoremap <S-Tab> <C-p>

" Enable file explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

" Enable status line
set laststatus=2

" Set colorscheme (uncomment the line below and choose a colorscheme)
" colorscheme <name>

" Set default file encoding
set encoding=utf-8

" Set default file format (unix)
set fileformat=unix

" Set default file type based on the file extension
filetype indent on
filetype plugin on
filetype plugin indent on

" Leader key for custom shortcuts
let mapleader = ","

" TypeScript type highlighting
let g:typescript_highlight_builtins = 1
let g:typescript_enable_domhtmlcss = 1


" Comment HTML
nnoremap <leader>ch I<!-- <Esc>A --><Esc>O<End><Del><Esc>
" Remove Comment
nnoremap <leader>rh :s/<!-- \(.*\) -->/\1<CR>


" Comment CSS
nnoremap <leader>cc I/* <Esc>A */<Esc>O<End><Del><Esc>
" Remove Comment
nnoremap <leader>rc :s/\/\* \(.*\) \*\//\1<CR>


" Vim-Plug config
call plug#begin('~/.vim/plugged')

" Add emmet plug
Plug 'mattn/emmet-vim'

" End Vim-Plug config
call plug#end()

" Use triple comma to expand emmet sintax
let g:user_emmet_leader_key=',,'
au FileType html,css,js,ts,javascriptreact,typescriptreact imap <expr> ,, <SID>emmetExpandAbbr()
function! s:emmetExpandAbbr()
    if getline('.')[col('.') - 3] == ','
        return "\<C-y>,"
    else
        return ",,"
    endif
endfunction



" Vim-Plug config
 call plug#begin('~/.vim/plugged')

" Add Codeium plugin
Plug 'Exafunction/codeium.vim'
" :Codeium Auth

" End Vim-Plug config
 call plug#end()
