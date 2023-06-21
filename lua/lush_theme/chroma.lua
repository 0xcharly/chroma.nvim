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

local lush = require 'lush'
local hsl = lush.hsl

local Pantone = {
  ExtendedGamutCoated = {
    c169 = hsl '#f4b7af',
    c190 = hsl '#e37796',
    c244 = hsl '#cc9cc4',
    c324 = hsl '#91d7d1',
    c358 = hsl '#a8d98d',
    c419 = hsl '#252724',
    c432 = hsl '#39454d',
    c433 = hsl '#1d262e',
    c472 = hsl '#e6a46e',
    c605 = hsl '#e6d400',
    c644 = hsl '#a1bbd6',
    c663 = hsl '#e8e7ea',
    c727 = hsl '#d8b48e',
    c2005 = hsl '#f8d57e',
    c2142 = hsl '#8fb0db',
    c2255 = hsl '#80d291',
    c2345 = hsl '#f07f73',
    c2346 = hsl '#e9666a',
    c2915 = hsl '#6ab4e0',
    c3242 = hsl '#6fd0c6',
    c7507 = hsl '#f9d39c',
    c7541 = hsl '#d9e0e3',
    c7542 = hsl '#a3b9c3',
    c7543 = hsl '#94a2ad',
    c7544 = hsl '#758491',
    c7545 = hsl '#415364',
    Black6 = hsl '#131d28',
  },

  FormulaGuideCoated = {
    c2011 = hsl '#ec9c33',
    c2226 = hsl '#3ecbda',
    c2285 = hsl '#93da49',
    c2727 = hsl '#2f7ee2',
    c3556 = hsl '#ee3831',
    c7442 = hsl '#963cbd',
  },

  ColorBridgeCoated = {
    c6001 = hsl '#e6ddaf',
  },

  ColorBridgeUncoated = {
    c292 = hsl '#64a9d7',
    c333 = hsl '#70bd9e',
    c3548 = hsl '#dc6964',

    c6001 = hsl '#f3d58a',
    c6169 = hsl '#88c093',

    c659 = hsl '#97b6d9',
    c2142 = hsl '#8bb5da',

    c649 = hsl '#e6ebe7',
    c650 = hsl '#d9e2e4',
    c651 = hsl '#b2c4d3',
    c652 = hsl '#8fa3bb',
    c653 = hsl '#6f819e',
    c654 = hsl '#5c6d87',

    c4134 = hsl '#a0a6b1',
    c4135 = hsl '#86909f',
    c4136 = hsl '#7a8490',
    c4137 = hsl '#697581',
    c4138 = hsl '#6b7782',
    c4139 = hsl '#6a717a',
    c4140 = hsl '#626368',
  },

  PastelsNeonsUncoated = {
    c0131 = hsl '#fbf59b',
  },

  PastelsNeonsCoated = {
    c935 = hsl '#ab92e1',
    c942 = hsl '#c0aee7',
  },
}

local T = {
  shadow = Pantone.ExtendedGamutCoated.Black6,
  surface0 = Pantone.ExtendedGamutCoated.c433.darken(12),
  surface1 = Pantone.ExtendedGamutCoated.c433,
  surface2 = Pantone.ExtendedGamutCoated.c433.lighten(1),

  scrollbar = Pantone.ExtendedGamutCoated.c432,
  scrollbarThumb = Pantone.ExtendedGamutCoated.c7544,

  title = Pantone.ExtendedGamutCoated.c663,
  text0 = Pantone.ColorBridgeUncoated.c651,
  text1 = Pantone.ColorBridgeUncoated.c652,

  subtext0 = Pantone.ColorBridgeUncoated.c4135,
  subtext1 = Pantone.ColorBridgeUncoated.c4136,

  border = Pantone.ExtendedGamutCoated.c432,
  conceal = Pantone.ExtendedGamutCoated.c7545,

  greenSubtle = Pantone.ColorBridgeUncoated.c333,
  green = Pantone.ColorBridgeUncoated.c6169,
  greenEmphasis = Pantone.ExtendedGamutCoated.c2255,

  cyan = Pantone.ExtendedGamutCoated.c324,
  cyanEmphasis = Pantone.ExtendedGamutCoated.c3242,

  blueSubtle = Pantone.ColorBridgeUncoated.c659,
  blue = Pantone.ColorBridgeUncoated.c2142,

  purple = Pantone.PastelsNeonsCoated.c942,
  purpleEmphasis = Pantone.PastelsNeonsCoated.c935,

  peach = Pantone.ExtendedGamutCoated.c169,
  -- peachEmphasis

  pink = Pantone.ExtendedGamutCoated.c190,
  pinkEmphasis = Pantone.ExtendedGamutCoated.c244,

  redSubtle = Pantone.ColorBridgeUncoated.c3548,
  red = Pantone.ExtendedGamutCoated.c2345,
  redEmphasis = Pantone.ExtendedGamutCoated.c2346,

  orange = Pantone.ExtendedGamutCoated.c727,
  orangeEmphasis = Pantone.ExtendedGamutCoated.c472,

  yellowSubtle = Pantone.ColorBridgeCoated.c6001,
  yellow = Pantone.ColorBridgeUncoated.c6001,
  yellowEmphasis = Pantone.PastelsNeonsUncoated.c0131,
}

local S = {
  green = Pantone.FormulaGuideCoated.c2285.mix(T.surface0, 75),
  onGreen = Pantone.FormulaGuideCoated.c2285.desaturate(15).lighten(25),

  cyan = Pantone.FormulaGuideCoated.c2226.mix(T.surface0, 90),
  onCyan = Pantone.FormulaGuideCoated.c2226.desaturate(15).lighten(50),

  blue = Pantone.FormulaGuideCoated.c2727.mix(T.surface0, 90),
  onBlue = Pantone.FormulaGuideCoated.c2727.desaturate(15).lighten(50),

  purple = Pantone.FormulaGuideCoated.c7442.mix(T.surface0, 75),
  onPurple = Pantone.FormulaGuideCoated.c7442.desaturate(40).lighten(50),

  yellow = Pantone.FormulaGuideCoated.c2011.mix(T.surface0, 85),
  onYellow = Pantone.FormulaGuideCoated.c2011.desaturate(10).lighten(50),

  red = Pantone.FormulaGuideCoated.c3556.mix(T.surface0, 85),
  onRed = Pantone.FormulaGuideCoated.c3556.desaturate(15).lighten(50),
}

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
    Conceal { fg = T.conceal }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor { fg = T.text1 },   -- Character under the cursor
    Border { fg = T.border },
    FloatBorder { Border },
    FloatShadow { bg = T.shadow },
    FloatShadowThrough { bg = T.shadow },
    NonText { fg = T.conceal },                   -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { fg = T.text0, bg = T.surface0 },     -- Normal text
    NormalFloat { Normal },                       -- Normal text in floating windows.
    NormalNC { Normal },                          -- normal text in non-current windows
    NormalSB { Normal },                          -- normal text in non-current windows
    lCursor { Cursor },                           -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM { Cursor },                          -- Like Cursor, but used when in IME mode |CursorIM|
    CursorLine { bg = S.blue },                   -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn { CursorLine },                  -- Screen-column at the cursor, when 'cursorcolumn' is set.
    ColorColumn { CursorLine },                   -- Columns set with 'colorcolumn'
    File { fg = T.text0 },                        -- Directory names (and other special names in listings)
    Directory { fg = T.blueEmphasis },            -- Directory names (and other special names in listings)
    DiffAdd { fg = S.onGreen, bg = S.green },     -- Diff mode: Added line |diff.txt|
    DiffChange { fg = S.onPurple, bg = S.purple }, -- Diff mode: Changed line |diff.txt|
    DiffDelete { fg = S.onRed, bg = S.red },      -- Diff mode: Deleted line |diff.txt|
    DiffText { fg = T.text1 },                    -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer { NonText },                      -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    VertSplit { Border },                                       -- Column separating vertically split windows
    Folded { fg = T.subtext1, gui = 'italic' },                 -- Line used for closed folds
    FoldColumn { bg = T.surface0 },                             -- 'foldcolumn'
    SignColumn { bg = T.surface0 },                             -- Column where |signs| are displayed
    SignColumnSB { SignColumn },                                -- Column where |signs| are displayed
    Search { fg = S.onYellow, bg = S.yellow, gui = 'bold' },    -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    IncSearch { Search },                                       -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute { fg = S.onPurple, bg = S.purple, gui = 'bold' }, -- |:substitute| replacement text highlighting
    LineNr { fg = T.conceal },                                  -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = T.subtext0 },                           -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen { fg = T.title },                                -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg { fg = T.text0, gui = 'bold' },                     -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea { fg = T.text0 },                                   -- Area for messages and cmdline
    -- MsgSeparat or { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg { fg = S.onCyan, bg = S.cyan },                     -- |more-prompt|
    Pmenu { Normal },                                           -- Popup menu: Normal item.
    PmenuSel { fg = S.onBlue, bg = S.blue },                    -- Popup menu: Selected item.
    PmenuSbar { bg = T.scrollbar },                             -- Popup menu: Scrollbar.
    PmenuThumb { fg = T.scrollbarThumb },                       -- Popup menu: Thumb of the scrollbar.
    Question { fg = T.greenEmphasis },                          -- |hit-enter| prompt and yes/no questions
    QuickFixLine { bg = T.surface1, gui = 'bold' },             -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey { fg = T.text1 },                                -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    StatusLine { fg = T.text0, bg = T.surface1 },               -- Status line of current window
    StatusLineNC { StatusLine, fg = T.text1 },                  -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine { StatusLine, fg = T.subtext0 },                    -- Tab pages line, not active tab page label
    TabLineFill { StatusLine },                                 -- Tab pages line, where there are no labels
    TabLineSel { fg = T.text0, bg = T.surface0 },               -- Tab pages line, active tab page label
    Title { fg = T.title, gui = 'bold' },                       -- Titles for output from ":set all", ":autocmd" etc.
    Visual { bg = S.cyan },                                     -- Visual mode selection
    VisualNOS { Visual },                                       -- Visual mode selection when vim is "Not Owning the Selection".
    Whitespace { NonText },                                     -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu { bg = T.surface1 },                               -- Current match in 'wildmenu' completion

    Todo { fg = S.onBlue, bg = S.blue, gui = 'italic' },        -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Success { fg = T.green },
    Warning { fg = T.yellow },
    Error { fg = T.red },

    -- Healthcheck.
    healthSuccess { Success },
    healthWarning { Warning },
    healthError { Error },

    WarningMsg { Warning }, -- Warning messages
    ErrorMsg { Error },    -- Error messages

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    FuzzyMatch { fg = T.orange },
    Punctuation { fg = T.text1 },
    Comment { fg = T.subtext1 },        -- Any comment

    Constant { fg = T.orange },         -- (*) Any constant
    String { fg = T.green },            --   A string constant: "this is a string"
    Character { fg = T.orangeEmphasis }, --   A character constant: 'c', '\n'
    Number { fg = T.blueEmphasis },     --   A number constant: 234, 0xff
    Boolean { fg = T.pink },            --   A boolean constant: TRUE, false
    Float { fg = T.pink },              --   A floating point constant: 2.3e10
    URI { fg = T.cyan, gui = 'underline' },

    Identifier { fg = T.blueSubtle },  -- (*) Any variable name
    Function { fg = T.blue },          --   Function name (also: methods for classes)

    Statement { fg = T.purple },       -- (*) Any statement
    Conditional { Statement },         --   if, then, else, endif, switch, etc.
    Repeat { Statement },              --   for, do, while, etc.
    Label { Statement },               --   case, default, etc.
    Operator { Punctuation },          --   "sizeof", "+", "*", etc.
    Keyword { fg = T.purple },         --   any other keyword
    Exception { Keyword },             --   try, catch, throw

    PreProc { fg = T.peach },          -- (*) Generic Preprocessor
    Include { fg = T.cyan },           --   Preprocessor #include
    Define { Include },                --   Preprocessor #define
    Macro { Include },                 --   Same as Define
    PreCondit { PreProc },             --   Preprocessor #if, #else, #endif, etc.

    Type { fg = T.greenSubtle },       -- (*) int, long, char, etc.
    StorageClass { Keyword },          --   static, register, volatile, etc.
    Structure { Type },                --   struct, union, enum, etc.
    Typedef { Type },                  --   A typedef

    Special { fg = T.redEmphasis },    -- (*) Any special symbol
    SpecialChar { fg = T.peach },      --   Special character in a constant
    Tag { Special },                   --   You can use CTRL-] on this
    Delimiter { Punctuation },         --   Character that needs attention
    SpecialComment { fg = T.pink },    --   Special things inside a comment (e.g. '\n')
    Debug { fg = S.onRed, bg = S.red }, --   Debugging statements

    Underlined { gui = 'underline' },  -- Text that stands out, HTML links
    Bold { gui = 'bold' },
    Italic { gui = 'italic' },
    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore|.

    -- diff
    diffAdded { DiffAdd },
    diffChanged { DiffChange },
    diffRemoved { DiffDelete },
    diffOldFile { fg = T.text1 },
    diffNewFile { fg = T.blueEmphasis },
    diffFile { fg = T.purple },
    diffLine { DiffText },
    diffIndexLine { fg = T.purple },

    -- GitSigns
    GitSignsAdd { fg = T.green },    -- diff mode: Added line |diff.txt|
    GitSignsChange { fg = T.purple }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete { fg = T.red },   -- diff mode: Deleted line |diff.txt|

    -- GitGutter
    GitGutterAdd { GitSignsAdd },      -- diff mode: Added line |diff.txt|
    GitGutterChange { GitSignsChange }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete { GitSignsDelete }, -- diff mode: Deleted line |diff.txt|

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText { bg = T.surface1 },           -- Used for highlighting "text" references
    LspReferenceRead { bg = T.surface1 },           -- Used for highlighting "read" references
    LspReferenceWrite { bg = T.surface1 },          -- Used for highlighting "write" references
    LspCodeLens { fg = T.subtext1, gui = 'italic' }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { }, -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
    LspParameter { fg = T.peach, gui = 'italic' }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError { Error },                                                -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn { Warning },                                               -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo { fg = T.purple },                                         -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint { fg = T.subtext0 },                                       -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { fg = S.onRed, bg = S.red },                  -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn { fg = S.onYellow, bg = S.yellow },             -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo { fg = S.onPurple, bg = S.purple },             -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint { fg = T.subtext0, bg = T.surface1 },           -- Used for "Hint" diagnostic virtual text.
    DiagnosticUnderlineError { gui = 'underdotted', sp = DiagnosticError.fg }, -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn { gui = 'underdotted', sp = DiagnosticWarn.fg },  -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo { gui = 'underdotted', sp = DiagnosticInfo.fg },  -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint { gui = 'underdotted', sp = DiagnosticHint.fg },  -- Used to underline "Hint" diagnostics.
    DiagnosticFloatingError { DiagnosticError },                              -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn { DiagnosticWarn },                                -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo { DiagnosticInfo },                                -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint { DiagnosticHint },                                -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticSignError { DiagnosticError },                                  -- Used for "Error" signs in sign column.
    DiagnosticSignWarn { DiagnosticWarn },                                    -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo { DiagnosticInfo },                                    -- Used for "Info" signs in sign column.
    DiagnosticSignHint { DiagnosticHint },                                    -- Used for "Hint" signs in sign column.

    LspDiagnosticsDefaultError { DiagnosticError },                           -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsDefaultWarning { DiagnosticWarn },                          -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsDefaultInformation { DiagnosticInfo },                      -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsDefaultHint { DiagnosticHint },                             -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline).
    LspDiagnosticsVirtualTextError { DiagnosticVirtualTextError },            -- Used for "Error" diagnostic virtual text.
    LspDiagnosticsVirtualTextWarning { DiagnosticVirtualTextWarn },           -- Used for "Warn" diagnostic virtual text.
    LspDiagnosticsVirtualTextInformation { DiagnosticVirtualTextInfo },       -- Used for "Info" diagnostic virtual text.
    LspDiagnosticsVirtualTextHint { DiagnosticVirtualTextHint },              -- Used for "Hint" diagnostic virtual text.
    LspDiagnosticsUnderlineError { DiagnosticUnderlineError },                -- Used to underline "Error" diagnostics.
    LspDiagnosticsUnderlineWarning { DiagnosticUnderlineWarn },               -- Used to underline "Warn" diagnostics.
    LspDiagnosticsUnderlineInformation { DiagnosticUnderlineInfo },           -- Used to underline "Info" diagnostics.
    LspDiagnosticsUnderlineHint { DiagnosticUnderlineHint },                  -- Used to underline "Hint" diagnostics.
    LspDiagnosticsFloatingError { DiagnosticFloatingError },                  -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    LspDiagnosticsFloatingWarning { DiagnosticFloatingWarn },                 -- Used to color "Warn" diagnostic messages in diagnostics float.
    LspDiagnosticsFloatingInfo { DiagnosticFloatingInfo },                    -- Used to color "Info" diagnostic messages in diagnostics float.
    LspDiagnosticsFloatingHint { DiagnosticFloatingHint },                    -- Used to color "Hint" diagnostic messages in diagnostics float.
    LspDiagnosticsSignError { DiagnosticSignError },                          -- Used for "Error" signs in sign column.
    LspDiagnosticsSignWarning { DiagnosticSignWarn },                         -- Used for "Warn" signs in sign column.
    LspDiagnosticsSignInformation { DiagnosticSignInfo },                     -- Used for "Info" signs in sign column.
    LspDiagnosticsSignHint { DiagnosticSignHint },                            -- Used for "Hint" signs in sign column.

    -- Spell-checker.
    SpellBad { DiagnosticUnderlineError, gui = 'undercurl' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap { DiagnosticUnderlineWarn, gui = 'undercurl' },  -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal { DiagnosticUnderlineInfo, gui = 'undercurl' }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare { DiagnosticUnderlineHint, gui = 'undercurl' }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups.

    sym '@text' {}, -- Comment
    sym '@text.strong' { Bold },
    sym '@text.emphasis' { Italic },
    sym '@text.underline' { gui = 'underline' },
    sym '@text.strike' { gui = 'strikethrough' },
    sym '@text.literal' {},                             -- literal or verbatim text (e.g., inline code)
    sym '@text.quote' { fg = T.text1, gui = 'italic' }, -- Comment
    sym '@text.reference' { Identifier },               -- Identifier
    sym '@text.title' { Title },                        -- Title
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
    sym '@punctuation' { Delimiter },                             -- Delimiter
    sym '@constant' { Constant },                                 -- Constant
    sym '@constant.builtin' { Special },                          -- Special
    sym '@constant.macro' { Define },                             -- Define
    sym '@define' { Define },                                     -- Define
    sym '@macro' { Macro },                                       -- Macro
    sym '@string' { String },                                     -- String
    sym '@string.regex' { String },                               -- String
    sym '@string.escape' { SpecialChar },                         -- SpecialChar
    sym '@string.special' { SpecialChar },                        -- SpecialChar
    sym '@character' { Character },                               -- Character
    sym '@character.special' { SpecialChar },                     -- SpecialChar
    sym '@number' { Number },                                     -- Number
    sym '@boolean' { Boolean },                                   -- Boolean
    sym '@float' { Float },                                       -- Float
    sym '@function' { Function },                                 -- Function
    sym '@function.builtin' { fg = T.blueEmphasis },              -- Special
    sym '@function.call' { Function },                            -- Macro
    sym '@function.macro' { Macro },                              -- Macro
    sym '@parameter' { fg = T.text0 },                            -- Identifier
    sym '@method' { Function },                                   -- Function
    sym '@method.call' { Function },                              -- Function
    sym '@field' { Identifier },                                  -- Identifier
    sym '@property' { Identifier },                               -- Identifier
    sym '@constructor' {},                                        -- Special
    sym '@conditional' { Conditional },                           -- Conditional
    sym '@conditional.ternary' { Operator },                      -- Conditional
    sym '@repeat' { Repeat },                                     -- Repeat
    sym '@label' {},                                              -- Label
    sym '@operator' { Operator },                                 -- Operator
    sym '@keyword' { Keyword },                                   -- various keywords
    sym '@keyword.function' { sym '@keyword' },                   -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    sym '@keyword.operator' { sym '@keyword' },                   -- operators that are English words (e.g. `and` / `or`)
    sym '@keyword.return' { fg = T.redSubtle },                   -- keywords like `return` and `yield`
    sym '@exception' { Exception },                               -- Exception
    sym '@variable' {},                                           -- Identifier
    sym '@variable.builtin' { fg = T.purple },                    -- Identifier
    sym '@type' { Type },                                         -- Type
    sym '@type.builtin' { Type },
    sym '@type.definition' { Typedef },                           -- Typedef
    sym '@type.qualifier' { fg = T.red },
    sym '@storageclass' { StorageClass },                         -- StorageClass
    sym '@structure' { Structure },                               -- Structure
    sym '@namespace' { fg = T.redEmphasis },                      -- Identifier
    sym '@symbol' {},                                             -- symbols or atoms
    sym '@include' { Keyword },                                   -- Include
    sym '@attribute' { PreProc },
    sym '@preproc' { PreProc },                                   -- PreProc
    sym '@debug' { Debug },                                       -- Debug
    sym '@tag' { Tag },                                           -- XML tag names
    sym '@tag.attribute' { Identifier },                          -- XML tag attributes
    sym '@tag.delimiter' { Punctuation },                         -- XML tag delimiters
    sym '@punctuation.delimiter' { Punctuation },                 -- delimiters (e.g. `;` / `.` / `,`)
    sym '@punctuation.bracket' { sym '@punctuation.delimiter' },  -- brackets (e.g. `()` / `{}` / `[]`)
    sym '@punctuation.special' { SpecialChar },                   -- special symbols (e.g. `{}` in string interpolation)
    sym '@conceal' { Conceal },
    sym '@scope' {},                                              -- scope block
    sym '@reference' {},                                          -- scope block
    sym '@inlay.hint' { LspCodeLens },                            -- identifier reference

    -- Locals
    sym '@definition' {},                                          -- various definitions
    sym '@definition.constant' { sym '@constant' },                -- constants
    sym '@definition.function' { sym '@function' },  -- functions
    sym '@definition.method' { sym '@method' },                    -- methods
    sym '@definition.var' { fg = t.cyan0 },                        -- variables
    sym '@definition.parameter' { sym '@parameter' },              -- parameters
    sym '@definition.macro' { sym '@function.macro' },             -- preprocessor macros
    sym '@definition.type' { Type },                               -- types or classes
    sym '@definition.field' { sym '@definition' },                 -- fields or properties
    sym '@definition.enum' { sym '@definition' },                  -- enumerations
    sym '@definition.namespace' { sym '@namespace' },              -- modules or namespaces
    sym '@definition.import' { sym '@definition' },                -- imported names
    sym '@definition.associated' { sym '@definition' },            -- the associated type of a variable

    -- LSP
    sym '@lsp.mod.declaration.c' {},
    sym '@lsp.mod.definition.c' {},
    sym '@lsp.mod.globalScope.c' {},

    -- Quickfix window.
    qfFileName { Directory },
    qfSeparator { Delimiter },
    qfLineNr { LineNr },
    qfError { Error },

    -- Vim Help Highlighting
    helpCommand { fg = T.text0, bg = T.surface1 },
    helpExample { fg = T.text1 },
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
    markdownH1 { fg = T.title, gui = 'bold' },
    markdownH2 { markdownH1 },
    markdownH3 { markdownH1 },
    markdownLinkText { URI },
    markdownUrl { URI },

    debugPC { CursorLine },   -- used for highlighting the current line in terminal-debug
    debugBreakpoint { Debug }, -- used for breakpoint colors in terminal-debug

    -- Telescope
    TelescopeSelection { PmenuSel },
    TelescopePromptPrefix { fg = T.red },
    TelescopeSelectionCaret { fg = T.red },
    TelescopeMatching { FuzzyMatch },
    -- Borderless styles.
    TelescopeNormal { Normal },
    TelescopeTitle { fg = T.blue, gui = 'bold' },
    TelescopeBorder { Border },
    TelescopePreviewNormal { Normal },
    TelescopePromptCounter { fg = T.subtext1 },
    TelescopePromptBorder { TelescopeBorder },
    TelescopePromptNormal { TelescopeNormal },
    TelescopeResultsTitle { TelescopeTitle },
    TelescopePromptTitle { TelescopeTitle, fg = T.purple },

    -- Cmp
    CmpItemAbbr { fg = T.subtext0 },
    CmpItemAbbrDeprecated { fg = T.subtext1, gui = 'strikethrough' },
    CmpItemKind { fg = T.blueEmphasis },
    CmpItemMenu { Normal },
    CmpItemAbbrMatch { FuzzyMatch },
    CmpItemAbbrMatchFuzzy { FuzzyMatch },

    -- kind support
    CmpItemKindSnippet { fg = T.purple },
    CmpItemKindKeyword { sym '@keyword' },
    CmpItemKindText { fg = T.cyan },
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
    CmpItemKindInterface { fg = T.yellow },
    CmpItemKindColor { fg = T.red },
    CmpItemKindReference { fg = T.red },
    CmpItemKindEnumMember { sym '@field' },
    CmpItemKindStruct { sym '@definition.type' },
    CmpItemKindValue { sym '@field' },
    CmpItemKindEvent { fg = T.blueEmphasis },
    CmpItemKindOperator { Operator },
    CmpItemKindTypeParameter { sym '@parameter' },
    CmpItemKindCopilot { fg = T.peach },
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
