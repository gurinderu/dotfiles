let pkgs = import <nixpkgs> { };
in
{
  enable = true;
  viAlias = true;
  vimAlias = true;
  vimdiffAlias = true;
  plugins = with pkgs.vimPlugins; [
    telescope-nvim
    nvim-metals
    {
      plugin = nerdtree;
      config = ''
        	    autocmd vimenter * NERDTree
                    autocmd StdinReadPre * let s:std_in=1
                    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
                    autocmd StdinReadPre * let s:std_in=1
                    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
                    autocmd StdinReadPre * let s:std_in=1
                    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
                    autocmd VimEnter * wincmd p
                    let g:NERDTreeDirArrowExpandable = '▸'
                    let g:NERDTreeDirArrowCollapsible = '▾'

                    " NERDTress File highlighting
                    function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
                     exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
                     exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
                    endfunction

                    call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
                    call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
                    call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
                    call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
                    call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
                    call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
                    call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
                    call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
                    call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
                    call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
                    call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
                    call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
                    call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

                    let g:NERDTreeShowIgnoredStatus = 1 
                    let g:nerdtree_tabs_open_on_console_startup=1
                    map <Leader>n <plug>NERDTreeTabsToggle<CR>

                    syntax on
                    filetype plugin indent on
                    	  '';
    }
    vim-nerdtree-tabs
    {
      plugin = vim-airline;
      config = ''
        	  let g:airline#extensions#tabline#enabled = 1
        	  '';
    }
    vim-airline-clock
    vim-airline-themes
    {
      plugin = NeoSolarized;
      config = ''
        set termguicolors
        colorscheme NeoSolarized
        set background=dark
        let g:neosolarized_contrast = "normal"
        let g:neosolarized_visibility = "normal"
        let g:neosolarized_vertSplitBgTrans = 1
        let g:neosolarized_bold = 1
        let g:neosolarized_underline = 1
        let g:neosolarized_italic = 0

        set t_8f=^[[38;2;%lu;%lu;%lum
        set t_8b=^[[48;2;%lu;%lu;%lum
        set number
        set clipboard=unnamed
        	  '';
    }
  ];
}
 
