-- vi:nowrap

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require 'lush'
local hsl = lush.hsl

local MrSuit = {
  overlay0 = hsl '#23282f',
  overlay1 = hsl '#23282f'.lighten(2),

  shadow = hsl '#131920',
  surface0 = hsl '#151b23',
  surface1 = hsl '#192029',
  surface2 = hsl '#1d2530',

  cursorline = hsl '#212a36',
  scrollbarThumb = hsl '#aaabb6',
  border = hsl '#313244',
  conceal = hsl '#45475a',

  title = hsl '#d9e2e4',
  text0 = hsl '#b2c4d3',
  text1 = hsl '#8fa3bb',
  subtext0 = hsl '#86909f',
  subtext1 = hsl '#7a8490',

  text_aero = hsl '#8bb5da',
  text_blue = hsl '#89b4fa',
  text_bubblegum = hsl '#fe7f8c',
  text_celadon = hsl '#8ed29c',
  text_cyan = hsl '#91d7d1',
  text_gold = hsl '#d8b48e',
  text_green = hsl '#a8cba4',
  text_lavender = hsl '#b4befe',
  text_orange = hsl '#fab387',
  text_peach = hsl '#f2cdcd',
  text_pink = hsl '#f5c2e7',
  text_purple = hsl '#d0aff8',
  text_salmon = hsl '#fe9aa4',
  text_turquoise = hsl '#6fd0c6',
  text_yellow = hsl '#e6ddaf',

  surface_grey = hsl '#313239',
  on_surface_grey = hsl '#d0d1d7',

  surface_red = hsl '#41262e',
  on_surface_red = hsl '#fe9fa9',

  surface_orange = hsl '#433027',
  on_surface_orange = hsl '#fec49a',

  surface_yellow = hsl '#343637',
  on_surface_yellow = hsl '#f9e1ae',

  surface_green = hsl '#243c2e',
  on_surface_green = hsl '#aff3c0',

  surface_cyan = hsl '#233a48',
  on_surface_cyan = hsl '#89dceb',

  surface_blue = hsl '#203147',
  on_surface_blue = hsl '#9fcdfe',

  surface_purple = hsl '#312b41',
  on_surface_purple = hsl '#cab4f4',
}

-- Terminal colors.
-- TODO: move this somewhere more appropriate (this is probably going to be
-- dropped during :Shipwright compilation).
local Term = {
  MrSuit.subtext0, -- Black
  MrSuit.text_salmon,
  MrSuit.text_green,
  MrSuit.text_yellow,
  MrSuit.text_aero,
  MrSuit.text_lavender,
  MrSuit.text_cyan,
  MrSuit.text0,

  MrSuit.subtext1, -- Bright black
  MrSuit.text_bubblegum,
  MrSuit.text_celadon,
  MrSuit.text_orange,
  MrSuit.text_blue,
  MrSuit.text_purple,
  MrSuit.text_turquoise,
  MrSuit.text1,
}

for k, v in pairs(Term) do
  vim.g[string.format('terminal_color_%i', k - 1)] = v.hex
end

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
    Conceal { fg = MrSuit.conceal }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor { fg = MrSuit.text1 },    -- Character under the cursor
    Border { fg = MrSuit.border },
    FloatBorder { Border },
    FloatShadow { bg = MrSuit.shadow },
    FloatShadowThrough { bg = MrSuit.shadow },
    NonText { Conceal },                                                      -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { fg = MrSuit.text0, bg = MrSuit.surface0 },                       -- Normal text
    NormalFloat { Normal },                                                   -- Normal text in floating windows.
    NormalNC { Normal },                                                      -- normal text in non-current windows
    NormalSB { Normal },                                                      -- normal text in non-current windows
    lCursor { Cursor },                                                       -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM { Cursor },                                                      -- Like Cursor, but used when in IME mode |CursorIM|
    CursorLine { bg = MrSuit.cursorline },                                    -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn { CursorLine },                                              -- Screen-column at the cursor, when 'cursorcolumn' is set.
    ColorColumn { CursorLine },                                               -- Columns set with 'colorcolumn'
    File { fg = MrSuit.text0 },                                               -- Directory names (and other special names in listings)
    Directory { fg = MrSuit.text_aero },                                      -- Directory names (and other special names in listings)
    DiffAdd { fg = MrSuit.on_surface_green, bg = MrSuit.surface_green },      -- Diff mode: Added line |diff.txt|
    DiffChange { fg = MrSuit.on_surface_purple, bg = MrSuit.surface_purple }, -- Diff mode: Changed line |diff.txt|
    DiffDelete { fg = MrSuit.on_surface_red, bg = MrSuit.surface_red },       -- Diff mode: Deleted line |diff.txt|
    DiffText { fg = MrSuit.text1 },                                           -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer { NonText },                                                  -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    VertSplit { Border },                                                               -- Column separating vertically split windows
    Folded { fg = MrSuit.subtext1, gui = 'italic' },                                    -- Line used for closed folds
    FoldColumn { bg = MrSuit.surface0 },                                                -- 'foldcolumn'
    SignColumn { bg = MrSuit.surface0 },                                                -- Column where |signs| are displayed
    SignColumnSB { SignColumn },                                                        -- Column where |signs| are displayed
    Search { fg = MrSuit.on_surface_yellow, bg = MrSuit.surface_yellow, gui = 'bold' }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    IncSearch { Search },                                                               -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute { fg = MrSuit.on_surface_cyan, bg = MrSuit.surface_cyan, gui = 'bold' }, -- |:substitute| replacement text highlighting
    LineNr { Conceal },                                                                 -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = MrSuit.subtext0 },                                              -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen { fg = MrSuit.title },                                                   -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg { fg = MrSuit.text0, gui = 'bold' },                                        -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea { fg = MrSuit.text0 },                                                      -- Area for messages and cmdline
    -- MsgSeparat or { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg { fg = MrSuit.on_surface_cyan, bg = MrSuit.surface_cyan },                  -- |more-prompt|
    Pmenu { fg = MrSuit.text0, bg = MrSuit.overlay0 },                                  -- Popup menu: Normal item.
    PmenuSel { fg = MrSuit.on_surface_blue, bg = MrSuit.surface_blue },                 -- Popup menu: Selected item.
    PmenuSbar { bg = MrSuit.surface_grey },                                             -- Popup menu: Scrollbar.
    PmenuThumb { bg = MrSuit.scrollbarThumb },                                          -- Popup menu: Thumb of the scrollbar.
    Question { fg = MrSuit.text_celadon },                                              -- |hit-enter| prompt and yes/no questions
    QuickFixLine { bg = MrSuit.surface1, gui = 'bold' },                                -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey { fg = MrSuit.text1 },                                                   -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    StatusLine { fg = MrSuit.text0, bg = MrSuit.surface2 },                             -- Status line of current window
    StatusLineNC { StatusLine, fg = MrSuit.text1 },                                     -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine { Normal, fg = MrSuit.subtext0 },                                           -- Tab pages line, not active tab page label
    TabLineFill { Normal },                                                             -- Tab pages line, where there are no labels
    TabLineSel { PmenuSel },                                                            -- Tab pages line, active tab page label
    Title { fg = MrSuit.title, gui = 'bold' },                                          -- Titles for output from ":set all", ":autocmd" etc.
    Visual { fg = MrSuit.on_surface_blue, bg = MrSuit.surface_blue },                   -- Visual mode selection
    VisualNOS { Visual },                                                               -- Visual mode selection when vim is "Not Owning the Selection".
    Whitespace { NonText },                                                             -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator { VertSplit },                                                         -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu { bg = MrSuit.overlay0 },                                                  -- Current match in 'wildmenu' completion

    Todo { fg = MrSuit.on_surface_blue, bg = MrSuit.surface_blue, gui = 'italic' },     -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Success { fg = MrSuit.text_green },
    Warning { fg = MrSuit.text_yellow },
    Error { fg = MrSuit.text_salmon },

    -- Healthcheck.
    healthSuccess { Success },
    healthWarning { Warning },
    healthError { Error },

    WarningMsg { Warning }, -- Warning messages
    ErrorMsg { Error },     -- Error messages

    -- Terminal colors.
    TerminalColor0 { fg = Term[1] },
    TerminalColor1 { fg = Term[2] },
    TerminalColor2 { fg = Term[3] },
    TerminalColor3 { fg = Term[4] },
    TerminalColor4 { fg = Term[5] },
    TerminalColor5 { fg = Term[6] },
    TerminalColor6 { fg = Term[7] },
    TerminalColor7 { fg = Term[8] },
    TerminalColor8 { fg = Term[9] },
    TerminalColor9 { fg = Term[10] },
    TerminalColor10 { fg = Term[11] },
    TerminalColor11 { fg = Term[12] },
    TerminalColor12 { fg = Term[13] },
    TerminalColor13 { fg = Term[14] },
    TerminalColor14 { fg = Term[15] },
    TerminalColor15 { fg = Term[16] },

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    FuzzyMatch { fg = MrSuit.text_gold },
    Punctuation { fg = MrSuit.text1 },
    Comment { fg = MrSuit.subtext1 },                                    -- Any comment

    Constant { fg = MrSuit.text_gold },                                  -- (*) Any constant
    String { fg = MrSuit.text_cyan },                                    --   A string constant: "this is a string"
    Character { fg = MrSuit.text_orange },                               --   A character constant: 'c', '\n'
    Number { fg = MrSuit.text_aero },                                    --   A number constant: 234, 0xff
    Boolean { fg = MrSuit.text_pink },                                   --   A boolean constant: TRUE, false
    Float { fg = MrSuit.text_pink },                                     --   A floating point constant: 2.3e10
    URI { fg = MrSuit.text_cyan, gui = 'underline' },
    Identifier { fg = MrSuit.text0 },                                    -- (*) Any variable name
    Function { fg = MrSuit.text_aero },                                  --   Function name (also: methods for classes)

    Statement { fg = MrSuit.text_lavender },                             -- (*) Any statement
    Conditional { Statement },                                           --   if, then, else, endif, switch, etc.
    Repeat { Statement },                                                --   for, do, while, etc.
    Label { Statement },                                                 --   case, default, etc.
    Operator { Punctuation },                                            --   "sizeof", "+", "*", etc.
    Keyword { Statement },                                               --   any other keyword
    Exception { Statement },                                             --   try, catch, throw

    PreProc { fg = MrSuit.text_peach },                                  -- (*) Generic Preprocessor
    Include { fg = MrSuit.text_cyan },                                   --   Preprocessor #include
    Define { Include },                                                  --   Preprocessor #define
    Macro { Include },                                                   --   Same as Define
    PreCondit { PreProc },                                               --   Preprocessor #if, #else, #endif, etc.

    Type { fg = MrSuit.text_green },                                     -- (*) int, long, char, etc.
    StorageClass { fg = MrSuit.text_lavender },                          --   static, register, volatile, etc.
    Structure { Type },                                                  --   struct, union, enum, etc.
    Typedef { Type },                                                    --   A typedef

    Special { fg = MrSuit.text_salmon },                                 -- (*) Any special symbol
    SpecialChar { fg = MrSuit.text_peach },                              --   Special character in a constant
    Tag { Special },                                                     --   You can use CTRL-] on this
    Delimiter { Punctuation },                                           --   Character that needs attention
    SpecialComment { fg = MrSuit.text_pink },                            --   Special things inside a comment (e.g. '\n')
    Debug { fg = MrSuit.on_surface_orange, bg = MrSuit.surface_orange }, --   Debugging statements

    Underlined { gui = 'underline' },                                    -- Text that stands out, HTML links
    Bold { gui = 'bold' },
    Italic { gui = 'italic' },
    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore|.

    -- diff
    diffAdded { DiffAdd },
    diffChanged { DiffChange },
    diffRemoved { DiffDelete },
    diffOldFile { fg = MrSuit.text1 },
    diffNewFile { fg = MrSuit.text_aero },
    diffFile { fg = MrSuit.text_lavender },
    diffLine { DiffText },
    diffIndexLine { fg = MrSuit.text_lavender },

    -- GitSigns
    GitSignsAdd { fg = MrSuit.text_green },       -- diff mode: Added line |diff.txt|
    GitSignsChange { fg = MrSuit.text_lavender }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete { fg = MrSuit.text_salmon },   -- diff mode: Deleted line |diff.txt|

    -- GitGutter
    GitGutterAdd { GitSignsAdd },       -- diff mode: Added line |diff.txt|
    GitGutterChange { GitSignsChange }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete { GitSignsDelete }, -- diff mode: Deleted line |diff.txt|

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText { fg = MrSuit.on_surface_blue, bg = MrSuit.surface_blue }, -- Used for highlighting "text" references
    LspReferenceRead { LspReferenceText },                                      -- Used for highlighting "read" references
    LspReferenceWrite { LspReferenceText },                                     -- Used for highlighting "write" references
    LspCodeLens { fg = MrSuit.subtext1, gui = 'italic' },                       -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { }, -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
    LspParameter { fg = MrSuit.text_peach, gui = 'italic' }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError { Error },                                                               -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn { Warning },                                                              -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo { fg = MrSuit.text_cyan },                                                -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint { fg = MrSuit.subtext0 },                                                 -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { fg = MrSuit.on_surface_red, bg = MrSuit.surface_red },      -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn { fg = MrSuit.on_surface_yellow, bg = MrSuit.surface_yellow }, -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo { fg = MrSuit.on_surface_cyan, bg = MrSuit.surface_cyan },     -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint { fg = MrSuit.subtext0, bg = MrSuit.surface1 },                -- Used for "Hint" diagnostic virtual text.
    DiagnosticUnderlineError { gui = 'underdotted', sp = DiagnosticError.fg },               -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn { gui = 'underdotted', sp = DiagnosticWarn.fg },                 -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo { gui = 'underdotted', sp = DiagnosticInfo.fg },                 -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint { gui = 'underdotted', sp = DiagnosticHint.fg },                 -- Used to underline "Hint" diagnostics.
    DiagnosticFloatingError { DiagnosticError },                                             -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn { DiagnosticWarn },                                               -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo { DiagnosticInfo },                                               -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint { DiagnosticHint },                                               -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticSignError { DiagnosticError },                                                 -- Used for "Error" signs in sign column.
    DiagnosticSignWarn { DiagnosticWarn },                                                   -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo { DiagnosticInfo },                                                   -- Used for "Info" signs in sign column.
    DiagnosticSignHint { DiagnosticHint },                                                   -- Used for "Hint" signs in sign column.

    LspDiagnosticsDefaultError { DiagnosticError },                                          -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsDefaultWarning { DiagnosticWarn },                                         -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsDefaultInformation { DiagnosticInfo },                                     -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsDefaultHint { DiagnosticHint },                                            -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsVirtualTextError { DiagnosticVirtualTextError },                           -- Used for "Error" diagnostic virtual text.
    LspDiagnosticsVirtualTextWarning { DiagnosticVirtualTextWarn },                          -- Used for "Warn" diagnostic virtual text.
    LspDiagnosticsVirtualTextInformation { DiagnosticVirtualTextInfo },                      -- Used for "Info" diagnostic virtual text.
    LspDiagnosticsVirtualTextHint { DiagnosticVirtualTextHint },                             -- Used for "Hint" diagnostic virtual text.
    LspDiagnosticsUnderlineError { DiagnosticUnderlineError },                               -- Used to underline "Error" diagnostics.
    LspDiagnosticsUnderlineWarning { DiagnosticUnderlineWarn },                              -- Used to underline "Warn" diagnostics.
    LspDiagnosticsUnderlineInformation { DiagnosticUnderlineInfo },                          -- Used to underline "Info" diagnostics.
    LspDiagnosticsUnderlineHint { DiagnosticUnderlineHint },                                 -- Used to underline "Hint" diagnostics.
    LspDiagnosticsFloatingError { DiagnosticFloatingError },                                 -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    LspDiagnosticsFloatingWarning { DiagnosticFloatingWarn },                                -- Used to color "Warn" diagnostic messages in diagnostics float.
    LspDiagnosticsFloatingInfo { DiagnosticFloatingInfo },                                   -- Used to color "Info" diagnostic messages in diagnostics float.
    LspDiagnosticsFloatingHint { DiagnosticFloatingHint },                                   -- Used to color "Hint" diagnostic messages in diagnostics float.
    LspDiagnosticsSignError { DiagnosticSignError },                                         -- Used for "Error" signs in sign column.
    LspDiagnosticsSignWarning { DiagnosticSignWarn },                                        -- Used for "Warn" signs in sign column.
    LspDiagnosticsSignInformation { DiagnosticSignInfo },                                    -- Used for "Info" signs in sign column.
    LspDiagnosticsSignHint { DiagnosticSignHint },                                           -- Used for "Hint" signs in sign column.

    -- Spell-checker.
    SpellBad { DiagnosticUnderlineError, gui = 'undercurl' },  -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap { DiagnosticUnderlineWarn, gui = 'undercurl' },   -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal { DiagnosticUnderlineInfo, gui = 'undercurl' }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare { DiagnosticUnderlineHint, gui = 'undercurl' },  -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups.

    sym '@text' {}, -- Comment
    sym '@text.strong' { Bold },
    sym '@text.emphasis' { Italic },
    sym '@text.underline' { gui = 'underline' },
    sym '@text.strike' { gui = 'strikethrough' },
    sym '@text.literal' {},                                  -- literal or verbatim text (e.g., inline code)
    sym '@text.quote' { fg = MrSuit.text1, gui = 'italic' }, -- Comment
    sym '@text.reference' { Identifier },                    -- Identifier
    sym '@text.title' { Title },                             -- Title
    sym '@text.uri' { URI },
    sym '@text.math' { sym '@text.literal' },
    sym '@text.environment' {},      -- text environments of markup languages
    sym '@text.environment.name' {}, -- text indicating the type of an environment
    sym '@text.reference' {},        -- text references, footnotes, citations, etc.
    sym '@text.todo' { Todo },       -- Todo
    sym '@text.note' { gui = 'underline' },
    sym '@text.warning' { Warning },
    sym '@text.danger' { Error },
    sym '@text.diff.add' { GitSignsAdd },
    sym '@text.diff.delete' { GitSignsDelete },
    sym '@comment' { Comment }, -- Comment
    sym '@error' { Error },
    sym '@none' {},
    sym '@punctuation' { Delimiter },                            -- Delimiter
    sym '@constant' { Constant },                                -- Constant
    sym '@constant.builtin' { Special },                         -- Special
    sym '@constant.macro' { Define },                            -- Define
    sym '@define' { Define },                                    -- Define
    sym '@macro' { Macro },                                      -- Macro
    sym '@string' { String },                                    -- String
    sym '@string.regex' { String },                              -- String
    sym '@string.escape' { SpecialChar },                        -- SpecialChar
    sym '@string.special' { SpecialChar },                       -- SpecialChar
    sym '@character' { Character },                              -- Character
    sym '@character.special' { SpecialChar },                    -- SpecialChar
    sym '@number' { Number },                                    -- Number
    sym '@boolean' { Boolean },                                  -- Boolean
    sym '@float' { Float },                                      -- Float
    sym '@function' { Function },                                -- Function
    sym '@function.builtin' { fg = MrSuit.text_aero },           -- Special
    sym '@function.call' { Function },                           -- Macro
    sym '@function.macro' { Macro },                             -- Macro
    sym '@parameter' { Identifier },                             -- Identifier
    sym '@method' { Function },                                  -- Function
    sym '@method.call' { Function },                             -- Function
    sym '@field' { Identifier },                                 -- Identifier
    sym '@property' { Identifier },                              -- Identifier
    sym '@constructor' {},                                       -- Special
    sym '@conditional' { Conditional },                          -- Conditional
    sym '@conditional.ternary' { Operator },                     -- Conditional
    sym '@repeat' { Repeat },                                    -- Repeat
    sym '@label' {},                                             -- Label
    sym '@operator' { Operator },                                -- Operator
    sym '@keyword' { Keyword },                                  -- various keywords
    sym '@keyword.function' { sym '@keyword' },                  -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    sym '@keyword.operator' { sym '@keyword' },                  -- operators that are English words (e.g. `and` / `or`)
    sym '@keyword.return' { fg = MrSuit.text_salmon },           -- keywords like `return` and `yield`
    sym '@exception' { Exception },                              -- Exception
    sym '@variable' {},                                          -- Identifier
    sym '@variable.builtin' { fg = MrSuit.text_lavender },       -- Identifier
    sym '@type' { Type },                                        -- Type
    sym '@type.builtin' { Type },
    sym '@type.definition' { Typedef },                          -- Typedef
    sym '@type.qualifier' { fg = MrSuit.text_salmon },
    sym '@storageclass' { StorageClass },                        -- StorageClass
    sym '@structure' { Structure },                              -- Structure
    sym '@namespace' { fg = MrSuit.text_salmon },                -- Identifier
    sym '@symbol' {},                                            -- symbols or atoms
    sym '@include' { Keyword },                                  -- Include
    sym '@attribute' { PreProc },
    sym '@preproc' { PreProc },                                  -- PreProc
    sym '@debug' { Debug },                                      -- Debug
    sym '@tag' { Tag },                                          -- XML tag names
    sym '@tag.attribute' { Identifier },                         -- XML tag attributes
    sym '@tag.delimiter' { Punctuation },                        -- XML tag delimiters
    sym '@punctuation.delimiter' { Punctuation },                -- delimiters (e.g. `;` / `.` / `,`)
    sym '@punctuation.bracket' { sym '@punctuation.delimiter' }, -- brackets (e.g. `()` / `{}` / `[]`)
    sym '@punctuation.special' { SpecialChar },                  -- special symbols (e.g. `{}` in string interpolation)
    sym '@conceal' { Conceal },
    sym '@scope' {},                                             -- scope block
    sym '@reference' {},                                         -- scope block
    sym '@inlay.hint' { LspCodeLens },                           -- identifier reference

    -- Locals
    sym '@definition' {},                               -- various definitions
    sym '@definition.constant' { sym '@constant' },     -- constants
    sym '@definition.function' { sym '@function' },     -- functions
    sym '@definition.method' { sym '@method' },         -- methods
    sym '@definition.var' { fg = t.cyan0 },             -- variables
    sym '@definition.parameter' { sym '@parameter' },   -- parameters
    sym '@definition.macro' { sym '@function.macro' },  -- preprocessor macros
    sym '@definition.type' { Type },                    -- types or classes
    sym '@definition.field' { sym '@definition' },      -- fields or properties
    sym '@definition.enum' { sym '@definition' },       -- enumerations
    sym '@definition.namespace' { sym '@namespace' },   -- modules or namespaces
    sym '@definition.import' { sym '@definition' },     -- imported names
    sym '@definition.associated' { sym '@definition' }, -- the associated type of a variable

    -- LSP
    sym '@lsp.mod.declaration.c' {},
    sym '@lsp.mod.definition.c' {},
    sym '@lsp.mod.globalScope.c' {},

    sym '@lsp.type.interface.rust' { Constant },
    sym '@punctuation.special.rust' { Punctuation },

    -- Quickfix window.
    qfFileName { Directory },
    qfSeparator { Delimiter },
    qfLineNr { LineNr },
    qfError { Error },

    -- Vim Help Highlighting
    helpCommand { fg = MrSuit.text0, bg = MrSuit.surface1 },
    helpExample { fg = MrSuit.text1 },
    helpHeader { Title },
    helpSectionDelim { Punctuation },
    helpHyperTextJump { URI },

    -- mkdCode = { bg = c.bg2, fg = c.fg },
    -- mkdHeading = { fg = c.orange, style = "bold" },
    mkdCodeDelimiter { Punctuation },
    mkdCodeStart { Normal, gui = 'bold' },
    mkdCodeEnd { mkdCodeStart },
    mkdLink { URI },
    markdownHeadingDelimiter { Punctuation },
    markdownH1 { Title },
    markdownH2 { markdownH1 },
    markdownH3 { markdownH1 },
    markdownLinkText { URI },
    markdownUrl { URI },

    debugPC { CursorLine },    -- used for highlighting the current line in terminal-debug
    debugBreakpoint { Debug }, -- used for breakpoint colors in terminal-debug

    -- Telescope.
    TelescopeSelection { PmenuSel },
    TelescopePromptPrefix { fg = MrSuit.text_salmon },
    TelescopeSelectionCaret { fg = MrSuit.text_salmon },
    TelescopeMatching { FuzzyMatch },
    -- Borderless styles.
    TelescopeNormal { Normal },
    TelescopeTitle { fg = MrSuit.text_aero, gui = 'bold' },
    TelescopeBorder { Border },
    TelescopePreviewNormal { Normal },
    TelescopePromptCounter { fg = MrSuit.subtext1 },
    TelescopePromptBorder { TelescopeBorder },
    TelescopePromptNormal { TelescopeNormal },
    TelescopeResultsTitle { TelescopeTitle },
    TelescopePromptTitle { TelescopeTitle, fg = MrSuit.text_lavender },

    -- fzf-lua.
    FzfLuaNormal { Normal, bg = MrSuit.surface0 },
    FzfLuaBorder { fg = MrSuit.overlay0, bg = MrSuit.overlay0 },
    FzfLuaTitle { fg = MrSuit.surface0, bg = MrSuit.text_aero, gui = 'bold' },
    FzfLuaScrollFloatEmpty { bg = MrSuit.surface0 },
    -- FzfLuaNormal            = { 'winopts.hl.normal', 'Normal' },
    -- FzfLuaBorder            = { 'winopts.hl.border', 'Normal' },
    -- FzfLuaCursor            = { 'winopts.hl.cursor', 'Cursor' },
    -- FzfLuaCursorLine        = { 'winopts.hl.cursorline', 'CursorLine' },
    -- FzfLuaCursorLineNr      = { 'winopts.hl.cursornr', 'CursorLineNr' },
    -- FzfLuaSearch            = { 'winopts.hl.search', 'IncSearch' },
    -- FzfLuaTitle             = { 'winopts.hl.title', 'FzfLuaNormal' },
    -- FzfLuaScrollBorderEmpty = { 'winopts.hl.scrollborder_e', 'FzfLuaBorder' },
    -- FzfLuaScrollBorderFull  = { 'winopts.hl.scrollborder_f', 'FzfLuaBorder' },
    -- FzfLuaScrollFloatEmpty  = { 'winopts.hl.scrollfloat_e', 'PmenuSbar' },
    -- FzfLuaScrollFloatFull   = { 'winopts.hl.scrollfloat_f', 'PmenuThumb' },
    -- FzfLuaHelpNormal        = { 'winopts.hl.help_normal', 'FzfLuaNormal' },
    -- FzfLuaHelpBorder        = { 'winopts.hl.help_border', 'FzfLuaBorder' },
    -- FzfLuaPreviewNormal     = { 'winopts.hl.preview_normal', 'FzfLuaNormal' },
    -- FzfLuaPreviewBorder     = { 'winopts.hl.preview_border', 'FzfLuaBorder' },

    -- FZF colors.
    -- fzf-lua only passes down the .fg attribute.
    FzfLuaColorsFg { fg = MrSuit.text0 },
    FzfLuaColorsFgSel { FzfLuaColorsFg },
    FzfLuaColorsBg { fg = MrSuit.overlay0 },
    FzfLuaColorsBgSel { FzfLuaColorsBg },
    FzfLuaColorsGutter { FzfLuaColorsBg },
    FzfLuaColorsHl { fg = MrSuit.text_aero },
    FzfLuaColorsHlSel { FzfLuaColorsHl },
    FzfLuaColorsInfo { fg = MrSuit.subtext1 },
    FzfLuaColorsPrompt { fg = MrSuit.text_lavender },
    FzfLuaColorsPointer { fg = MrSuit.text_aero },
    FzfLuaColorsMarker { fg = MrSuit.text_green },
    FzfLuaColorsSpinner { FzfLuaColorsInfo },
    FzfLuaColorsHeader { FzfLuaColorsInfo },

    -- Cmp.
    CmpItemAbbr { fg = MrSuit.subtext0 },
    CmpItemAbbrDeprecated { fg = MrSuit.subtext1, gui = 'strikethrough' },
    CmpItemKind { fg = MrSuit.text_aero },
    CmpItemMenu { Normal },
    CmpItemAbbrMatch { FuzzyMatch },
    CmpItemAbbrMatchFuzzy { FuzzyMatch },

    -- Cmp completion kind/source.
    CmpItemKindSnippet { fg = MrSuit.text_lavender },
    CmpItemKindKeyword { sym '@keyword' },
    CmpItemKindText { fg = MrSuit.text_cyan },
    CmpItemKindMethod { sym '@definition.method' },
    CmpItemKindConstructor { sym '@constructor' },
    CmpItemKindFunction { sym '@definition.function' },
    CmpItemKindFolder { Directory },
    CmpItemKindModule { sym '@definition.namespace' },
    CmpItemKindConstant { sym '@definition.constant' },
    CmpItemKindField { sym '@definition.field' },
    CmpItemKindProperty { sym '@property' },
    CmpItemKindEnum { sym '@definition.enum' },
    CmpItemKindUnit { sym '@definition.namespace' },
    CmpItemKindClass { sym '@definition.type' },
    CmpItemKindVariable { sym '@definition.var' },
    CmpItemKindFile { File },
    CmpItemKindInterface { fg = MrSuit.text_yellow },
    CmpItemKindColor { fg = MrSuit.text_salmon },
    CmpItemKindReference { fg = MrSuit.text_salmon },
    CmpItemKindEnumMember { sym '@field' },
    CmpItemKindStruct { sym '@definition.type' },
    CmpItemKindValue { sym '@field' },
    CmpItemKindEvent { fg = MrSuit.text_aero },
    CmpItemKindOperator { Operator },
    CmpItemKindTypeParameter { sym '@parameter' },
    CmpItemKindCopilot { fg = MrSuit.text_peach },

    -- Lualine.
    LualineANormal { fg = MrSuit.on_surface_blue, bg = MrSuit.surface_blue },
    LualineAInsert { fg = MrSuit.on_surface_green, bg = MrSuit.surface_green },
    LualineAVisual { fg = MrSuit.on_surface_cyan, bg = MrSuit.surface_cyan },
    LualineAReplace { fg = MrSuit.on_surface_red, bg = MrSuit.surface_red },
    LualineACommand { fg = MrSuit.on_surface_purple, bg = MrSuit.surface_purple },
    LualineAInactive { fg = MrSuit.text1, bg = MrSuit.surface0 },
    LualineBNormal { fg = MrSuit.subtext0, bg = MrSuit.surface1 },
    LualineBInsert { LualineBNormal },
    LualineBVisual { LualineBNormal },
    LualineBReplace { LualineBNormal },
    LualineBCommand { LualineBNormal },
    LualineBInactive { LualineBNormal },

    LualineCNormal { fg = MrSuit.subtext1, bg = MrSuit.surface2 },
    LualineCInsert { LualineCNormal },
    LualineCVisual { LualineCNormal },
    LualineCReplace { LualineCNormal },
    LualineCCommand { LualineCNormal },
    LualineCInactive { LualineCNormal },

    LualineXNormal { LualineCNormal },
    LualineXInsert { LualineCInsert },
    LualineXVisual { LualineCVisual },
    LualineXReplace { LualineCReplace },
    LualineXCommand { LualineCCommand },
    LualineXInactive { LualineCInactive },

    LualineYNormal { LualineBNormal },
    LualineYInsert { LualineBInsert },
    LualineYVisual { LualineBVisual },
    LualineYReplace { LualineBReplace },
    LualineYCommand { LualineBCommand },
    LualineYInactive { LualineBInactive },

    LualineZNormal { LualineANormal },
    LualineZInsert { LualineAInsert },
    LualineZVisual { LualineAVisual },
    LualineZReplace { LualineAReplace },
    LualineZCommand { LualineACommand },
    LualineZInactive { LualineAInactive },
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme
