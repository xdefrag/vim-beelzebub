" Init {{{
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="beelzebub"
" }}}
" Colors {{{
let s:bg = "233"
let s:fg = "250"
let s:mute = "60"

if &background == "light"
  let s:bg = "250"
  let s:fg = "233"
endif

if exists("g:beelzebub_bg")
  let s:bg = g:beelzebub_bg
endif

if exists("g:beelzebub_fg")
  let s:bg = g:beelzebub_fg
endif

if exists("g:beelzebub_muted")
  let s:mute = g:beelzebub_muted
endif
" }}}
" Groups {{{
let s:normals = []
let s:lamrons = []
let s:muted = []
let s:clear = []
" }}}
" Syntax {{{
let s:normals = s:normals + [
      \ "Identifier",
      \ "Function",
      \ "Statement",
      \ "Conditional",
      \ "Repeat",
      \ "Constant",
      \ "Label",
      \ "Operator",
      \ "Keyword",
      \ "Exception",
      \ "PreProc",
      \ "Include",
      \ "Define",
      \ "Macro",
      \ "PreCondict",
      \ "Type",
      \ "StorageClass",
      \ "Structure",
      \ "Typedef",
      \ "Special",
      \ "SpecialChar",
      \ "Tag",
      \ "Delimiter",
      \ "Debug",
      \ "Ignore",
      \ ]
let s:muted = s:muted + [
      \ "Comment",
      \ "Todo",
      \ "Error",
      \ ]
let s:clear = s:clear + [
      \ "String",
      \ "Character",
      \ "Number",
      \ "Boolean",
      \ "Float",
      \ "SpecialComment",
      \ "Underlined",
      \ ]
" }}}
" Interface {{{
let s:normals = s:normals + [
      \ "Normal",
      \ "Title",
      \ "ColorColumn",
      \ "CursorLineNr",
      \ "CursorColumn",
      \ "PmenuSel",
      \ "PmenuSbar",
      \ "PmenuThumb",
      \ "DiffAdd",
      \ "DiffChange",
      \ "DiffText",
      \ ]
let s:lamrons = s:lamrons + [
      \ "Cursor",
      \ "Search",
      \ "MatchParen",
      \ "Visual",
      \ ]
let s:muted = s:muted + [
      \ "NonText",
      \ "Folded",
      \ "FoldColumn",
      \ "LineNr",
      \ "SpecialKey",
      \ "Directory",
      \ "StatusLine",
      \ "WildMenu",
      \ "Pmenu",
      \ "SignColumn",
      \ "VirtSplit",
      \ "MoreMsg",
      \ "Question",
      \ "WarningMsg",
      \ "DiffDelete",
      \ "TabLineFill",
      \ "Conceal",
      \ "ErrorMsg",
      \ "NvimInternalError",
      \ "ALEErrorSign",
      \ "ALEWarningSign",
      \ "GitGutterAdd",
      \ "GitGutterChange",
      \ "GitGutterDelete",
      \ "GitGutterChangeDelete",
      \ "SpellBad",
      \ "SpellCap",
      \ "SpellLocal",
      \ "SpellRare",
      \ ]
let s:clear = s:clear + [
      \ "CursorLine",
      \ "VertSplit",
      \ "TabLine",
      \ "ModeMsg",
      \ "ALESignColumnWithoutErrors",
      \ ]
" }}}
" Paint it all {{{
for group in s:normals
  exec("hi " . group . " cterm=none ctermbg=" . s:bg . " ctermfg=" . s:fg)
endfor

for group in s:lamrons
  exec("hi " . group . " cterm=none ctermbg=" . s:fg . " ctermfg=" . s:bg)
endfor

for group in s:muted
  exec("hi " . group . " cterm=none ctermbg=" . s:bg . " ctermfg=" . s:mute)
endfor

for group in s:clear
  exec("hi " . group . " cterm=none ctermbg=none ctermfg=none")
endfor
" }}}
" Options {{{
if exists("g:beelzebub_syntax_bold")
  exec("hi Function cterm=bold")
  exec("hi Statement cterm=bold")
  exec("hi Conditional cterm=bold")
  exec("hi Keyword cterm=bold")
endif

if exists("g:beelzebub_syntax_mute")
  exec("hi Function ctermfg=" . s:mute)
  exec("hi Statement ctermfg=" . s:mute)
  exec("hi Conditional ctermfg=" . s:mute)
  exec("hi Keyword ctermfg=" . s:mute)
endif
" }}}
" vim:foldmethod=marker:foldlevel=0
