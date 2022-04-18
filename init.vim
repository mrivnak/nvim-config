syntax enable
set ts=4 sw=4
set number
set clipboard+=unnamed " Use system clipboard

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

set visualbell " Disable beeping
set belloff=all " ^
set scrolloff=5 " Scroll Screen when cursor is 5 lines away from the edge

" Remember last position
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

set guifont=UbuntuMono\ Nerd\ Font:12