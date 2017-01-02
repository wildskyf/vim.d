" ========================================
" =============== General ================
" ========================================

syntax on						" syntax highlight

set autoindent					" Use autoindenting
set autoread					" Automatically re-read the file if it has changed
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set background=dark
set confirm						" if confict, ask me
set cursorline					" display current cursor (line)
set cursorcolumn				" display current cursor (column)
set display+=lastline			" Always show the last line
set encoding=utf-8				" UTF-8 bj4
set fo+=mB						" for asia text
set hlsearch					" hightlight search result
set history=999					" number of history of command
set hidden						" make buffer could hold a modified file
set incsearch					" display search result realtime
set ignorecase smartcase		" case-insensitive
set laststatus=2				" open status bar
set linebreak					" don't split a vocabulary
" set mouse=a					" enable the mouse
set number						" display line number
set ruler						" right-bottom detail
set scrolloff=2					" scroll with extra line
set showcmd						" Show the current command at the bottom
set showmatch					" highlight matched brackets
set showtabline=2               " always show tabline
set shortmess=I					" Don't show the startup message
set smartindent					" Use smarter defaults
set smarttab					" Use smarter defaults
set splitbelow
set splitright
set title						" change the terminal's title
set textwidth=78
set t_Co=256
set visualbell					" don't beep
set noerrorbells				" don't beep
set undolevels=1000				" use many muchos levels of undo
set wildmenu					" Enhanced mode for command-line completion
set whichwrap=b,s,<,>,[,]		" back to the last line
set wrap						" new line when too many char


" fold
set foldmethod=syntax
set foldlevel=1 " 預設全部關閉
set foldnestmax=3


" Tab
set autoindent
set copyindent
set shiftwidth=4
set smartindent
set tabstop=4

set wildignore=*.o,*.obj,*~,*.pyc
set wildignore+=.env
set wildignore+=.env[0-9]+
set wildignore+=.git,.gitkeep
set wildignore+=.tmp
set wildignore+=.coverage
set wildignore+=*DS_Store*
set wildignore+=.sass-cache/
set wildignore+=__pycache__/
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=.tox/**
set wildignore+=.idea/**
set wildignore+=*.egg,*.egg-info
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app

