
syntax on
set nu
set nobk
set noswapfile
set incsearch
set hlsearch
set ic
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

colorscheme desert


" auto jump last position
if has("autocmd") 
  
   " Enable file type detection. 
   " Use the default filetype settings, so that mail gets 'tw' set to 72, 
   " 'cindent' is on in C files, etc. 
   " Also load indent files, to automatically do language-dependent indenting. 
   filetype plugin indent on 
  
   " Put these in an autocmd group, so that we can delete them easily. 
   augroup vimrcEx 
   au! 
  
   " For all text files set 'textwidth' to 78 characters. 
   autocmd FileType text setlocal textwidth=78 
  
   " When editing a file, always jump to the last known cursor position. 
   " Don't do it when the position is invalid or when inside an event handler 
   " (happens when dropping a file on gvim). 
   autocmd BufReadPost * 
     \ if line("'\"") > 0 && line("'\"") <= line("$") | 
     \   exe "normal! g`\"" | 
     \ endif 
  
   augroup END 
  
else 
  
   set autoindent                " always set autoindenting on 
  
endif " has("autocmd")
