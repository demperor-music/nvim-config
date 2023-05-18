vim.cmd([[
	call plug#begin()

	Plug 'rust-lang/rust.vim'
	syntax enable
	filetype plugin indent on

	Plug 'lukas-reineke/indent-blankline.nvim'
	"Plug 'ntk148v/vim-horizon'
	Plug 'lunarvim/horizon.nvim'
	Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'nvim-lualine/lualine.nvim'

	Plug 'windwp/nvim-autopairs'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
	Plug 'romgrk/barbar.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-telescope/telescope-file-browser.nvim'
	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

	Plug 'williamboman/nvim-lsp-installer'
	Plug 'neovim/nvim-lspconfig'
	Plug 'lewis6991/impatient.nvim'
	Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
	Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
	Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

	if has('nvim')
	  function! UpdateRemotePlugins(...)
	    " Needed to refresh runtime files
	    let &rtp=&rtp
	    UpdateRemotePlugins
	  endfunction

	  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
	else
	  Plug 'gelguy/wilder.nvim'

	  " To use Python remote plugin features in Vim, can be skipped
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif

	call plug#end()
	
	if exists("g:neovide")
	   " let g:neovide_fullscreen=v:true
	   let g:neovide_transparency=0.8
	   let g:transparency = 0.8
	   let g:neovide_floating_blur_amount_x = 2.0
           let g:neovide_floating_blur_amount_y = 2.0
	   let g:neovide_cursor_vfx_mode = "ripple"
	endif

	set nu
	set mouse +=a
	function! SetUsLayout()
	    silent !setxkbmap us
	endfunction
	autocmd VimEnter * call SetUsLayout()
]])

require('loadconfigs')

_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_modpaths',
  }
}
