syntax on "自动语法高亮

set number "显示行号
set cursorline "突出显示当前行
"ctermbg 背景色  ctermfg 前景色 guibg 下划线背景色  guifg 下划线前景色
highlight Cursorline guibg = lightblue guifg = lightblue cterm = NONE ctermbg = lightblue ctermfg = NONE
set cursorcolumn "突出显示当前列
hi CursorColumn cterm=NONE ctermbg=lightblue ctermfg=NONE guibg=NONE guifg=NONE
set ruler "打开状态栏标尺
set tabstop=4 "tab设置为4
set expandtab "将tab转换为空格

"花括号配置
inoremap { {}<ESC>i
inoremap {<CR> {<CR>}<ESC>O
"自动补全
:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i

set autoindent "自动缩进
set cindent
"统一缩进为4
set softtabstop=4
set shiftwidth=4
set expandtab "用空格替换制表符
set smarttab  "在行和段开始处使用制表符

"设置折叠
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=100 " 设置折叠层数为100，默认不折叠
set foldclose=all " 设置为自动关闭折叠 
nnoremap <space><space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠

