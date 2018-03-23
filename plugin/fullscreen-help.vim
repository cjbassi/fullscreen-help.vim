if exists('g:loaded_fullscreen_help')
  finish
endif
let g:loaded_fullscreen_help = 1

function! FullScreenHelp(helpfile)
	enew
	set bt=help
	execute "help " . a:helpfile
	set buflisted
endfunction

command! -nargs=1 -complete=help Help call FullScreenHelp(<f-args>)

" https://vi.stackexchange.com/questions/6800/cabbr-definitions-disturb-searching-in-vim
cabbr <expr> h getcmdtype() == ':' ? 'Help' : 'h'
cabbr <expr> help getcmdtype() == ':' ? 'Help' : 'help'
