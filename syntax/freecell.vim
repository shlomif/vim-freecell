" Vim syntax file
" Language: CardGames
" Maintainer: Shlomi Fish <shlomif@cpan.org>
" Home: https://fc-solve.shlomifish.org/
"
" Author: Shlomi Fish
" Filenames: *.fc.board
" Last Change: Thu Jul  3 00:59:42 IDT 2008
" Version: 0.0.1

" Thanks to Andy Wokula for his help on:
" https://groups.google.com/group/vim_use/browse_thread/thread/6c0906617d67864e/a21938c5df1d15cb?show_docid=a21938c5df1d15cb

" Quit if syntax file is already loaded
if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax sync minlines=50

" syntax match screenplayTextComment /<!--\_.\{-0,}-->/
" syntax match screenplayTextDescription /^ *\[\_.\{-0,}\]/
syntax match cardRed /\<[A2-9TJQK][DH]\>/
syntax match cardBlack /\<[A2-9TJQK][CS]\>/

hi def cardRed gui=bold guifg=Red
hi def cardBlack      term=bold cterm=bold gui=bold
