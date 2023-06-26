local colors = {
  -- content here will not be touched
  -- PATCH_OPEN
Normal = {fg = "#B1C3D2", bg = "#151B23"},
CmpItemMenu = {link = "Normal"},
NormalFloat = {link = "Normal"},
NormalNC = {link = "Normal"},
NormalSB = {link = "Normal"},
TabLineFill = {link = "Normal"},
TelescopeNormal = {link = "Normal"},
TelescopePreviewNormal = {link = "Normal"},
Bold = {bold = true},
["@text.strong"] = {link = "Bold"},
Boolean = {fg = "#F5C2E7"},
["@boolean"] = {link = "Boolean"},
Border = {fg = "#313244"},
FloatBorder = {link = "Border"},
TelescopeBorder = {link = "Border"},
VertSplit = {link = "Border"},
Character = {fg = "#FAB285"},
["@character"] = {link = "Character"},
CmpItemAbbr = {fg = "#848F9F"},
CmpItemAbbrDeprecated = {fg = "#7A8390", strikethrough = true},
CmpItemKind = {fg = "#8BB5DA"},
CmpItemKindColor = {fg = "#FE9AA4"},
CmpItemKindCopilot = {fg = "#F2CECE"},
CmpItemKindEvent = {fg = "#8BB5DA"},
CmpItemKindInterface = {fg = "#E5DCAE"},
CmpItemKindReference = {fg = "#FE9AA4"},
CmpItemKindSnippet = {fg = "#B4BEFE"},
CmpItemKindText = {fg = "#92D8D2"},
Comment = {fg = "#7A8390"},
["@comment"] = {link = "Comment"},
Conceal = {fg = "#454759"},
LineNr = {link = "Conceal"},
NonText = {link = "Conceal"},
["@conceal"] = {link = "Conceal"},
["@conditional"] = {link = "Conditional"},
Constant = {fg = "#D8B48D"},
["@constant"] = {link = "Constant"},
["@lsp.type.interface.rust"] = {link = "Constant"},
Cursor = {fg = "#90A4BB"},
CursorIM = {link = "Cursor"},
lCursor = {link = "Cursor"},
CursorLine = {bg = "#212A36"},
ColorColumn = {link = "CursorLine"},
CursorColumn = {link = "CursorLine"},
debugPC = {link = "CursorLine"},
CursorLineNr = {fg = "#848F9F"},
Debug = {fg = "#FEC49A", bg = "#433028"},
debugBreakpoint = {link = "Debug"},
["@debug"] = {link = "Debug"},
["@constant.macro"] = {link = "Define"},
["@define"] = {link = "Define"},
qfSeparator = {link = "Delimiter"},
["@punctuation"] = {link = "Delimiter"},
DiagnosticFloatingError = {link = "DiagnosticError"},
DiagnosticSignError = {link = "DiagnosticError"},
LspDiagnosticsDefaultError = {link = "DiagnosticError"},
LspDiagnosticsFloatingError = {link = "DiagnosticFloatingError"},
LspDiagnosticsFloatingHint = {link = "DiagnosticFloatingHint"},
LspDiagnosticsFloatingInfo = {link = "DiagnosticFloatingInfo"},
LspDiagnosticsFloatingWarning = {link = "DiagnosticFloatingWarn"},
DiagnosticHint = {fg = "#848F9F"},
DiagnosticFloatingHint = {link = "DiagnosticHint"},
DiagnosticSignHint = {link = "DiagnosticHint"},
LspDiagnosticsDefaultHint = {link = "DiagnosticHint"},
DiagnosticInfo = {fg = "#92D8D2"},
DiagnosticFloatingInfo = {link = "DiagnosticInfo"},
DiagnosticSignInfo = {link = "DiagnosticInfo"},
LspDiagnosticsDefaultInformation = {link = "DiagnosticInfo"},
LspDiagnosticsSignError = {link = "DiagnosticSignError"},
LspDiagnosticsSignHint = {link = "DiagnosticSignHint"},
LspDiagnosticsSignInformation = {link = "DiagnosticSignInfo"},
LspDiagnosticsSignWarning = {link = "DiagnosticSignWarn"},
DiagnosticUnderlineError = {sp = "#FE9AA4", underdotted = true},
LspDiagnosticsUnderlineError = {link = "DiagnosticUnderlineError"},
DiagnosticUnderlineHint = {sp = "#848F9F", underdotted = true},
LspDiagnosticsUnderlineHint = {link = "DiagnosticUnderlineHint"},
DiagnosticUnderlineInfo = {sp = "#92D8D2", underdotted = true},
LspDiagnosticsUnderlineInformation = {link = "DiagnosticUnderlineInfo"},
DiagnosticUnderlineWarn = {sp = "#E5DCAE", underdotted = true},
LspDiagnosticsUnderlineWarning = {link = "DiagnosticUnderlineWarn"},
DiagnosticVirtualTextError = {fg = "#FE9FA9", bg = "#40262E"},
LspDiagnosticsVirtualTextError = {link = "DiagnosticVirtualTextError"},
DiagnosticVirtualTextHint = {fg = "#848F9F", bg = "#192029"},
LspDiagnosticsVirtualTextHint = {link = "DiagnosticVirtualTextHint"},
DiagnosticVirtualTextInfo = {fg = "#89DCEB", bg = "#233A48"},
LspDiagnosticsVirtualTextInformation = {link = "DiagnosticVirtualTextInfo"},
DiagnosticVirtualTextWarn = {fg = "#F9E1AE", bg = "#343637"},
LspDiagnosticsVirtualTextWarning = {link = "DiagnosticVirtualTextWarn"},
DiagnosticFloatingWarn = {link = "DiagnosticWarn"},
DiagnosticSignWarn = {link = "DiagnosticWarn"},
LspDiagnosticsDefaultWarning = {link = "DiagnosticWarn"},
DiffAdd = {fg = "#AFF3C0", bg = "#243D2E"},
diffAdded = {link = "DiffAdd"},
DiffChange = {fg = "#CAB4F4", bg = "#312B40"},
diffChanged = {link = "DiffChange"},
DiffDelete = {fg = "#FE9FA9", bg = "#40262E"},
diffRemoved = {link = "DiffDelete"},
DiffText = {fg = "#90A4BB"},
diffLine = {link = "DiffText"},
Directory = {fg = "#8BB5DA"},
CmpItemKindFolder = {link = "Directory"},
qfFileName = {link = "Directory"},
Error = {fg = "#FE9AA4"},
DiagnosticError = {link = "Error"},
ErrorMsg = {link = "Error"},
healthError = {link = "Error"},
qfError = {link = "Error"},
["@error"] = {link = "Error"},
["@text.danger"] = {link = "Error"},
["@exception"] = {link = "Exception"},
File = {fg = "#B1C3D2"},
CmpItemKindFile = {link = "File"},
Float = {fg = "#F5C2E7"},
["@float"] = {link = "Float"},
FloatShadow = {bg = "#131920"},
FloatShadowThrough = {bg = "#131920"},
FoldColumn = {bg = "#151B23"},
Folded = {fg = "#7A8390", italic = true},
Function = {fg = "#8BB5DA"},
["@function"] = {link = "Function"},
["@function.call"] = {link = "Function"},
["@method"] = {link = "Function"},
["@method.call"] = {link = "Function"},
FuzzyMatch = {fg = "#D8B48D"},
CmpItemAbbrMatch = {link = "FuzzyMatch"},
CmpItemAbbrMatchFuzzy = {link = "FuzzyMatch"},
TelescopeMatching = {link = "FuzzyMatch"},
FzfLuaBorder = {fg = "#23282F", bg = "#23282F"},
FzfLuaColorsBg = {fg = "#23282F"},
FzfLuaColorsBgSel = {link = "FzfLuaColorsBg"},
FzfLuaColorsGutter = {link = "FzfLuaColorsBg"},
FzfLuaColorsFg = {fg = "#B1C3D2"},
FzfLuaColorsFgSel = {link = "FzfLuaColorsFg"},
FzfLuaColorsHl = {fg = "#8BB5DA"},
FzfLuaColorsHlSel = {link = "FzfLuaColorsHl"},
FzfLuaColorsInfo = {fg = "#7A8390"},
FzfLuaColorsHeader = {link = "FzfLuaColorsInfo"},
FzfLuaColorsSpinner = {link = "FzfLuaColorsInfo"},
FzfLuaColorsMarker = {fg = "#A8CBA4"},
FzfLuaColorsPointer = {fg = "#8BB5DA"},
FzfLuaColorsPrompt = {fg = "#B4BEFE"},
FzfLuaNormal = {fg = "#B1C3D2", bg = "#151B23"},
FzfLuaScrollFloatEmpty = {bg = "#151B23"},
FzfLuaTitle = {fg = "#151B23", bg = "#8BB5DA", bold = true},
GitSignsAdd = {fg = "#A8CBA4"},
GitGutterAdd = {link = "GitSignsAdd"},
["@text.diff.add"] = {link = "GitSignsAdd"},
GitSignsChange = {fg = "#B4BEFE"},
GitGutterChange = {link = "GitSignsChange"},
GitSignsDelete = {fg = "#FE9AA4"},
GitGutterDelete = {link = "GitSignsDelete"},
["@text.diff.delete"] = {link = "GitSignsDelete"},
Identifier = {fg = "#B1C3D2"},
["@field"] = {link = "Identifier"},
["@parameter"] = {link = "Identifier"},
["@property"] = {link = "Identifier"},
["@tag.attribute"] = {link = "Identifier"},
["@text.reference"] = {link = "Identifier"},
Include = {fg = "#92D8D2"},
Define = {link = "Include"},
Macro = {link = "Include"},
Italic = {italic = true},
["@text.emphasis"] = {link = "Italic"},
["@include"] = {link = "Keyword"},
["@keyword"] = {link = "Keyword"},
qfLineNr = {link = "LineNr"},
LspCodeLens = {fg = "#7A8390", italic = true},
["@inlay.hint"] = {link = "LspCodeLens"},
LspParameter = {fg = "#F2CECE", italic = true},
LspReferenceText = {fg = "#9FCDFE", bg = "#203046"},
LspReferenceRead = {link = "LspReferenceText"},
LspReferenceWrite = {link = "LspReferenceText"},
LualineACommand = {fg = "#CAB4F4", bg = "#312B40"},
LualineZCommand = {link = "LualineACommand"},
LualineAInactive = {fg = "#90A4BB", bg = "#151B23"},
LualineZInactive = {link = "LualineAInactive"},
LualineAInsert = {fg = "#AFF3C0", bg = "#243D2E"},
LualineZInsert = {link = "LualineAInsert"},
LualineANormal = {fg = "#9FCDFE", bg = "#203046"},
LualineZNormal = {link = "LualineANormal"},
LualineAReplace = {fg = "#FE9FA9", bg = "#40262E"},
LualineZReplace = {link = "LualineAReplace"},
LualineAVisual = {fg = "#89DCEB", bg = "#233A48"},
LualineZVisual = {link = "LualineAVisual"},
LualineYCommand = {link = "LualineBCommand"},
LualineYInactive = {link = "LualineBInactive"},
LualineYInsert = {link = "LualineBInsert"},
LualineBNormal = {fg = "#848F9F", bg = "#192029"},
LualineBCommand = {link = "LualineBNormal"},
LualineBInactive = {link = "LualineBNormal"},
LualineBInsert = {link = "LualineBNormal"},
LualineBReplace = {link = "LualineBNormal"},
LualineBVisual = {link = "LualineBNormal"},
LualineYNormal = {link = "LualineBNormal"},
LualineYReplace = {link = "LualineBReplace"},
LualineYVisual = {link = "LualineBVisual"},
LualineXCommand = {link = "LualineCCommand"},
LualineXInactive = {link = "LualineCInactive"},
LualineXInsert = {link = "LualineCInsert"},
LualineCNormal = {fg = "#7A8390", bg = "#1D2530"},
LualineCCommand = {link = "LualineCNormal"},
LualineCInactive = {link = "LualineCNormal"},
LualineCInsert = {link = "LualineCNormal"},
LualineCReplace = {link = "LualineCNormal"},
LualineCVisual = {link = "LualineCNormal"},
LualineXNormal = {link = "LualineCNormal"},
LualineXReplace = {link = "LualineCReplace"},
LualineXVisual = {link = "LualineCVisual"},
["@function.macro"] = {link = "Macro"},
["@macro"] = {link = "Macro"},
MatchParen = {fg = "#D8E1E3"},
ModeMsg = {fg = "#B1C3D2", bold = true},
MoreMsg = {fg = "#89DCEB", bg = "#233A48"},
MsgArea = {fg = "#B1C3D2"},
EndOfBuffer = {link = "NonText"},
Whitespace = {link = "NonText"},
Number = {fg = "#8BB5DA"},
["@number"] = {link = "Number"},
CmpItemKindOperator = {link = "Operator"},
["@conditional.ternary"] = {link = "Operator"},
["@operator"] = {link = "Operator"},
Pmenu = {fg = "#B1C3D2", bg = "#23282F"},
PmenuSbar = {bg = "#31323A"},
PmenuSel = {fg = "#9FCDFE", bg = "#203046"},
TabLineSel = {link = "PmenuSel"},
TelescopeSelection = {link = "PmenuSel"},
PmenuThumb = {bg = "#AAABB6"},
PreProc = {fg = "#F2CECE"},
PreCondit = {link = "PreProc"},
["@attribute"] = {link = "PreProc"},
["@preproc"] = {link = "PreProc"},
Punctuation = {fg = "#90A4BB"},
Delimiter = {link = "Punctuation"},
Operator = {link = "Punctuation"},
helpSectionDelim = {link = "Punctuation"},
markdownHeadingDelimiter = {link = "Punctuation"},
mkdCodeDelimiter = {link = "Punctuation"},
["@punctuation.delimiter"] = {link = "Punctuation"},
["@punctuation.special.rust"] = {link = "Punctuation"},
["@tag.delimiter"] = {link = "Punctuation"},
Question = {fg = "#8ED29C"},
QuickFixLine = {bg = "#192029", bold = true},
["@repeat"] = {link = "Repeat"},
Search = {fg = "#F9E1AE", bg = "#343637", bold = true},
IncSearch = {link = "Search"},
SignColumn = {bg = "#151B23"},
SignColumnSB = {link = "SignColumn"},
Special = {fg = "#FE9AA4"},
Tag = {link = "Special"},
["@constant.builtin"] = {link = "Special"},
SpecialChar = {fg = "#F2CECE"},
["@character.special"] = {link = "SpecialChar"},
["@punctuation.special"] = {link = "SpecialChar"},
["@string.escape"] = {link = "SpecialChar"},
["@string.special"] = {link = "SpecialChar"},
SpecialComment = {fg = "#F5C2E7"},
SpecialKey = {fg = "#90A4BB"},
SpellBad = {sp = "#FE9AA4", undercurl = true},
SpellCap = {sp = "#E5DCAE", undercurl = true},
SpellLocal = {sp = "#92D8D2", undercurl = true},
SpellRare = {sp = "#848F9F", undercurl = true},
Statement = {fg = "#B4BEFE"},
Conditional = {link = "Statement"},
Exception = {link = "Statement"},
Keyword = {link = "Statement"},
Label = {link = "Statement"},
Repeat = {link = "Statement"},
StatusLine = {fg = "#B1C3D2", bg = "#1D2530"},
StatusLineNC = {fg = "#90A4BB", bg = "#1D2530"},
StorageClass = {fg = "#B4BEFE"},
["@storageclass"] = {link = "StorageClass"},
String = {fg = "#92D8D2"},
["@string"] = {link = "String"},
["@string.regex"] = {link = "String"},
["@structure"] = {link = "Structure"},
Substitute = {fg = "#89DCEB", bg = "#233A48", bold = true},
Success = {fg = "#A8CBA4"},
healthSuccess = {link = "Success"},
TabLine = {fg = "#848F9F", bg = "#151B23"},
["@tag"] = {link = "Tag"},
TelescopePromptBorder = {link = "TelescopeBorder"},
TelescopePromptNormal = {link = "TelescopeNormal"},
TelescopePromptCounter = {fg = "#7A8390"},
TelescopePromptPrefix = {fg = "#FE9AA4"},
TelescopePromptTitle = {fg = "#B4BEFE", bold = true},
TelescopeSelectionCaret = {fg = "#FE9AA4"},
TelescopeTitle = {fg = "#8BB5DA", bold = true},
TelescopeResultsTitle = {link = "TelescopeTitle"},
TerminalColor0 = {fg = "#848F9F"},
TerminalColor1 = {fg = "#FE9AA4"},
TerminalColor10 = {fg = "#8ED29C"},
TerminalColor11 = {fg = "#FAB285"},
TerminalColor12 = {fg = "#89B5FA"},
TerminalColor13 = {fg = "#D0AFF8"},
TerminalColor14 = {fg = "#71D1C7"},
TerminalColor15 = {fg = "#90A4BB"},
TerminalColor2 = {fg = "#A8CBA4"},
TerminalColor3 = {fg = "#E5DCAE"},
TerminalColor4 = {fg = "#8BB5DA"},
TerminalColor5 = {fg = "#B4BEFE"},
TerminalColor6 = {fg = "#92D8D2"},
TerminalColor7 = {fg = "#B1C3D2"},
TerminalColor8 = {fg = "#7A8390"},
TerminalColor9 = {fg = "#FE818D"},
Title = {fg = "#D8E1E3", bold = true},
helpHeader = {link = "Title"},
markdownH1 = {link = "Title"},
["@text.title"] = {link = "Title"},
Todo = {fg = "#9FCDFE", bg = "#203046", italic = true},
["@text.todo"] = {link = "Todo"},
Type = {fg = "#A8CBA4"},
Structure = {link = "Type"},
Typedef = {link = "Type"},
["@definition.type"] = {link = "Type"},
["@type"] = {link = "Type"},
["@type.builtin"] = {link = "Type"},
["@type.definition"] = {link = "Typedef"},
URI = {fg = "#92D8D2", underline = true},
helpHyperTextJump = {link = "URI"},
markdownLinkText = {link = "URI"},
markdownUrl = {link = "URI"},
mkdLink = {link = "URI"},
["@text.uri"] = {link = "URI"},
Underlined = {underline = true},
Winseparator = {link = "VertSplit"},
Visual = {fg = "#9FCDFE", bg = "#203046"},
VisualNOS = {link = "Visual"},
Warning = {fg = "#E5DCAE"},
DiagnosticWarn = {link = "Warning"},
WarningMsg = {link = "Warning"},
healthWarning = {link = "Warning"},
["@text.warning"] = {link = "Warning"},
WildMenu = {bg = "#23282F"},
diffFile = {fg = "#B4BEFE"},
diffIndexLine = {fg = "#B4BEFE"},
diffNewFile = {fg = "#8BB5DA"},
diffOldFile = {fg = "#90A4BB"},
helpCommand = {fg = "#B1C3D2", bg = "#192029"},
helpExample = {fg = "#90A4BB"},
markdownH2 = {link = "markdownH1"},
markdownH3 = {link = "markdownH1"},
mkdCodeStart = {fg = "#B1C3D2", bg = "#151B23", bold = true},
mkdCodeEnd = {link = "mkdCodeStart"},
["@definition.constant"] = {link = "@constant"},
["@constructor"] = {},
CmpItemKindConstructor = {link = "@constructor"},
["@definition"] = {},
CmpItemKindConstant = {link = "@definition.constant"},
CmpItemKindEnum = {link = "@definition.enum"},
CmpItemKindField = {link = "@definition.field"},
CmpItemKindFunction = {link = "@definition.function"},
CmpItemKindMethod = {link = "@definition.method"},
CmpItemKindModule = {link = "@definition.namespace"},
CmpItemKindUnit = {link = "@definition.namespace"},
CmpItemKindClass = {link = "@definition.type"},
CmpItemKindStruct = {link = "@definition.type"},
["@definition.var"] = {},
CmpItemKindVariable = {link = "@definition.var"},
["@definition.associated"] = {link = "@definition"},
["@definition.enum"] = {link = "@definition"},
["@definition.field"] = {link = "@definition"},
["@definition.import"] = {link = "@definition"},
CmpItemKindEnumMember = {link = "@field"},
CmpItemKindValue = {link = "@field"},
["@function.builtin"] = {fg = "#8BB5DA"},
["@definition.macro"] = {link = "@function.macro"},
["@definition.function"] = {link = "@function"},
["@keyword.return"] = {fg = "#FE9AA4"},
CmpItemKindKeyword = {link = "@keyword"},
["@keyword.function"] = {link = "@keyword"},
["@keyword.operator"] = {link = "@keyword"},
["@label"] = {},
["@lsp.mod.declaration.c"] = {},
["@lsp.mod.definition.c"] = {},
["@lsp.mod.globalScope.c"] = {},
["@definition.method"] = {link = "@method"},
["@namespace"] = {fg = "#FE9AA4"},
["@definition.namespace"] = {link = "@namespace"},
["@none"] = {},
CmpItemKindTypeParameter = {link = "@parameter"},
["@definition.parameter"] = {link = "@parameter"},
CmpItemKindProperty = {link = "@property"},
["@punctuation.bracket"] = {link = "@punctuation.delimiter"},
["@reference"] = {},
["@scope"] = {},
["@symbol"] = {},
["@text"] = {},
["@text.environment"] = {},
["@text.environment.name"] = {},
["@text.literal"] = {},
["@text.math"] = {link = "@text.literal"},
["@text.note"] = {underline = true},
["@text.quote"] = {fg = "#90A4BB", italic = true},
["@text.strike"] = {strikethrough = true},
["@text.underline"] = {underline = true},
["@type.qualifier"] = {fg = "#FE9AA4"},
["@variable"] = {},
["@variable.builtin"] = {fg = "#B4BEFE"},
  -- PATCH_CLOSE
  -- content here will not be touched
}

-- colorschemes generally want to do this
vim.cmd 'highlight clear'
vim.cmd 'set t_Co=256'
vim.cmd "let g:colors_name='mrsuit'"

-- apply highlight groups
for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end

-- Update terminal colors.
for i=0,15 do
  vim.g[string.format('terminal_color_%i', i)] = colors[string.format('TerminalColor%i', i)].fg
end
