--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl
local palette = require 'lua.lush_theme.palette' -- TODO(delay): fix import.

local surface00 = hsl(palette.chroma.surface00)
local surface0 = hsl(palette.chroma.surface0)
local surface1 = hsl(palette.chroma.surface1)
local surface2 = hsl(palette.chroma.surface2)

local onSurface00 = hsl(palette.chroma.onSurface00)
local onSurface0 = hsl(palette.chroma.onSurface0)
local onSurface1 = hsl(palette.chroma.onSurface1)
local onSurface2 = hsl(palette.chroma.onSurface2)
local onSurface3 = hsl(palette.chroma.onSurface3)
local onSurface4 = hsl(palette.chroma.onSurface4)

local highlight = hsl(palette.chroma.highlight)
local onHighlight = hsl(palette.chroma.onHighlight)
local blueOnSurface = hsl(palette.chroma.blueOnSurface)
local altSkyBlueOnSurface = hsl(palette.chroma.altSkyBlueOnSurface)
local skyBlueOnSurface = hsl(palette.chroma.skyBlueOnSurface)
local cyanOnSurface = hsl(palette.chroma.cyanOnSurface)
local tealOnSurface = hsl(palette.chroma.tealOnSurface)
local green0 = hsl(palette.chroma.green0)
local green1 = hsl(palette.chroma.green1)
local teal = hsl(palette.chroma.teal)
local orange0 = hsl(palette.chroma.orange0)
local orange1 = hsl(palette.chroma.orange1)
local orange2 = hsl(palette.chroma.orange2)
local yellow0 = hsl(palette.chroma.yellow0)
local yellow1 = hsl(palette.chroma.yellow1)
local red0 = hsl(palette.chroma.red0)
local red1 = hsl(palette.chroma.red1)
local red2 = hsl(palette.chroma.red2)
local purpleOnSurface = hsl(palette.chroma.purpleOnSurface)
local lavenderOnSurface = hsl(palette.chroma.lavenderOnSurface)
local altLavenderOnSurface = hsl(palette.chroma.altLavenderOnSurface)

local blueSurface = hsl(palette.surfaces.blueSurface)
local onBlueSurface = hsl(palette.surfaces.onBlueSurface)
local greenSurface = hsl(palette.surfaces.greenSurface)
local onGreenSurface = hsl(palette.surfaces.onGreenSurface)
local yellowSurface = hsl(palette.surfaces.yellowSurface)
local onYellowSurface = hsl(palette.surfaces.onYellowSurface)
local redSurface = hsl(palette.surfaces.redSurface)
local onRedSurface = hsl(palette.surfaces.onRedSurface)
local purpleSurface = hsl(palette.surfaces.purpleSurface)
local onPurpleSurface = hsl(palette.surfaces.onPurpleSurface)

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn        { fg = nil, bg = surface1 }, -- Columns set with 'colorcolumn'
    Conceal            { fg = onSurface1 }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor             { fg = onSurface3 }, -- Character under the cursor
    Border             { fg = onSurface4 },
    FloatBorder        { Border },
    FloatShadow        { bg = surface0 },
    FloatShadowThrough { bg = surface0 },
    NonText            { fg = onSurface4 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal             { fg = onSurface0, bg = surface0 }, -- Normal text
    NormalFloat        { Normal }, -- Normal text in floating windows.
    NormalNC           { Normal }, -- normal text in non-current windows
    NormalSB           { Normal }, -- normal text in non-current windows
    lCursor            { Cursor }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM           { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn       { fg = nil, bg = surface1 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine         { fg = nil, bg = surface1 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    File               { fg = onSurface0 }, -- Directory names (and other special names in listings)
    Directory          { fg = skyBlueOnSurface }, -- Directory names (and other special names in listings)
    DiffAdd            { bg = greenSurface }, -- Diff mode: Added line |diff.txt|
    DiffChange         { bg = yellowSurface }, -- Diff mode: Changed line |diff.txt|
    DiffDelete         { bg = redSurface }, -- Diff mode: Deleted line |diff.txt|
    DiffText           { fg = onSurface1 }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer        { NonText }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    VertSplit          { Border }, -- Column separating vertically split windows
    Folded             { fg = onSurface2, bg = surface1, gui = "italic" }, -- Line used for closed folds
    FoldColumn         { fg = onSurface4 }, -- 'foldcolumn'
    SignColumn         { fg = onSurface1, bg = surface0 }, -- Column where |signs| are displayed
    SignColumnSB       { SignColumn }, -- Column where |signs| are displayed
    Search             { fg = onYellowSurface, bg = yellowSurface, gui = "bold" }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    IncSearch          { Search }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute         { fg = blueOnSurface, bg = surface1, gui = "italic" }, -- |:substitute| replacement text highlighting
    LineNr             { fg = onSurface4 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr       { fg = onSurface2 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen         { fg = onSurface0, gui = "bold" }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg            { fg = onSurface0, gui = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea            { fg = onSurface0 }, -- Area for messages and cmdline
    -- MsgSeparat or { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg            { fg = blueOnSurface }, -- |more-prompt|
    Pmenu              { fg = onSurface0, bg = surface1 }, -- Popup menu: Normal item.
    PmenuSel           { fg = nil, bg = surface1 }, -- Popup menu: Selected item.
    PmenuSbar          { fg = nil, bg = surface2 }, -- Popup menu: Scrollbar.
    PmenuThumb         { fg = onSurface3 }, -- Popup menu: Thumb of the scrollbar.
    Question           { fg = green1 }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine       { fg = nil, bg = surface1, gui = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey         { fg = onSurface1, bg = surface0 }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad           { gui = "undercurl", sp = red0 }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap           { gui = "undercurl", sp = yellow0 }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal         { gui = "undercurl", sp = onSurface1 }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare          { gui = "undercurl", sp = onSurface2 }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine         { fg = onSurface0, bg = surface00 }, -- Status line of current window
    StatusLineNC       { StatusLine, fg = onSurface1 }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine            { fg = onSurface2, bg = surface0 }, -- Tab pages line, not active tab page label
    TabLineFill        { bg = surface00 }, -- Tab pages line, where there are no labels
    TabLineSel         { fg = onSurface0, bg = surface0, gui = "bold" }, -- Tab pages line, active tab page label
    Title              { fg = onSurface0, gui = "bold" }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual             { fg = nil, bg = surface2 }, -- Visual mode selection
    VisualNOS          { Visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg         { fg = yellow0 }, -- Warning messages
    ErrorMsg           { fg = red0 }, -- Warning messages
    Whitespace         { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu           { fg = nil, bg = surface1 }, -- Current match in 'wildmenu' completion

    Todo           { fg = onBlueSurface, bg = blueSurface, gui = "italic" }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Success        { fg = green0 },
    Warning        { fg = yellow0 },
    Error          { fg = red0 },

    -- Healthcheck.
    healthSuccess { Success },
    healthWarning { Warning },
    healthError   { Error },

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    FuzzyMatch     { fg = orange1 },
    Punctuation    { fg = onSurface1 },
    Comment        { fg = onSurface3 }, -- Any comment

    Constant       { fg = orange1 }, -- (*) Any constant
    String         { fg = teal }, --   A string constant: "this is a string"
    Character      { fg = orange1 }, --   A character constant: 'c', '\n'
    Number         { fg = skyBlueOnSurface }, --   A number constant: 234, 0xff
    Boolean        { fg = red1 }, --   A boolean constant: TRUE, false
    Float          { fg = red0 }, --   A floating point constant: 2.3e10
    URI            { fg = cyanOnSurface, gui = "underline" },

    Identifier     { fg = skyBlueOnSurface }, -- (*) Any variable name
    Function       { fg = skyBlueOnSurface }, --   Function name (also: methods for classes)

    Statement      { fg = purpleOnSurface }, -- (*) Any statement
    Conditional    { Statement }, --   if, then, else, endif, switch, etc.
    Repeat         { Statement }, --   for, do, while, etc.
    Label          { Statement }, --   case, default, etc.
    Operator       { fg = onSurface1 }, --   "sizeof", "+", "*", etc.
    Keyword        { fg = purpleOnSurface }, --   any other keyword
    Exception      { Keyword }, --   try, catch, throw

    PreProc        { fg = orange2 }, -- (*) Generic Preprocessor
    Include        { fg = cyanOnSurface }, --   Preprocessor #include
    Define         { PreProc }, --   Preprocessor #define
    Macro          { fg = cyanOnSurface }, --   Same as Define
    PreCondit      { fg = cyanOnSurface }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = yellow0 }, -- (*) int, long, char, etc.
    StorageClass   { Type }, --   static, register, volatile, etc.
    Structure      { Type }, --   struct, union, enum, etc.
    Typedef        { Type }, --   A typedef

    Special        { fg = red0 }, -- (*) Any special symbol
    SpecialChar    { fg = skyBlueOnSurface }, --   Special character in a constant
    Tag            { Special }, --   You can use CTRL-] on this
    Delimiter      { fg = onSurface1 }, --   Character that needs attention
    SpecialComment { Special }, --   Special things inside a comment (e.g. '\n')
    Debug          { Special }, --   Debugging statements

    Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    Bold           { gui = "bold" },
    Italic         { gui = "italic" },
    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore|.

    -- diff
    diffAdded     { fg = onGreenSurface, bg = greenSurface.mix(surface0, 50) },
    diffChanged   { fg = onYellowSurface, bg = yellowSurface.mix(surface0, 50) },
    diffRemoved   { fg = onRedSurface, bg = redSurface.mix(surface0, 50) },
    diffOldFile   { fg = onSurface1 },
    diffNewFile   { fg = skyBlueOnSurface },
    diffFile      { fg = purpleOnSurface },
    diffLine      { fg = onSurface1 },
    diffIndexLine { fg = purpleOnSurface },

    -- GitSigns
    GitSignsAdd    { fg = green0 }, -- diff mode: Added line |diff.txt|
    GitSignsChange { fg = yellow0 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete { fg = red0 }, -- diff mode: Deleted line |diff.txt|

    -- GitGutter
    GitGutterAdd    { GitSignsAdd }, -- diff mode: Added line |diff.txt|
    GitGutterChange { GitSignsChange }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete { GitSignsDelete }, -- diff mode: Deleted line |diff.txt|

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText            { bg = surface1 }, -- Used for highlighting "text" references
    LspReferenceRead            { bg = surface1 }, -- Used for highlighting "read" references
    LspReferenceWrite           { bg = surface1 }, -- Used for highlighting "write" references
    LspCodeLens                 { fg = onSurface4, gui = "italic" }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { }, -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
    LspParameter                { fg = orange2, gui = "italic" }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = red0 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = yellow0 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = onSurface1 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = onSurface2 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { fg = onRedSurface, bg = redSurface.mix(surface0, 50) }, -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { fg = onYellowSurface, bg = yellowSurface.mix(surface0, 50) }, -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { fg = onBlueSurface, bg = blueSurface }, -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint  { fg = onSurface1, bg = surface1 }, -- Used for "Hint" diagnostic virtual text.
    DiagnosticUnderlineError   { gui = "underdotted", sp = red0 }, -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { gui = "underdotted", sp = yellow0 }, -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { gui = "underdotted", sp = blueOnSurface }, -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { gui = "underdotted", sp = cyanOnSurface }, -- Used to underline "Hint" diagnostics.
    DiagnosticFloatingError    { DiagnosticError }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn     { DiagnosticWarn }, -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     { DiagnosticInfo }, -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     { DiagnosticHint }, -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticSignError        { DiagnosticError }, -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         { DiagnosticWarn }, -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         { DiagnosticInfo }, -- Used for "Info" signs in sign column.
    DiagnosticSignHint         { DiagnosticHint }, -- Used for "Hint" signs in sign column.

    LspDiagnosticsDefaultError           { DiagnosticError }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsDefaultWarning         { DiagnosticWarn }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsDefaultInformation     { DiagnosticInfo }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsDefaultHint            { DiagnosticHint }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsVirtualTextError       { DiagnosticVirtualTextError }, -- Used for "Error" diagnostic virtual text.
    LspDiagnosticsVirtualTextWarning     { DiagnosticVirtualTextWarn }, -- Used for "Warn" diagnostic virtual text.
    LspDiagnosticsVirtualTextInformation { DiagnosticVirtualTextInfo }, -- Used for "Info" diagnostic virtual text.
    LspDiagnosticsVirtualTextHint        { DiagnosticVirtualTextHint }, -- Used for "Hint" diagnostic virtual text.
    LspDiagnosticsUnderlineError         { DiagnosticUnderlineError }, -- Used to underline "Error" diagnostics.
    LspDiagnosticsUnderlineWarning       { DiagnosticUnderlineWarn }, -- Used to underline "Warn" diagnostics.
    LspDiagnosticsUnderlineInformation   { DiagnosticUnderlineInfo }, -- Used to underline "Info" diagnostics.
    LspDiagnosticsUnderlineHint          { DiagnosticUnderlineHint }, -- Used to underline "Hint" diagnostics.
    LspDiagnosticsFloatingError          { DiagnosticFloatingError }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    LspDiagnosticsFloatingWarning        { DiagnosticFloatingWarn }, -- Used to color "Warn" diagnostic messages in diagnostics float.
    LspDiagnosticsFloatingInfo           { DiagnosticFloatingInfo }, -- Used to color "Info" diagnostic messages in diagnostics float.
    LspDiagnosticsFloatingHint           { DiagnosticFloatingHint }, -- Used to color "Hint" diagnostic messages in diagnostics float.
    LspDiagnosticsSignError              { DiagnosticSignError }, -- Used for "Error" signs in sign column.
    LspDiagnosticsSignWarning            { DiagnosticSignWarn }, -- Used for "Warn" signs in sign column.
    LspDiagnosticsSignInformation        { DiagnosticSignInfo }, -- Used for "Info" signs in sign column.
    LspDiagnosticsSignHint               { DiagnosticSignHint }, -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups.

    sym"@text"                  { }, -- Comment
    sym"@text.strong"           { Bold },
    sym"@text.emphasis"         { Italic },
    sym"@text.underline"        { gui = "underline" },
    sym"@text.strike"           { gui = "strikethrough" },
    sym"@text.literal"          { }, -- literal or verbatim text (e.g., inline code)
    sym"@text.quote"            { fg = onSurface1, gui = "italic" }, -- Comment
    sym"@text.reference"        { Identifier }, -- Identifier
    sym"@text.title"            { Title }, -- Title
    sym"@text.uri"              { URI },
    sym"@text.math"             { sym"@text.literal" },
    sym"@text.environment"      { }, -- text environments of markup languages
    sym"@text.environment.name" { }, -- text indicating the type of an environment
    sym"@text.reference"        { }, -- text references, footnotes, citations, etc.
    sym"@text.todo"             { Todo }, -- Todo
    sym"@text.note"             { gui = "underline" },
    sym"@text.warning"          { Warning },
    sym"@text.danger"           { Error },
    sym"@text.diff.add"         { GitSignsAdd },
    sym"@text.diff.delete"      { GitSignsDelete },
    sym"@comment"               { Comment }, -- Comment
    sym"@error"                 { Error },
    sym"@none"                  { },
    sym"@punctuation"           { Delimiter }, -- Delimiter
    sym"@constant"              { Constant }, -- Constant
    sym"@constant.builtin"      { Special }, -- Special
    sym"@constant.macro"        { Define }, -- Define
    sym"@define"                { Define }, -- Define
    sym"@macro"                 { Macro }, -- Macro
    sym"@string"                { String }, -- String
    sym"@string.regex"          { String }, -- String
    sym"@string.escape"         { SpecialChar }, -- SpecialChar
    sym"@string.special"        { SpecialChar }, -- SpecialChar
    sym"@character"             { Character }, -- Character
    sym"@character.special"     { SpecialChar }, -- SpecialChar
    sym"@number"                { Number }, -- Number
    sym"@boolean"               { Boolean }, -- Boolean
    sym"@float"                 { Float }, -- Float
    sym"@function"              { Function }, -- Function
    sym"@function.builtin"      { fg = skyBlueOnSurface }, -- Special
    sym"@function.call"         { Function }, -- Macro
    sym"@function.macro"        { Macro }, -- Macro
    sym"@parameter"             { fg = onSurface1, gui = "italic" }, -- Identifier
    sym"@method"                { Function }, -- Function
    sym"@method.call"           { Function }, -- Function
    sym"@field"                 { Identifier }, -- Identifier
    sym"@property"              { Identifier }, -- Identifier
    sym"@constructor"           { }, -- Special
    sym"@conditional"           { Conditional }, -- Conditional
    sym"@conditional.ternary"   { Operator }, -- Conditional
    sym"@repeat"                { Repeat }, -- Repeat
    sym"@label"                 { }, -- Label
    sym"@operator"              { Operator }, -- Operator
    sym"@keyword"               { Keyword }, -- various keywords
    sym"@keyword.function"      { sym"@keyword" }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    sym"@keyword.operator"      { sym"@keyword" }, -- operators that are English words (e.g. `and` / `or`)
    sym"@keyword.return"        { fg = red0 }, -- keywords like `return` and `yield`
    sym"@exception"             { Exception }, -- Exception
    sym"@variable"              { }, -- Identifier
    sym"@variable.builtin"      { fg = lavenderOnSurface }, -- Identifier
    sym"@type"                  { Type }, -- Type
    sym"@type.builtin"          { fg = orange1 },
    sym"@type.definition"       { Typedef }, -- Typedef
    sym"@type.qualifier"        { fg = red0 },
    sym"@storageclass"          { StorageClass }, -- StorageClass
    sym"@structure"             { Structure }, -- Structure
    sym"@namespace"             { fg = red1 }, -- Identifier
    sym"@symbol"                { }, -- symbols or atoms
    sym"@include"               { Keyword }, -- Include
    sym"@attribute"             { PreProc },
    sym"@preproc"               { PreProc }, -- PreProc
    sym"@debug"                 { Debug }, -- Debug
    sym"@tag"                   { Tag }, -- XML tag names
    sym"@tag.attribute"         { Identifier }, -- XML tag attributes
    sym"@tag.delimiter"         { Punctuation }, -- XML tag delimiters
    sym"@punctuation.delimiter" { fg = onSurface1 }, -- delimiters (e.g. `;` / `.` / `,`)
    sym"@punctuation.bracket"   { sym'@punctuation.delimiter' }, -- brackets (e.g. `()` / `{}` / `[]`)
    sym"@punctuation.special"   { SpecialChar }, -- special symbols (e.g. `{}` in string interpolation)
    sym'@conceal'               { Conceal },
    sym'@scope'                 { }, -- scope block
    sym'@reference'             { }, -- scope block
    sym'@inlay.hint'            { LspCodeLens }, -- identifier reference

    -- Locals
    sym'@definition'            { }, -- various definitions
    sym'@definition.constant'   { sym'@constant' }, -- constants
    sym'@definition.function'   { sym'@function' }, -- functions
    sym'@definition.method'     { sym'@method' }, -- methods
    sym'@definition.var'        { fg = tealOnSurface }, -- variables
    sym'@definition.parameter'  { sym'@parameter' }, -- parameters
    sym'@definition.macro'      { sym'@function.macro' }, -- preprocessor macros
    sym'@definition.type'       { Type }, -- types or classes
    sym'@definition.field'      { sym'@definition' }, -- fields or properties
    sym'@definition.enum'       { sym'@definition' }, -- enumerations
    sym'@definition.namespace'  { sym'@definition' }, -- modules or namespaces
    sym'@definition.import'     { sym'@definition' }, -- imported names
    sym'@definition.associated' { sym'@definition' }, -- the associated type of a variable

    -- Treesitter plugins.
    TreesitterContext { fg = nil, bg = surface1 },
    TreesitterContextLineNumber { fg = onSurface4, bg = surface1 },

    -- Quickfix window.
    qfFileName  { Directory },
    qfSeparator { Delimiter },
    qfLineNr    { LineNr },
    qfError     { Error },

    -- Vim Help Highlighting
    helpCommand       { fg = onSurface0, bg = surface2 },
    helpExample       { fg = onSurface1 },
    helpHeader        { Title },
    helpSectionDelim  { fg = onSurface1 },
    helpHyperTextJump { URI },

    -- mkdCode = { bg = c.bg2, fg = c.fg },
    -- mkdHeading = { fg = c.orange, style = "bold" },
    mkdCodeDelimiter         { fg = onSurface0 },
    mkdCodeStart             { fg = onSurface0, gui = "bold" },
    mkdCodeEnd               { mkdCodeStart },
    mkdLink                  { URI },
    markdownHeadingDelimiter { fg = onSurface1 },
    markdownH1               { fg = onSurface00, gui = "bold" },
    markdownH2               { markdownH1 },
    markdownH3               { markdownH1 },
    markdownLinkText         { URI },
    markdownUrl              { URI },

    debugPC         { CursorLine }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint { fg = blueOnSurface, bg = blueSurface.mix(surface0, 90) }, -- used for breakpoint colors in terminal-debug

    -- Telescope
    -- Bordered styles.
    --TelescopeNormal        { fg = onSurface0, bg = surface0 },
    --TelescopeBorder        { fg = onSurface4, bg = surface0 },
    --TelescopeTitle         { fg = onSurface1, bg = surface0 },
    --TelescopePreviewNormal { fg = onSurface0, bg = surface0 },
    TelescopeSelection      { fg = onSurface00, bg = surface0 },
    TelescopePromptPrefix   { fg = red0 },
    TelescopeSelectionCaret { fg = red0 },
    TelescopeMatching       { FuzzyMatch },
    -- Borderless styles.
    TelescopeNormal         { fg = onSurface1, bg = surface00 },
    TelescopeTitle          { fg = surface00, bg = blueSurface, gui = "bold" },
    TelescopeBorder         { fg = surface00, bg = surface00 },
    TelescopePreviewNormal  { fg = onSurface0, bg = surface00 },
    TelescopePromptCounter  { fg = onSurface3 },
    TelescopePromptBorder   { fg = surface00, bg = surface00 },
    TelescopePromptNormal   { fg = onSurface1, bg = surface00 },
    TelescopeResultsTitle   { fg = surface00, bg = blueSurface, gui = "bold" },
    TelescopePromptTitle    { fg = surface00, bg = lavenderOnSurface, gui = "bold" },

    -- Cmp
    CmpItemAbbr           { fg = onSurface2 },
    CmpItemAbbrDeprecated { fg = onSurface2, gui = "strikethrough" },
    CmpItemKind           { fg = skyBlueOnSurface },
    CmpItemMenu           { fg = onSurface0 },
    CmpItemAbbrMatch      { FuzzyMatch },
    CmpItemAbbrMatchFuzzy { FuzzyMatch },

    -- kind support
    CmpItemKindSnippet       { fg = purpleOnSurface },
    CmpItemKindKeyword       { sym"@keyword" },
    CmpItemKindText          { fg = tealOnSurface },
    CmpItemKindMethod        { sym'@definition.method' },
    CmpItemKindConstructor   { sym'@constructor' },
    CmpItemKindFunction      { sym'@definition.function' },
    CmpItemKindFolder        { Directory },
    CmpItemKindModule        { sym'@definition.namespace' },
    CmpItemKindConstant      { sym'@definition.constant' },
    CmpItemKindField         { sym'@definition.field' },
    CmpItemKindProperty      { sym'@property' },
    CmpItemKindEnum          { sym'@definition.enum' },
    CmpItemKindUnit          { sym'@definition.namespace' },
    CmpItemKindClass         { sym'@definition.type' },
    CmpItemKindVariable      { sym'@definition.var' },
    CmpItemKindFile          { File },
    CmpItemKindInterface     { fg = yellow0 },
    CmpItemKindColor         { fg = red0 },
    CmpItemKindReference     { fg = red0 },
    CmpItemKindEnumMember    { sym'@field' },
    CmpItemKindStruct        { sym'@definition.type' },
    CmpItemKindValue         { sym'@field' },
    CmpItemKindEvent         { fg = skyBlueOnSurface },
    CmpItemKindOperator      { Operator },
    CmpItemKindTypeParameter { sym'@parameter' },
    CmpItemKindCopilot       { fg = orange2 },

    -- folke/noice.nvim
    NoiceCmdline { fg = onSurface0, bg = surface0 },
    NoiceCmdlineIcon { fg = skyBlueOnSurface },
    NoiceCmdlineIconSearch { fg = yellow0 },
    NoiceCmdlinePopup { fg = onSurface0, bg = surface0 },
    NoiceCmdlinePopupBorder { FloatBorder },
    NoiceCmdlinePopupBorderSearch { FloatBorder },
    NoiceConfirm { fg = onSurface0, bg = surface0 },
    NoiceConfirmBorder { fg = skyBlueOnSurface },
    NoiceCursor { Cursor },
    NoiceMini { fg = onSurface0 },
    NoicePopup { fg = onSurface0 },
    NoicePopupBorder { FloatBorder },
    NoicePopupmenu   { Pmenu },
    NoicePopupmenuBorder { FloatBorder },
    NoicePopupmenuMatch { Special },
    NoicePopupmenuSelected { PmenuSel },
    NoiceScrollbar { PmenuSbar },
    NoiceScrollbarThumb { PmenuThumb },
    NoiceSplit { fg = onSurface0, bg = surface0 },
    NoiceSplitBorder { FloatBorder },
    NoiceVirtualText { DiagnosticVirtualTextInfo },
    NoiceFormatProgressTodo { fg = onSurface0, bg = surface1 },
    NoiceFormatProgressDone { fg = onBlueSurface, bg = blueSurface },
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
