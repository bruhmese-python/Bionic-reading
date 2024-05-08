version 6.0
let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
noremap! <silent> <Plug>luasnip-expand-repeat <Cmd>lua require'luasnip'.expand_repeat()
noremap! <silent> <Plug>luasnip-delete-check <Cmd>lua require'luasnip'.unlink_current_if_deleted()
inoremap <silent> <Plug>luasnip-jump-prev <Cmd>lua require'luasnip'.jump(-1)
inoremap <silent> <Plug>luasnip-jump-next <Cmd>lua require'luasnip'.jump(1)
inoremap <silent> <Plug>luasnip-prev-choice <Cmd>lua require'luasnip'.change_choice(-1)
inoremap <silent> <Plug>luasnip-next-choice <Cmd>lua require'luasnip'.change_choice(1)
inoremap <silent> <Plug>luasnip-expand-snippet <Cmd>lua require'luasnip'.expand()
inoremap <silent> <Plug>luasnip-expand-or-jump <Cmd>lua require'luasnip'.expand_or_jump()
inoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
cnoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <C-W> u
tnoremap  <Cmd>wincmd h
xnoremap 	 >gv
tnoremap <NL> <Cmd>wincmd j
tnoremap  <Cmd>wincmd k
tnoremap  <Cmd>wincmd l
nnoremap  <Cmd>q!
nnoremap  <Cmd>w!
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
xnoremap <silent>  Þ <Nop>
xnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "v", auto = true})
nnoremap <silent>  lÞ <Nop>
nnoremap <silent>  uÞ <Nop>
nnoremap <silent>  fÞ <Nop>
nnoremap <silent>  pÞ <Nop>
nnoremap <silent>  gÞ <Nop>
nnoremap <silent>  bsÞ <Nop>
nnoremap <silent>  bÞ <Nop>
nnoremap <silent>  SÞ <Nop>
nnoremap <silent>  tÞ <Nop>
nnoremap <silent>  Þ <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
vnoremap  / <Cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())
nnoremap  pa <Cmd>AstroUpdatePackages
nnoremap  w <Cmd>w
nnoremap  tv <Cmd>ToggleTerm size=80 direction=vertical
nnoremap  pv <Cmd>AstroVersion
nnoremap  Sl <Cmd>SessionManager! load_last_session
nnoremap  th <Cmd>ToggleTerm size=10 direction=horizontal
nnoremap  tf <Cmd>ToggleTerm direction=float
nnoremap  Ss <Cmd>SessionManager! save_current_session
nnoremap  Sd <Cmd>SessionManager! delete_session
nnoremap  Sf <Cmd>SessionManager! load_session
nnoremap  S. <Cmd>SessionManager! load_current_dir_session
nnoremap  k dd2k0p
nnoremap  pm <Cmd>Mason
nnoremap  j dd$p
nnoremap  pM <Cmd>MasonUpdateAll
nnoremap  pA <Cmd>AstroUpdate
nnoremap  pl <Cmd>AstroChangelog
nnoremap  q <Cmd>confirm q
nnoremap  n <Cmd>enew
nnoremap  e <Cmd>Neotree toggle
nnoremap  uC <Cmd>ColorizerToggle
nnoremap <silent> !iÞ <Nop>
nnoremap <silent> !aÞ <Nop>
nnoremap <silent> !Þ <Nop>
nnoremap <silent> ! <Cmd>lua require("which-key").show("!", {mode = "n", auto = true})
xnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "v", auto = true})
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
xnoremap # y?\V"
nnoremap & :&&
nnoremap <silent> ' <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})
xnoremap * y/\V"
nnoremap <silent> <iÞ <Nop>
nnoremap <silent> <aÞ <Nop>
nnoremap <silent> <Þ <Nop>
nnoremap <silent> < <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})
nnoremap <silent> >iÞ <Nop>
nnoremap <silent> >aÞ <Nop>
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
nnoremap <silent> @Þ <Nop>
nnoremap <silent> @ <Cmd>lua require("which-key").show("@", {mode = "n", auto = true})
nnoremap Y y$
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
nnoremap \ <Cmd>split
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
nnoremap <silent> ` <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})
xnoremap <silent> aÞ <Nop>
xnoremap <silent> a <Cmd>lua require("which-key").show("a", {mode = "v", auto = true})
nnoremap <silent> ciÞ <Nop>
nnoremap <silent> caÞ <Nop>
nnoremap <silent> cÞ <Nop>
nnoremap <silent> c <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})
nnoremap <silent> dÞ <Nop>
nnoremap <silent> d <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})
nnoremap <silent> diÞ <Nop>
nnoremap <silent> daÞ <Nop>
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
nnoremap <silent> gUiÞ <Nop>
nnoremap <silent> gUaÞ <Nop>
nnoremap <silent> gUÞ <Nop>
nnoremap <silent> guiÞ <Nop>
nnoremap <silent> guaÞ <Nop>
nnoremap <silent> guÞ <Nop>
nnoremap <silent> g~iÞ <Nop>
nnoremap <silent> g~aÞ <Nop>
nnoremap <silent> g~Þ <Nop>
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
xnoremap <silent> iÞ <Nop>
xnoremap <silent> i <Cmd>lua require("which-key").show("i", {mode = "v", auto = true})
nnoremap <expr> j v:count == 0 || mode(1)[0:1] == 'no' ? 'j' : 'gj'
nnoremap <expr> k v:count == 0 || mode(1)[0:1] == 'no' ? 'k' : 'gk'
nnoremap <silent> vÞ <Nop>
nnoremap <silent> v <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})
nnoremap <silent> viÞ <Nop>
nnoremap <silent> vaÞ <Nop>
nnoremap <silent> yÞ <Nop>
nnoremap <silent> y <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})
nnoremap <silent> yiÞ <Nop>
nnoremap <silent> yaÞ <Nop>
nnoremap <silent> zfiÞ <Nop>
nnoremap <silent> zfaÞ <Nop>
nnoremap <silent> zfÞ <Nop>
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
nnoremap | <Cmd>vsplit
snoremap <silent> <Plug>luasnip-jump-prev <Cmd>lua require'luasnip'.jump(-1)
snoremap <silent> <Plug>luasnip-jump-next <Cmd>lua require'luasnip'.jump(1)
snoremap <silent> <Plug>luasnip-prev-choice <Cmd>lua require'luasnip'.change_choice(-1)
snoremap <silent> <Plug>luasnip-next-choice <Cmd>lua require'luasnip'.change_choice(1)
snoremap <silent> <Plug>luasnip-expand-snippet <Cmd>lua require'luasnip'.expand()
snoremap <silent> <Plug>luasnip-expand-or-jump <Cmd>lua require'luasnip'.expand_or_jump()
noremap <silent> <Plug>luasnip-expand-repeat <Cmd>lua require'luasnip'.expand_repeat()
noremap <silent> <Plug>luasnip-delete-check <Cmd>lua require'luasnip'.unlink_current_if_deleted()
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))
nnoremap <silent> <C-W>Þ <Nop>
nnoremap <silent> <C-W> <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
tnoremap <C-L> <Cmd>wincmd l
tnoremap <C-K> <Cmd>wincmd k
tnoremap <C-J> <Cmd>wincmd j
tnoremap <C-'> <Cmd>ToggleTerm
tnoremap <C-H> <Cmd>wincmd h
tnoremap <F7> <Cmd>ToggleTerm
xnoremap <S-Tab> <gv
nnoremap <C-S> <Cmd>w!
nnoremap <C-'> <Cmd>ToggleTerm
nnoremap <F7> <Cmd>ToggleTerm
nnoremap <C-Q> <Cmd>q!
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start,nostop
set clipboard=unnamedplus
set cmdheight=0
set completeopt=menuone,noselect
set copyindent
set diffopt=internal,filler,closeoff,linematch:60
set expandtab
set fillchars=eob:\ 
set foldlevelstart=99
set helplang=en
set history=100
set nohlsearch
set ignorecase
set infercase
set laststatus=3
set noloadplugins
set mouse=a
set packpath=D:\\nvim-win64\\share\\nvim\\runtime
set preserveindent
set pumheight=10
set runtimepath=~\\AppData\\Local\\nvim,~\\AppData\\Local\\nvim-data\\lazy\\lazy.nvim,~/AppData/Local/nvim-data/lazy/better-escape.nvim,~\\AppData\\Local\\nvim-data\\lazy\\nvim-notify,~\\AppData\\Local\\nvim-data\\lazy\\telescope.nvim,~\\AppData\\Local\\nvim-data\\lazy\\bufdelete.nvim,~\\AppData\\Local\\nvim-data\\lazy\\nvim-autopairs,~\\AppData\\Local\\nvim-data\\lazy\\friendly-snippets,~\\AppData\\Local\\nvim-data\\lazy\\LuaSnip,~\\AppData\\Local\\nvim-data\\lazy\\cmp-nvim-lsp,~\\AppData\\Local\\nvim-data\\lazy\\cmp-path,~\\AppData\\Local\\nvim-data\\lazy\\cmp-buffer,~\\AppData\\Local\\nvim-data\\lazy\\cmp_luasnip,~\\AppData\\Local\\nvim-data\\lazy\\nvim-cmp,~\\AppData\\Local\\nvim-data\\lazy\\lspkind.nvim,~\\AppData\\Local\\nvim-data\\lazy\\nvim-web-devicons,~\\AppData\\Local\\nvim-data\\lazy\\nvim-colorizer.lua,~\\AppData\\Local\\nvim-data\\lazy\\promise-async,~\\AppData\\Local\\nvim-data\\lazy\\nvim-ufo,~\\AppData\\Local\\nvim-data\\lazy\\aerial.nvim,~\\AppData\\Local\\nvim-data\\lazy\\indent-blankline.nvim,~\\AppData\\Local\\nvim-data\\lazy\\guess-indent.nvim,~\\AppData\\Local\\nvim-data\\lazy\\nvim-ts-context-commentstring,~\\AppData\\Local\\nvim-data\\lazy\\nvim-ts-autotag,~\\AppData\\Local\\nvim-data\\lazy\\nvim-treesitter,~\\AppData\\Local\\nvim-data\\lazy\\mason-nvim-dap.nvim,~\\AppData\\Local\\nvim-data\\lazy\\nvim-lspconfig,~\\AppData\\Local\\nvim-data\\lazy\\mason-lspconfig.nvim,~\\AppData\\Local\\nvim-data\\lazy\\mason.nvim,~\\AppData\\Local\\nvim-data\\lazy\\mason-null-ls.nvim,~\\AppData\\Local\\nvim-data\\lazy\\null-ls.nvim,~\\AppData\\Local\\nvim-data\\lazy\\plenary.nvim,~\\AppData\\Local\\nvim-data\\lazy\\neovim-session-manager,~\\AppData\\Local\\nvim-data\\lazy\\which-key.nvim,~\\AppData\\Local\\nvim-data\\lazy\\alpha-nvim,~\\AppData\\Local\\nvim-data\\lazy\\heirline.nvim,~\\AppData\\Local\\nvim-data\\lazy\\astrotheme,D:\\nvim-win64\\share\\nvim\\runtime,D:\\nvim-win64\\lib\\nvim,~\\AppData\\Local\\nvim-data\\lazy\\readme,~\\AppData\\Local\\nvim-data\\lazy\\cmp-nvim-lsp\\after,~\\AppData\\Local\\nvim-data\\lazy\\cmp-path\\after,~\\AppData\\Local\\nvim-data\\lazy\\cmp-buffer\\after,~\\AppData\\Local\\nvim-data\\lazy\\cmp_luasnip\\after
set shiftwidth=2
set shortmess=aoO
set noshowmode
set showtabline=2
set smartcase
set smartindent
set splitbelow
set splitkeep=screen
set splitright
set statusline=%{%v:lua.require'heirline'.eval_statusline()%}
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.snap
set tabline=%{%v:lua.require'heirline'.eval_tabline()%}
set tabstop=2
set termguicolors
set timeoutlen=500
set undofile
set updatetime=300
set viewoptions=folds,cursor
set virtualedit=block
set wildignore=*.pyc
set window=50
set nowritebackup
" vim: set ft=vim :
