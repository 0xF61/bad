" Minimalist - A Material Color Scheme Darker
"
" Author:       Diki Ananta <diki1aap@gmail.com>
" Repository:   https://github.com/dikiaap/minimalist
" Version:      1.6
" License:      MIT

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
set t_Co=256
let g:colors_name = "minimalist"

"""""""""""""""""""""""
" General
"""""""""""""""""""""""
hi ColorColumn      ctermfg=NONE    ctermbg=233     cterm=NONE
hi Cursor           ctermfg=234     ctermbg=255     cterm=NONE
hi CursorColumn     ctermfg=NONE    ctermbg=233     cterm=NONE
hi CursorLine       ctermfg=NONE    ctermbg=233     cterm=NONE
hi CursorLineNr     ctermfg=59      ctermbg=233     cterm=NONE
hi DiffAdd          ctermfg=255     ctermbg=64      cterm=bold
hi DiffChange       ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi DiffDelete       ctermfg=167     ctermbg=NONE    cterm=NONE
hi DiffText         ctermfg=255     ctermbg=24      cterm=bold
hi Directory        ctermfg=179     ctermbg=NONE    cterm=NONE
hi ErrorMsg         ctermfg=255     ctermbg=167     cterm=NONE
hi FoldColumn       ctermfg=117     ctermbg=239     cterm=NONE
hi Folded           ctermfg=242     ctermbg=234     cterm=NONE
hi IncSearch        ctermbg=112     ctermfg=240     cterm=NONE
hi LineNr           ctermfg=59      ctermbg=234     cterm=NONE
hi MatchParen       ctermfg=NONE    ctermbg=NONE    cterm=underline
hi MoreMsg          ctermfg=150     ctermbg=NONE    cterm=NONE
hi NonText          ctermfg=234     ctermbg=234     cterm=NONE
hi Normal           ctermfg=255     ctermbg=234     cterm=NONE
hi Pmenu            ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi PmenuSel         ctermfg=NONE    ctermbg=59      cterm=NONE
hi Question         ctermfg=150     ctermbg=NONE    cterm=NONE
hi Search           ctermfg=112     ctermbg=240     cterm=inverse,bold
hi SignColumn       ctermfg=NONE    ctermbg=237     cterm=NONE
hi StatusLine       ctermfg=255     ctermbg=239     cterm=bold
hi StatusLineNC     ctermfg=255     ctermbg=239     cterm=NONE
hi Title            ctermfg=255     ctermbg=NONE    cterm=NONE
hi Underlined       ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi VertSplit        ctermfg=239     ctermbg=239     cterm=NONE
hi Visual           ctermfg=NONE    ctermbg=236     cterm=NONE
hi WarningMsg       ctermfg=255     ctermbg=167     cterm=NONE
hi WildMenu         ctermfg=234     ctermbg=215     cterm=NONE

"""""""""""""""""""""""
" Syntax Highlighting
"""""""""""""""""""""""
hi Boolean          ctermfg=173     ctermbg=NONE    cterm=NONE
hi Character        ctermfg=140     ctermbg=NONE    cterm=NONE
hi Comment          ctermfg=154     ctermbg=NONE    cterm=NONE
hi Conditional      ctermfg=140     ctermbg=NONE    cterm=NONE
hi Constant         ctermfg=140     ctermbg=NONE    cterm=NONE
hi Define           ctermfg=140     ctermbg=NONE    cterm=NONE
hi Error            ctermfg=255     ctermbg=167     cterm=NONE
hi Float            ctermfg=140     ctermbg=NONE    cterm=NONE
hi Function         ctermfg=74      ctermbg=NONE    cterm=NONE
hi Identifier       ctermfg=255     ctermbg=NONE    cterm=NONE
hi Keyword          ctermfg=140     ctermbg=NONE    cterm=NONE
hi Label            ctermfg=186     ctermbg=NONE    cterm=NONE
hi Number           ctermfg=173     ctermbg=NONE    cterm=NONE
hi Operator         ctermfg=117     ctermbg=NONE    cterm=NONE
hi PreCondit        ctermfg=140     ctermbg=NONE    cterm=NONE
hi PreProc          ctermfg=140     ctermbg=NONE    cterm=NONE
hi Repeat           ctermfg=140     ctermbg=NONE    cterm=NONE
hi Special          ctermfg=117     ctermbg=NONE    cterm=NONE
hi SpecialComment   ctermfg=148     ctermbg=NONE    cterm=NONE
hi SpecialKey       ctermfg=59      ctermbg=232     cterm=NONE
hi SpellBad         ctermfg=255     ctermbg=167     cterm=NONE
hi SpellCap         ctermfg=255     ctermbg=74      cterm=NONE
hi SpellRare        ctermfg=255     ctermbg=140     cterm=NONE
hi SpellLocal       ctermfg=255     ctermbg=14      cterm=NONE
hi Statement        ctermfg=167     ctermbg=NONE    cterm=NONE
hi StorageClass     ctermfg=215     ctermbg=NONE    cterm=NONE
hi String           ctermfg=150     ctermbg=NONE    cterm=NONE
hi Structure        ctermfg=215     ctermbg=NONE    cterm=NONE
hi Tag              ctermfg=140     ctermbg=NONE    cterm=NONE
hi Todo             ctermfg=74      ctermbg=234     cterm=inverse
hi Type             ctermfg=140     ctermbg=NONE    cterm=NONE
