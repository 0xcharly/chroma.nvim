local colors = {
  -- content here will not be touched
  -- PATCH_OPEN
  Normal = { fg = '#BEC7CF', bg = '#191E24' },
  NormalFloat = { link = 'Normal' },
  NormalNC = { link = 'Normal' },
  NormalSB = { link = 'Normal' },
  Bold = { bold = true },
  ['@text.strong'] = { link = 'Bold' },
  Boolean = { fg = '#ED8796' },
  ['@boolean'] = { link = 'Boolean' },
  Border = { fg = '#474E57' },
  FloatBorder = { link = 'Border' },
  VertSplit = { link = 'Border' },
  Character = { fg = '#FFAB7A' },
  ['@character'] = { link = 'Character' },
  CmpItemAbbr = { fg = '#8A939E' },
  CmpItemAbbrDeprecated = { fg = '#8A939E', strikethrough = true },
  CmpItemKind = { fg = '#8CC4F3' },
  CmpItemKindColor = { fg = '#D1717A' },
  CmpItemKindCopilot = { fg = '#FFC2B3' },
  CmpItemKindEvent = { fg = '#8CC4F3' },
  CmpItemKindInterface = { fg = '#F0D399' },
  CmpItemKindReference = { fg = '#D1717A' },
  CmpItemKindSnippet = { fg = '#CBAEF9' },
  CmpItemKindText = { fg = '#93E1D4' },
  CmpItemMenu = { fg = '#BEC7CF' },
  ColorColumn = { bg = '#21252C' },
  Comment = { fg = '#6E7681' },
  ['@comment'] = { link = 'Comment' },
  Conceal = { fg = '#ABB2BF' },
  ['@conceal'] = { link = 'Conceal' },
  ['@conditional'] = { link = 'Conditional' },
  Constant = { fg = '#FFAB7A' },
  ['@constant'] = { link = 'Constant' },
  Cursor = { fg = '#6E7681' },
  CursorIM = { link = 'Cursor' },
  NoiceCursor = { link = 'Cursor' },
  lCursor = { link = 'Cursor' },
  CursorColumn = { bg = '#21252C' },
  CursorLine = { bg = '#21252C' },
  debugPC = { link = 'CursorLine' },
  CursorLineNr = { fg = '#8A939E' },
  ['@debug'] = { link = 'Debug' },
  ['@constant.macro'] = { link = 'Define' },
  ['@define'] = { link = 'Define' },
  Delimiter = { fg = '#ABB2BF' },
  qfSeparator = { link = 'Delimiter' },
  ['@punctuation'] = { link = 'Delimiter' },
  DiagnosticError = { fg = '#D1717A' },
  DiagnosticFloatingError = { link = 'DiagnosticError' },
  DiagnosticSignError = { link = 'DiagnosticError' },
  LspDiagnosticsDefaultError = { link = 'DiagnosticError' },
  LspDiagnosticsFloatingError = { link = 'DiagnosticFloatingError' },
  LspDiagnosticsFloatingHint = { link = 'DiagnosticFloatingHint' },
  LspDiagnosticsFloatingInfo = { link = 'DiagnosticFloatingInfo' },
  LspDiagnosticsFloatingWarning = { link = 'DiagnosticFloatingWarn' },
  DiagnosticHint = { fg = '#8A939E' },
  DiagnosticFloatingHint = { link = 'DiagnosticHint' },
  DiagnosticSignHint = { link = 'DiagnosticHint' },
  LspDiagnosticsDefaultHint = { link = 'DiagnosticHint' },
  DiagnosticInfo = { fg = '#ABB2BF' },
  DiagnosticFloatingInfo = { link = 'DiagnosticInfo' },
  DiagnosticSignInfo = { link = 'DiagnosticInfo' },
  LspDiagnosticsDefaultInformation = { link = 'DiagnosticInfo' },
  LspDiagnosticsSignError = { link = 'DiagnosticSignError' },
  LspDiagnosticsSignHint = { link = 'DiagnosticSignHint' },
  LspDiagnosticsSignInformation = { link = 'DiagnosticSignInfo' },
  LspDiagnosticsSignWarning = { link = 'DiagnosticSignWarn' },
  DiagnosticUnderlineError = { sp = '#D1717A', underdotted = true },
  LspDiagnosticsUnderlineError = { link = 'DiagnosticUnderlineError' },
  DiagnosticUnderlineHint = { sp = '#89DCEB', underdotted = true },
  LspDiagnosticsUnderlineHint = { link = 'DiagnosticUnderlineHint' },
  DiagnosticUnderlineInfo = { sp = '#57A5FF', underdotted = true },
  LspDiagnosticsUnderlineInformation = { link = 'DiagnosticUnderlineInfo' },
  DiagnosticUnderlineWarn = { sp = '#F0D399', underdotted = true },
  LspDiagnosticsUnderlineWarning = { link = 'DiagnosticUnderlineWarn' },
  DiagnosticVirtualTextError = { fg = '#FFDCD6', bg = '#401C22' },
  LspDiagnosticsVirtualTextError = { link = 'DiagnosticVirtualTextError' },
  DiagnosticVirtualTextHint = { fg = '#ABB2BF', bg = '#21252C' },
  LspDiagnosticsVirtualTextHint = { link = 'DiagnosticVirtualTextHint' },
  DiagnosticVirtualTextInfo = { fg = '#161B22', bg = '#93B1F6' },
  LspDiagnosticsVirtualTextInformation = { link = 'DiagnosticVirtualTextInfo' },
  NoiceVirtualText = { link = 'DiagnosticVirtualTextInfo' },
  DiagnosticVirtualTextWarn = { fg = '#F8E3A0', bg = '#322515' },
  LspDiagnosticsVirtualTextWarning = { link = 'DiagnosticVirtualTextWarn' },
  DiagnosticWarn = { fg = '#F0D399' },
  DiagnosticFloatingWarn = { link = 'DiagnosticWarn' },
  DiagnosticSignWarn = { link = 'DiagnosticWarn' },
  LspDiagnosticsDefaultWarning = { link = 'DiagnosticWarn' },
  DiffAdd = { bg = '#437703' },
  DiffChange = { bg = '#4D2A00' },
  DiffDelete = { bg = '#770309' },
  DiffText = { fg = '#ABB2BF' },
  Directory = { fg = '#8CC4F3' },
  CmpItemKindFolder = { link = 'Directory' },
  qfFileName = { link = 'Directory' },
  Error = { fg = '#D1717A' },
  healthError = { link = 'Error' },
  qfError = { link = 'Error' },
  ['@error'] = { link = 'Error' },
  ['@text.danger'] = { link = 'Error' },
  ErrorMsg = { fg = '#D1717A' },
  ['@exception'] = { link = 'Exception' },
  File = { fg = '#BEC7CF' },
  CmpItemKindFile = { link = 'File' },
  Float = { fg = '#D1717A' },
  ['@float'] = { link = 'Float' },
  NoiceCmdlinePopupBorder = { link = 'FloatBorder' },
  NoiceCmdlinePopupBorderSearch = { link = 'FloatBorder' },
  NoicePopupBorder = { link = 'FloatBorder' },
  NoicePopupmenuBorder = { link = 'FloatBorder' },
  NoiceSplitBorder = { link = 'FloatBorder' },
  FloatShadow = { bg = '#191E24' },
  FloatShadowThrough = { bg = '#191E24' },
  FoldColumn = { fg = '#474E57' },
  Folded = { fg = '#8A939E', bg = '#21252C', italic = true },
  Function = { fg = '#8CC4F3' },
  ['@function'] = { link = 'Function' },
  ['@function.call'] = { link = 'Function' },
  ['@method'] = { link = 'Function' },
  ['@method.call'] = { link = 'Function' },
  FuzzyMatch = { fg = '#FFAB7A' },
  CmpItemAbbrMatch = { link = 'FuzzyMatch' },
  CmpItemAbbrMatchFuzzy = { link = 'FuzzyMatch' },
  TelescopeMatching = { link = 'FuzzyMatch' },
  GitSignsAdd = { fg = '#A4BF8D' },
  GitGutterAdd = { link = 'GitSignsAdd' },
  ['@text.diff.add'] = { link = 'GitSignsAdd' },
  GitSignsChange = { fg = '#F0D399' },
  GitGutterChange = { link = 'GitSignsChange' },
  GitSignsDelete = { fg = '#D1717A' },
  GitGutterDelete = { link = 'GitSignsDelete' },
  ['@text.diff.delete'] = { link = 'GitSignsDelete' },
  Identifier = { fg = '#8CC4F3' },
  ['@field'] = { link = 'Identifier' },
  ['@property'] = { link = 'Identifier' },
  ['@tag.attribute'] = { link = 'Identifier' },
  ['@text.reference'] = { link = 'Identifier' },
  Include = { fg = '#89DCEB' },
  Italic = { italic = true },
  ['@text.emphasis'] = { link = 'Italic' },
  Keyword = { fg = '#CBAEF9' },
  Exception = { link = 'Keyword' },
  ['@include'] = { link = 'Keyword' },
  ['@keyword'] = { link = 'Keyword' },
  LineNr = { fg = '#474E57' },
  qfLineNr = { link = 'LineNr' },
  LspCodeLens = { fg = '#474E57', italic = true },
  ['@inlay.hint'] = { link = 'LspCodeLens' },
  LspParameter = { fg = '#FFC2B3', italic = true },
  LspReferenceRead = { bg = '#21252C' },
  LspReferenceText = { bg = '#21252C' },
  LspReferenceWrite = { bg = '#21252C' },
  Macro = { fg = '#89DCEB' },
  ['@function.macro'] = { link = 'Macro' },
  ['@macro'] = { link = 'Macro' },
  MatchParen = { fg = '#BEC7CF', bold = true },
  ModeMsg = { fg = '#BEC7CF', bold = true },
  MoreMsg = { fg = '#57A5FF' },
  MsgArea = { fg = '#BEC7CF' },
  NoiceCmdline = { fg = '#BEC7CF', bg = '#191E24' },
  NoiceCmdlineIcon = { fg = '#8CC4F3' },
  NoiceCmdlineIconSearch = { fg = '#F0D399' },
  NoiceCmdlinePopup = { fg = '#BEC7CF', bg = '#191E24' },
  NoiceConfirm = { fg = '#BEC7CF', bg = '#191E24' },
  NoiceConfirmBorder = { fg = '#8CC4F3' },
  NoiceFormatProgressDone = { fg = '#161B22', bg = '#93B1F6' },
  NoiceFormatProgressTodo = { fg = '#BEC7CF', bg = '#21252C' },
  NoiceMini = { fg = '#BEC7CF' },
  NoicePopup = { fg = '#BEC7CF' },
  NoiceSplit = { fg = '#BEC7CF', bg = '#191E24' },
  NonText = { fg = '#474E57' },
  EndOfBuffer = { link = 'NonText' },
  Whitespace = { link = 'NonText' },
  Number = { fg = '#8CC4F3' },
  ['@number'] = { link = 'Number' },
  Operator = { fg = '#ABB2BF' },
  CmpItemKindOperator = { link = 'Operator' },
  ['@conditional.ternary'] = { link = 'Operator' },
  ['@operator'] = { link = 'Operator' },
  Pmenu = { fg = '#BEC7CF', bg = '#21252C' },
  NoicePopupmenu = { link = 'Pmenu' },
  PmenuSbar = { bg = '#2D3239' },
  NoiceScrollbar = { link = 'PmenuSbar' },
  PmenuSel = { bg = '#21252C' },
  NoicePopupmenuSelected = { link = 'PmenuSel' },
  PmenuThumb = { fg = '#6E7681' },
  NoiceScrollbarThumb = { link = 'PmenuThumb' },
  PreCondit = { fg = '#89DCEB' },
  PreProc = { fg = '#FFC2B3' },
  Define = { link = 'PreProc' },
  ['@attribute'] = { link = 'PreProc' },
  ['@preproc'] = { link = 'PreProc' },
  Punctuation = { fg = '#ABB2BF' },
  ['@tag.delimiter'] = { link = 'Punctuation' },
  Question = { fg = '#B0D095' },
  QuickFixLine = { bg = '#21252C', bold = true },
  ['@repeat'] = { link = 'Repeat' },
  Search = { fg = '#F8E3A0', bg = '#4D2A00', bold = true },
  IncSearch = { link = 'Search' },
  SignColumn = { fg = '#ABB2BF', bg = '#191E24' },
  SignColumnSB = { link = 'SignColumn' },
  Special = { fg = '#D1717A' },
  Debug = { link = 'Special' },
  NoicePopupmenuMatch = { link = 'Special' },
  SpecialComment = { link = 'Special' },
  Tag = { link = 'Special' },
  ['@constant.builtin'] = { link = 'Special' },
  SpecialChar = { fg = '#8CC4F3' },
  ['@character.special'] = { link = 'SpecialChar' },
  ['@punctuation.special'] = { link = 'SpecialChar' },
  ['@string.escape'] = { link = 'SpecialChar' },
  ['@string.special'] = { link = 'SpecialChar' },
  SpecialKey = { fg = '#ABB2BF', bg = '#191E24' },
  SpellBad = { sp = '#D1717A', undercurl = true },
  SpellCap = { sp = '#F0D399', undercurl = true },
  SpellLocal = { sp = '#ABB2BF', undercurl = true },
  SpellRare = { sp = '#8A939E', undercurl = true },
  Statement = { fg = '#CBAEF9' },
  Conditional = { link = 'Statement' },
  Label = { link = 'Statement' },
  Repeat = { link = 'Statement' },
  StatusLine = { fg = '#BEC7CF', bg = '#14191F' },
  StatusLineNC = { fg = '#ABB2BF', bg = '#14191F' },
  ['@storageclass'] = { link = 'StorageClass' },
  String = { fg = '#8BD5CA' },
  ['@string'] = { link = 'String' },
  ['@string.regex'] = { link = 'String' },
  ['@structure'] = { link = 'Structure' },
  Substitute = { fg = '#57A5FF', bg = '#21252C', italic = true },
  Success = { fg = '#A4BF8D' },
  healthSuccess = { link = 'Success' },
  TabLine = { fg = '#8A939E', bg = '#191E24' },
  TabLineFill = { bg = '#14191F' },
  TabLineSel = { fg = '#BEC7CF', bg = '#191E24', bold = true },
  ['@tag'] = { link = 'Tag' },
  TelescopeBorder = { fg = '#14191F', bg = '#14191F' },
  TelescopeNormal = { fg = '#ABB2BF', bg = '#14191F' },
  TelescopePreviewNormal = { fg = '#BEC7CF', bg = '#14191F' },
  TelescopePromptBorder = { fg = '#14191F', bg = '#14191F' },
  TelescopePromptCounter = { fg = '#6E7681' },
  TelescopePromptNormal = { fg = '#ABB2BF', bg = '#14191F' },
  TelescopePromptPrefix = { fg = '#D1717A' },
  TelescopePromptTitle = { fg = '#14191F', bg = '#B4BEFE', bold = true },
  TelescopeResultsTitle = { fg = '#14191F', bg = '#93B1F6', bold = true },
  TelescopeSelection = { fg = '#FFFFFF', bg = '#191E24' },
  TelescopeSelectionCaret = { fg = '#D1717A' },
  TelescopeTitle = { fg = '#14191F', bg = '#93B1F6', bold = true },
  Title = { fg = '#BEC7CF', bold = true },
  helpHeader = { link = 'Title' },
  ['@text.title'] = { link = 'Title' },
  Todo = { fg = '#161B22', bg = '#93B1F6', italic = true },
  ['@text.todo'] = { link = 'Todo' },
  TreesitterContext = { bg = '#21252C' },
  TreesitterContextLineNumber = { fg = '#474E57', bg = '#21252C' },
  Type = { fg = '#F0D399' },
  StorageClass = { link = 'Type' },
  Structure = { link = 'Type' },
  Typedef = { link = 'Type' },
  ['@definition.type'] = { link = 'Type' },
  ['@type'] = { link = 'Type' },
  ['@type.definition'] = { link = 'Typedef' },
  URI = { fg = '#89DCEB', underline = true },
  helpHyperTextJump = { link = 'URI' },
  markdownLinkText = { link = 'URI' },
  markdownUrl = { link = 'URI' },
  mkdLink = { link = 'URI' },
  ['@text.uri'] = { link = 'URI' },
  Underlined = { underline = true },
  Visual = { bg = '#2D3239' },
  VisualNOS = { link = 'Visual' },
  Warning = { fg = '#F0D399' },
  healthWarning = { link = 'Warning' },
  ['@text.warning'] = { link = 'Warning' },
  WarningMsg = { fg = '#F0D399' },
  WildMenu = { bg = '#21252C' },
  debugBreakpoint = { fg = '#57A5FF', bg = '#242E3D' },
  diffAdded = { fg = '#D1FBBC', bg = '#29411B' },
  diffChanged = { fg = '#F8E3A0', bg = '#322515' },
  diffFile = { fg = '#CBAEF9' },
  diffIndexLine = { fg = '#CBAEF9' },
  diffLine = { fg = '#ABB2BF' },
  diffNewFile = { fg = '#8CC4F3' },
  diffOldFile = { fg = '#ABB2BF' },
  diffRemoved = { fg = '#FFDCD6', bg = '#401C22' },
  helpCommand = { fg = '#BEC7CF', bg = '#2D3239' },
  helpExample = { fg = '#ABB2BF' },
  helpSectionDelim = { fg = '#ABB2BF' },
  markdownH1 = { fg = '#FFFFFF', bold = true },
  markdownH2 = { link = 'markdownH1' },
  markdownH3 = { link = 'markdownH1' },
  markdownHeadingDelimiter = { fg = '#ABB2BF' },
  mkdCodeDelimiter = { fg = '#BEC7CF' },
  mkdCodeStart = { fg = '#BEC7CF', bold = true },
  mkdCodeEnd = { link = 'mkdCodeStart' },
  ['@definition.constant'] = { link = '@constant' },
  ['@constructor'] = {},
  CmpItemKindConstructor = { link = '@constructor' },
  ['@definition'] = {},
  CmpItemKindConstant = { link = '@definition.constant' },
  CmpItemKindEnum = { link = '@definition.enum' },
  CmpItemKindField = { link = '@definition.field' },
  CmpItemKindFunction = { link = '@definition.function' },
  CmpItemKindMethod = { link = '@definition.method' },
  CmpItemKindModule = { link = '@definition.namespace' },
  CmpItemKindUnit = { link = '@definition.namespace' },
  CmpItemKindClass = { link = '@definition.type' },
  CmpItemKindStruct = { link = '@definition.type' },
  ['@definition.var'] = { fg = '#93E1D4' },
  CmpItemKindVariable = { link = '@definition.var' },
  ['@definition.associated'] = { link = '@definition' },
  ['@definition.enum'] = { link = '@definition' },
  ['@definition.field'] = { link = '@definition' },
  ['@definition.import'] = { link = '@definition' },
  ['@definition.namespace'] = { link = '@definition' },
  CmpItemKindEnumMember = { link = '@field' },
  CmpItemKindValue = { link = '@field' },
  ['@function.builtin'] = { fg = '#8CC4F3' },
  ['@definition.macro'] = { link = '@function.macro' },
  ['@definition.function'] = { link = '@function' },
  ['@keyword.return'] = { fg = '#D1717A' },
  CmpItemKindKeyword = { link = '@keyword' },
  ['@keyword.function'] = { link = '@keyword' },
  ['@keyword.operator'] = { link = '@keyword' },
  ['@label'] = {},
  ['@definition.method'] = { link = '@method' },
  ['@namespace'] = { fg = '#ED8796' },
  ['@none'] = {},
  ['@parameter'] = { fg = '#ABB2BF', italic = true },
  CmpItemKindTypeParameter = { link = '@parameter' },
  ['@definition.parameter'] = { link = '@parameter' },
  CmpItemKindProperty = { link = '@property' },
  ['@punctuation.delimiter'] = { fg = '#ABB2BF' },
  ['@punctuation.bracket'] = { link = '@punctuation.delimiter' },
  ['@reference'] = {},
  ['@scope'] = {},
  ['@symbol'] = {},
  ['@text'] = {},
  ['@text.environment'] = {},
  ['@text.environment.name'] = {},
  ['@text.literal'] = {},
  ['@text.math'] = { link = '@text.literal' },
  ['@text.note'] = { underline = true },
  ['@text.quote'] = { fg = '#ABB2BF', italic = true },
  ['@text.strike'] = { strikethrough = true },
  ['@text.underline'] = { underline = true },
  ['@type.builtin'] = { fg = '#FFAB7A' },
  ['@type.qualifier'] = { fg = '#D1717A' },
  ['@variable'] = {},
  ['@variable.builtin'] = { fg = '#B4BEFE' },
  -- PATCH_CLOSE
  -- content here will not be touched
}

-- colorschemes generally want to do this
vim.cmd 'highlight clear'
vim.cmd 'set t_Co=256'
vim.cmd "let g:colors_name='chroma-static'"

-- apply highlight groups
for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end
