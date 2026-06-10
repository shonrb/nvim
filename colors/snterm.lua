local palette = {
    base00 = nil,
    base01 = 0,
    base02 = 0,
    base03 = 1,
    base04 = nil,
    base05 = 7,
    base06 = 15,
    base07 = 0,
    base08 = 4,
    base09 = 5,
    base0A = 6,
    base0B = 2,
    base0C = 3,
    base0D = 2,
    base0E = 4,
    base0F = 6,
    cterm00 = nil,
    cterm01 = 0,
    cterm02 = 0,
    cterm03 = 1,
    cterm04 = nil,
    cterm05 = 7,
    cterm06 = 7,
    cterm07 = 0,
    cterm08 = 4,
    cterm09 = 5,
    cterm0A = 6,
    cterm0B = 2,
    cterm0C = 3,
    cterm0D = 2,
    cterm0E = 4,
    cterm0F = 6
}

local hi = {}

hi.Normal                             = { fg = palette.base05, bg = palette.base00, sp = nil, ctermfg = palette.cterm05, ctermbg = nil }
hi.Bold                               = { fg = nil, bg = nil, sp = nil, ctermfg = nil, ctermbg = nil }
hi.Debug                              = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.Directory                          = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.Error                              = { fg = palette.base08, bg = palette.base00, sp = nil, ctermfg = palette.cterm08, ctermbg = palette.cterm00 }
hi.ErrorMsg                           = { fg = palette.base08, bg = palette.base00, sp = nil, ctermfg = palette.cterm08, ctermbg = palette.cterm00 }
hi.Exception                          = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.FoldColumn                         = { fg = palette.base0C, bg = palette.base00, sp = nil, ctermfg = palette.cterm0C, ctermbg = palette.cterm00 }
hi.Folded                             = { fg = palette.base03, bg = palette.base01, sp = nil, ctermfg = palette.cterm03, ctermbg = palette.cterm01 }
hi.IncSearch                          = { fg = palette.base01, bg = palette.base09, sp = nil, ctermfg = palette.cterm01, ctermbg = palette.cterm09 }
hi.Italic                             = { fg = nil, bg = nil, italic = true, sp = nil, ctermfg = nil, ctermbg = nil }
hi.Macro                              = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.MatchParen                         = { fg = nil, bg = palette.base03, sp = nil, ctermfg = nil, ctermbg = palette.cterm03 }
hi.ModeMsg                            = { fg = palette.base0B, bg = nil, sp = nil, ctermfg = palette.cterm0B, ctermbg = nil }
hi.MoreMsg                            = { fg = palette.base0B, bg = nil, sp = nil, ctermfg = palette.cterm0B, ctermbg = nil }
hi.Question                           = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.Search                             = { fg = palette.base01, bg = palette.base0A, sp = nil, ctermfg = palette.cterm01, ctermbg = palette.cterm0A }
hi.Substitute                         = { fg = palette.base01, bg = palette.base0A, sp = nil, ctermfg = palette.cterm01, ctermbg = palette.cterm0A }
hi.SpecialKey                         = { fg = palette.base03, bg = nil, sp = nil, ctermfg = palette.cterm03, ctermbg = nil }
hi.TooLong                            = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.Underlined                         = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.Visual                             = { fg = nil, bg = palette.base02, sp = nil, ctermfg = nil, ctermbg = palette.cterm02 }
hi.VisualNOS                          = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.WarningMsg                         = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.WildMenu                           = { fg = palette.base08, bg = palette.base0A, sp = nil, ctermfg = palette.cterm08, ctermbg = palette.cterm0A }
hi.Title                              = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.Conceal                            = { fg = palette.base0D, bg = palette.base00, sp = nil, ctermfg = palette.cterm0D, ctermbg = palette.cterm00 }
hi.Cursor                             = { fg = palette.base00, bg = palette.base05, sp = nil, ctermfg = palette.cterm00, ctermbg = palette.cterm05 }
hi.NonText                            = { fg = palette.base03, bg = nil, sp = nil, ctermfg = palette.cterm03, ctermbg = nil }
hi.LineNr                             = { fg = palette.base04, bg = palette.base00, sp = nil, ctermfg = palette.cterm04, ctermbg = palette.cterm00 }
hi.SignColumn                         = { fg = palette.base04, bg = palette.base00, sp = nil, ctermfg = palette.cterm04, ctermbg = palette.cterm00 }
hi.StatusLine                         = { fg = palette.base05, bg = palette.base02, overline = true, underline = true, ctermfg = palette.cterm05, ctermbg = palette.cterm00 }
hi.StatusLineNC                       = { fg = palette.base04, bg = palette.base01, overline = true, underline = true, ctermfg = palette.cterm04, ctermbg = palette.cterm00 }
hi.WinBar                             = { fg = palette.base05, bg = nil, sp = nil, ctermfg = palette.cterm05, ctermbg = nil }
hi.WinBarNC                           = { fg = palette.base04, bg = nil, sp = nil, ctermfg = palette.cterm04, ctermbg = nil }
hi.VertSplit                          = { fg = palette.base05, bg = palette.base00, sp = nil, ctermfg = palette.cterm05, ctermbg = palette.cterm00 }
hi.ColorColumn                        = { fg = nil, bg = palette.base01, sp = nil, ctermfg = nil, ctermbg = palette.cterm01 }
hi.CursorColumn                       = { fg = nil, bg = palette.base01, sp = nil, ctermfg = nil, ctermbg = palette.cterm01 }
hi.CursorLine                         = { fg = nil, bg = nil, sp = "grey", underdotted = true, ctermfg = nil, ctermbg = nil }
hi.CursorLineNr                       = { fg = palette.base04, bg = palette.base01, sp = nil, ctermfg = palette.cterm04, ctermbg = palette.cterm01 }
hi.QuickFixLine                       = { fg = nil, bg = palette.base01, sp = nil, ctermfg = nil, ctermbg = palette.cterm01 }
hi.PMenu                              = { fg = palette.base05, bg = palette.base01, sp = nil, ctermfg = palette.cterm05, ctermbg = palette.cterm01 }
hi.PMenuSel                           = { fg = palette.base01, bg = palette.base05, sp = nil, ctermfg = palette.cterm01, ctermbg = palette.cterm05 }
hi.TabLine                            = { fg = palette.base03, bg = palette.base01, underline = true, overline = true, ctermfg = palette.cterm05, ctermbg = palette.cterm00 }
hi.TabLineFill                        = { fg = palette.base03, bg = palette.base01, underline = true, overline = true, ctermfg = palette.cterm05, ctermbg = palette.cterm00 }
hi.TabLineSel                         = { fg = palette.base0B, bg = palette.base01, underline = true, overline = true, ctermfg = palette.cterm05, ctermbg = palette.cterm00 }

-- Standard syntax highlighting
hi.Boolean                            = { fg = palette.base09, bg = nil, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.Character                          = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.Comment                            = { fg = palette.base03, bg = nil, sp = nil, ctermfg = palette.cterm03, ctermbg = nil }
hi.Conditional                        = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.Constant                           = { fg = palette.base09, bg = nil, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.Define                             = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.Delimiter                          = { fg = palette.base0F, bg = nil, sp = nil, ctermfg = palette.cterm0F, ctermbg = nil }
hi.Float                              = { fg = palette.base09, bg = nil, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.Function                           = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.Identifier                         = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.Include                            = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.Keyword                            = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.Label                              = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.Number                             = { fg = palette.base09, bg = nil, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.Operator                           = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.PreProc                            = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.Repeat                             = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.Special                            = { fg = palette.base0C, bg = nil, sp = nil, ctermfg = palette.cterm0C, ctermbg = nil }
hi.SpecialChar                        = { fg = palette.base0F, bg = nil, sp = nil, ctermfg = palette.cterm0F, ctermbg = nil }
hi.Statement                          = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.StorageClass                       = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.String                             = { fg = palette.base0B, bg = nil, sp = nil, ctermfg = palette.cterm0B, ctermbg = nil }
hi.Structure                          = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.Tag                                = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.Todo                               = { fg = palette.base0A, bg = palette.base01, sp = nil, ctermfg = palette.cterm0A, ctermbg = palette.cterm01 }
hi.Type                               = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.Typedef                            = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }

-- Git highlighting
hi.gitcommitOverflow                  = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.gitcommitSummary                   = { fg = palette.base0B, bg = nil, sp = nil, ctermfg = palette.cterm0B, ctermbg = nil }
hi.gitcommitComment                   = { fg = palette.base03, bg = nil, sp = nil, ctermfg = palette.cterm03, ctermbg = nil }
hi.gitcommitUntracked                 = { fg = palette.base03, bg = nil, sp = nil, ctermfg = palette.cterm03, ctermbg = nil }
hi.gitcommitDiscarded                 = { fg = palette.base03, bg = nil, sp = nil, ctermfg = palette.cterm03, ctermbg = nil }
hi.gitcommitSelected                  = { fg = palette.base03, bg = nil, sp = nil, ctermfg = palette.cterm03, ctermbg = nil }
hi.gitcommitHeader                    = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.gitcommitSelectedType              = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.gitcommitUnmergedType              = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.gitcommitDiscardedType             = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.gitcommitBranch                    = { fg = palette.base09, bg = nil, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.gitcommitUntrackedFile             = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.gitcommitUnmergedFile              = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.gitcommitDiscardedFile             = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.gitcommitSelectedFile              = { fg = palette.base0B, bg = nil, sp = nil, ctermfg = palette.cterm0B, ctermbg = nil }

-- GitGutter highlighting
hi.GitGutterAdd                       = { fg = palette.base0B, bg = palette.base00, sp = nil, ctermfg = palette.cterm0B, ctermbg = palette.cterm00 }
hi.GitGutterChange                    = { fg = palette.base0D, bg = palette.base00, sp = nil, ctermfg = palette.cterm0D, ctermbg = palette.cterm00 }
hi.GitGutterDelete                    = { fg = palette.base08, bg = palette.base00, sp = nil, ctermfg = palette.cterm08, ctermbg = palette.cterm00 }
hi.GitGutterChangeDelete              = { fg = palette.base0E, bg = palette.base00, sp = nil, ctermfg = palette.cterm0E, ctermbg = palette.cterm00 }

-- Spelling highlighting
hi.SpellBad                           = { fg = nil, bg = nil, undercurl = true, sp = palette.base08, ctermfg = nil, ctermbg = nil }
hi.SpellLocal                         = { fg = nil, bg = nil, undercurl = true, sp = palette.base0C, ctermfg = nil, ctermbg = nil }
hi.SpellCap                           = { fg = nil, bg = nil, undercurl = true, sp = palette.base0D, ctermfg = nil, ctermbg = nil }
hi.SpellRare                          = { fg = nil, bg = nil, undercurl = true, sp = palette.base0E, ctermfg = nil, ctermbg = nil }

hi.DiagnosticError                    = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.DiagnosticWarn                     = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.DiagnosticInfo                     = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.DiagnosticHint                     = { fg = palette.base0C, bg = nil, sp = nil, ctermfg = palette.cterm0C, ctermbg = nil }
hi.DiagnosticUnderlineError           = { fg = nil, bg = nil, undercurl = true, sp = palette.base08, ctermfg = nil, ctermbg = nil }
hi.DiagnosticUnderlineWarning         = { fg = nil, bg = nil, undercurl = true, sp = palette.base0E, ctermfg = nil, ctermbg = nil }
hi.DiagnosticUnderlineWarn            = { fg = nil, bg = nil, undercurl = true, sp = palette.base0E, ctermfg = nil, ctermbg = nil }
hi.DiagnosticUnderlineInformation     = { fg = nil, bg = nil, undercurl = true, sp = palette.base0F, ctermfg = nil, ctermbg = nil }
hi.DiagnosticUnderlineHint            = { fg = nil, bg = nil, undercurl = true, sp = palette.base0C, ctermfg = nil, ctermbg = nil }

hi.LspReferenceText                   = { fg = nil, bg = nil, underline = true, sp = palette.base04, ctermfg = nil, ctermbg = nil }
hi.LspReferenceRead                   = { fg = nil, bg = nil, underline = true, sp = palette.base04, ctermfg = nil, ctermbg = nil }
hi.LspReferenceWrite                  = { fg = nil, bg = nil, underline = true, sp = palette.base04, ctermfg = nil, ctermbg = nil }
hi.LspDiagnosticsDefaultError         = { link = 'DiagnosticError' }
hi.LspDiagnosticsDefaultWarning       = { link = 'DiagnosticWarn' }
hi.LspDiagnosticsDefaultInformation   = { link = 'DiagnosticInfo' }
hi.LspDiagnosticsDefaultHint          = { link = 'DiagnosticHint' }
hi.LspDiagnosticsUnderlineError       = { link = 'DiagnosticUnderlineError' }
hi.LspDiagnosticsUnderlineWarning     = { link = 'DiagnosticUnderlineWarning' }
hi.LspDiagnosticsUnderlineInformation = { link = 'DiagnosticUnderlineInformation' }
hi.LspDiagnosticsUnderlineHint        = { link = 'DiagnosticUnderlineHint' }

hi.TSAnnotation                       = { fg = palette.base0F, bg = nil, sp = nil, ctermfg = palette.cterm0F, ctermbg = nil }
hi.TSAttribute                        = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.TSBoolean                          = { fg = palette.base09, bg = nil, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.TSCharacter                        = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.TSComment                          = { fg = palette.base03, bg = nil, italic = true, sp = nil, ctermfg = palette.cterm03, ctermbg = nil }
hi.TSConstructor                      = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.TSConditional                      = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.TSConstant                         = { fg = palette.base09, bg = nil, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.TSConstBuiltin                     = { fg = palette.base09, bg = nil, italic = true, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.TSConstMacro                       = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.TSError                            = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.TSException                        = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.TSField                            = { fg = palette.base05, bg = nil, sp = nil, ctermfg = palette.cterm05, ctermbg = nil }
hi.TSFloat                            = { fg = palette.base09, bg = nil, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.TSFunction                         = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.TSFuncBuiltin                      = { fg = palette.base0D, bg = nil, italic = true, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.TSFuncMacro                        = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.TSInclude                          = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.TSKeyword                          = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.TSKeywordFunction                  = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.TSKeywordOperator                  = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.TSLabel                            = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.TSMethod                           = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.TSNamespace                        = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.TSNone                             = { fg = palette.base05, bg = nil, sp = nil, ctermfg = palette.cterm05, ctermbg = nil }
hi.TSNumber                           = { fg = palette.base09, bg = nil, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.TSOperator                         = { fg = palette.base05, bg = nil, sp = nil, ctermfg = palette.cterm05, ctermbg = nil }
hi.TSParameter                        = { fg = palette.base05, bg = nil, sp = nil, ctermfg = palette.cterm05, ctermbg = nil }
hi.TSParameterReference               = { fg = palette.base05, bg = nil, sp = nil, ctermfg = palette.cterm05, ctermbg = nil }
hi.TSProperty                         = { fg = palette.base05, bg = nil, sp = nil, ctermfg = palette.cterm05, ctermbg = nil }
hi.TSPunctDelimiter                   = { fg = palette.base0F, bg = nil, sp = nil, ctermfg = palette.cterm0F, ctermbg = nil }
hi.TSPunctBracket                     = { fg = palette.base05, bg = nil, sp = nil, ctermfg = palette.cterm05, ctermbg = nil }
hi.TSPunctSpecial                     = { fg = palette.base0F, bg = nil, sp = nil, ctermfg = palette.cterm0F, ctermbg = nil }
hi.TSRepeat                           = { fg = palette.base0E, bg = nil, sp = nil, ctermfg = palette.cterm0E, ctermbg = nil }
hi.TSString                           = { fg = palette.base0B, bg = nil, sp = nil, ctermfg = palette.cterm0B, ctermbg = nil }
hi.TSStringRegex                      = { fg = palette.base0C, bg = nil, sp = nil, ctermfg = palette.cterm0C, ctermbg = nil }
hi.TSStringEscape                     = { fg = palette.base0C, bg = nil, sp = nil, ctermfg = palette.cterm0C, ctermbg = nil }
hi.TSSymbol                           = { fg = palette.base0B, bg = nil, sp = nil, ctermfg = palette.cterm0B, ctermbg = nil }
hi.TSTag                              = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.TSTagDelimiter                     = { fg = palette.base0F, bg = nil, sp = nil, ctermfg = palette.cterm0F, ctermbg = nil }
hi.TSText                             = { fg = palette.base05, bg = nil, sp = nil, ctermfg = palette.cterm05, ctermbg = nil }
hi.TSStrong                           = { fg = nil, bg = nil, sp = nil, ctermfg = nil, ctermbg = nil }
hi.TSEmphasis                         = { fg = palette.base09, bg = nil, italic = true, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.TSUnderline                        = { fg = palette.base00, bg = nil, underline = true, sp = nil, ctermfg = palette.cterm00, ctermbg = nil }
hi.TSStrike                           = { fg = palette.base00, bg = nil, strikethrough = true, sp = nil, ctermfg = palette.cterm00, ctermbg = nil }
hi.TSTitle                            = { fg = palette.base0D, bg = nil, sp = nil, ctermfg = palette.cterm0D, ctermbg = nil }
hi.TSLiteral                          = { fg = palette.base09, bg = nil, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.TSURI                              = { fg = palette.base09, bg = nil, underline = true, sp = nil, ctermfg = palette.cterm09, ctermbg = nil }
hi.TSType                             = { fg = palette.base0A, bg = nil, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.TSTypeBuiltin                      = { fg = palette.base0A, bg = nil, italic = true, sp = nil, ctermfg = palette.cterm0A, ctermbg = nil }
hi.TSVariable                         = { fg = palette.base08, bg = nil, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }
hi.TSVariableBuiltin                  = { fg = palette.base08, bg = nil, italic = true, sp = nil, ctermfg = palette.cterm08, ctermbg = nil }

hi.TSDefinition                       = { fg = nil, bg = nil, underline = true, sp = palette.base04, ctermfg = nil, ctermbg = nil }
hi.TSDefinitionUsage                  = { fg = nil, bg = nil, underline = true, sp = palette.base04, ctermfg = nil, ctermbg = nil }
hi.TSCurrentScope                     = { fg = nil, bg = nil, sp = nil, ctermfg = nil, ctermbg = nil }

hi.LspInlayHint                       = { fg = palette.base03, bg = nil, italic = true, sp = nil, ctermfg = palette.cterm03, ctermbg = nil }

if vim.fn.has('nvim-0.8.0') then
    hi['@comment']                  = { link = 'TSComment' }
    hi['@error']                    = { link = 'TSError' }
    hi['@none']                     = { link = 'TSNone' }
    hi['@preproc']                  = { link = 'PreProc' }
    hi['@define']                   = { link = 'Define' }
    hi['@operator']                 = { link = 'TSOperator' }
    hi['@punctuation.delimiter']    = { link = 'TSPunctDelimiter' }
    hi['@punctuation.bracket']      = { link = 'TSPunctBracket' }
    hi['@punctuation.special']      = { link = 'TSPunctSpecial' }
    hi['@string']                   = { link = 'TSString' }
    hi['@string.regex']             = { link = 'TSStringRegex' }
    hi['@string.escape']            = { link = 'TSStringEscape' }
    hi['@string.special']           = { link = 'SpecialChar' }
    hi['@character']                = { link = 'TSCharacter' }
    hi['@character.special']        = { link = 'SpecialChar' }
    hi['@boolean']                  = { link = 'TSBoolean' }
    hi['@number']                   = { link = 'TSNumber' }
    hi['@float']                    = { link = 'TSFloat' }
    hi['@function']                 = { link = 'TSFunction' }
    hi['@function.call']            = { link = 'TSFunction' }
    hi['@function.builtin']         = { link = 'TSFuncBuiltin' }
    hi['@function.macro']           = { link = 'TSFuncMacro' }
    hi['@method']                   = { link = 'TSMethod' }
    hi['@method.call']              = { link = 'TSMethod' }
    hi['@constructor']              = { link = 'TSConstructor' }
    hi['@parameter']                = { link = 'TSParameter' }
    hi['@keyword']                  = { link = 'TSKeyword' }
    hi['@keyword.function']         = { link = 'TSKeywordFunction' }
    hi['@keyword.operator']         = { link = 'TSKeywordOperator' }
    hi['@keyword.return']           = { link = 'TSKeyword' }
    hi['@conditional']              = { link = 'TSConditional' }
    hi['@repeat']                   = { link = 'TSRepeat' }
    hi['@debug']                    = { link = 'Debug' }
    hi['@label']                    = { link = 'TSLabel' }
    hi['@include']                  = { link = 'TSInclude' }
    hi['@exception']                = { link = 'TSException' }
    hi['@type']                     = { link = 'TSType' }
    hi['@type.builtin']             = { link = 'TSTypeBuiltin' }
    hi['@type.qualifier']           = { link = 'TSKeyword' }
    hi['@type.definition']          = { link = 'TSType' }
    hi['@storageclass']             = { link = 'StorageClass' }
    hi['@attribute']                = { link = 'TSAttribute' }
    hi['@field']                    = { link = 'TSField' }
    hi['@property']                 = { link = 'TSProperty' }
    hi['@variable']                 = { link = 'TSVariable' }
    hi['@variable.builtin']         = { link = 'TSVariableBuiltin' }
    hi['@constant']                 = { link = 'TSConstant' }
    hi['@constant.builtin']         = { link = 'TSConstant' }
    hi['@constant.macro']           = { link = 'TSConstant' }
    hi['@namespace']                = { link = 'TSNamespace' }
    hi['@symbol']                   = { link = 'TSSymbol' }
    hi['@text']                     = { link = 'TSText' }
    hi['@text.diff.add']            = { link = 'DiffAdd' }
    hi['@text.diff.delete']         = { link = 'DiffDelete' }
    hi['@text.strong']              = { link = 'TSStrong' }
    hi['@text.emphasis']            = { link = 'TSEmphasis' }
    hi['@text.underline']           = { link = 'TSUnderline' }
    hi['@text.strike']              = { link = 'TSStrike' }
    hi['@text.title']               = { link = 'TSTitle' }
    hi['@text.literal']             = { link = 'TSLiteral' }
    hi['@text.uri']                 = { link = 'TSUri' }
    hi['@text.math']                = { link = 'Number' }
    hi['@text.environment']         = { link = 'Macro' }
    hi['@text.environment.name']    = { link = 'Type' }
    hi['@text.reference']           = { link = 'TSParameterReference' }
    hi['@text.todo']                = { link = 'Todo' }
    hi['@text.note']                = { link = 'Tag' }
    hi['@text.warning']             = { link = 'DiagnosticWarn' }
    hi['@text.danger']              = { link = 'DiagnosticError' }
    hi['@tag']                      = { link = 'TSTag' }
    hi['@tag.attribute']            = { link = 'TSAttribute' }
    hi['@tag.delimiter']            = { link = 'TSTagDelimiter' }
    hi['@function.method']          = { link = '@method' }
    hi['@function.method.call']     = { link = '@method.call' }
    hi['@comment.error']            = { link = '@text.danger' }
    hi['@comment.warning']          = { link = '@text.warning' }
    hi['@comment.hint']             = { link = 'DiagnosticHint' }
    hi['@comment.info']             = { link = 'DiagnosticInfo' }
    hi['@comment.todo']             = { link = '@text.todo' }
    hi['@diff.plus']                = { link = '@text.diff.add' }
    hi['@diff.minus']               = { link = '@text.diff.delete' }
    hi['@diff.delta']               = { link = 'DiffChange' }
    hi['@string.special.url']       = { link = '@text.uri' }
    hi['@keyword.directive']        = { link = '@preproc' }
    hi['@keyword.directive.define'] = { link = '@define' }
    hi['@keyword.storage']          = { link = '@storageclass' }
    hi['@keyword.conditional']      = { link = '@conditional' }
    hi['@keyword.debug']            = { link = '@debug' }
    hi['@keyword.exception']        = { link = '@exception' }
    hi['@keyword.import']           = { link = '@include' }
    hi['@keyword.repeat']           = { link = '@repeat' }
    hi['@variable.parameter']       = { link = '@parameter' }
    hi['@variable.member']          = { link = '@field' }
    hi['@module']                   = { link = '@namespace' }
    hi['@number.float']             = { link = '@float' }
    hi['@string.special.symbol']    = { link = '@symbol' }
    hi['@string.regexp']            = { link = '@string.regex' }
    hi['@markup.strong']            = { link = '@text.strong' }
    hi['@markup.italic']            = { link = 'Italic' }
    hi['@markup.link']              = { link = '@text.link' }
    hi['@markup.strikethrough']     = { link = '@text.strikethrough' }
    hi['@markup.heading']           = { link = '@text.title' }
    hi['@markup.raw']               = { link = '@text.literal' }
    hi['@markup.link']              = { link = '@text.reference' }
    hi['@markup.link.url']          = { link = '@text.uri' }
    hi['@markup.link.label']        = { link = '@string.special' }
    hi['@markup.list']              = { link = '@punctuation.special' }
end

hi.NvimInternalError = { fg = palette.base00, bg = palette.base08, sp = nil, ctermfg = palette.cterm00, ctermbg = palette.cterm08 }

hi.NormalFloat       = { fg = palette.base05, bg = palette.base00, sp = nil, ctermfg = palette.cterm05, ctermbg = palette.cterm00 }
hi.FloatBorder       = { fg = palette.base05, bg = palette.base00, sp = nil, ctermfg = palette.cterm05, ctermbg = palette.cterm00 }
hi.NormalNC          = { fg = palette.base05, bg = palette.base00, sp = nil, ctermfg = palette.cterm05, ctermbg = palette.cterm00 }
hi.TermCursor        = { fg = palette.base00, bg = palette.base05, sp = nil, ctermfg = palette.cterm00, ctermbg = palette.cterm05 }
hi.TermCursorNC      = { fg = palette.base00, bg = palette.base05, sp = nil, ctermfg = palette.cterm00, ctermbg = palette.cterm05 }

hi.User1             = { fg = palette.base08, bg = palette.base02, sp = nil, ctermfg = palette.cterm08, ctermbg = palette.cterm02 }
hi.User2             = { fg = palette.base0E, bg = palette.base02, sp = nil, ctermfg = palette.cterm0E, ctermbg = palette.cterm02 }
hi.User3             = { fg = palette.base05, bg = palette.base02, sp = nil, ctermfg = palette.cterm05, ctermbg = palette.cterm02 }
hi.User4             = { fg = palette.base0C, bg = palette.base02, sp = nil, ctermfg = palette.cterm0C, ctermbg = palette.cterm02 }
hi.User5             = { fg = palette.base05, bg = palette.base02, sp = nil, ctermfg = palette.cterm05, ctermbg = palette.cterm02 }
hi.User6             = { fg = palette.base05, bg = palette.base01, sp = nil, ctermfg = palette.cterm05, ctermbg = palette.cterm01 }
hi.User7             = { fg = palette.base05, bg = palette.base02, sp = nil, ctermfg = palette.cterm05, ctermbg = palette.cterm02 }
hi.User8             = { fg = palette.base00, bg = palette.base02, sp = nil, ctermfg = palette.cterm00, ctermbg = palette.cterm02 }
hi.User9             = { fg = palette.base00, bg = palette.base02, sp = nil, ctermfg = palette.cterm00, ctermbg = palette.cterm02 }

hi.TreesitterContext = { fg = nil, bg = palette.base01, italic = true, sp = nil, ctermfg = nil, ctermbg = palette.cterm01 }

vim.g.terminal_color_0  = palette.base00
vim.g.terminal_color_1  = palette.base08
vim.g.terminal_color_2  = palette.base0B
vim.g.terminal_color_3  = palette.base0A
vim.g.terminal_color_4  = palette.base0D
vim.g.terminal_color_5  = palette.base0E
vim.g.terminal_color_6  = palette.base0C
vim.g.terminal_color_7  = palette.base05
vim.g.terminal_color_8  = palette.base03
vim.g.terminal_color_9  = palette.base08
vim.g.terminal_color_10 = palette.base0B
vim.g.terminal_color_11 = palette.base0A
vim.g.terminal_color_12 = palette.base0D
vim.g.terminal_color_13 = palette.base0E
vim.g.terminal_color_14 = palette.base0C
vim.g.terminal_color_15 = palette.base07

vim.g.base16_gui00      = palette.base00
vim.g.base16_gui01      = palette.base01
vim.g.base16_gui02      = palette.base02
vim.g.base16_gui03      = palette.base03
vim.g.base16_gui04      = palette.base04
vim.g.base16_gui05      = palette.base05
vim.g.base16_gui06      = palette.base06
vim.g.base16_gui07      = palette.base07
vim.g.base16_gui08      = palette.base08
vim.g.base16_gui09      = palette.base09
vim.g.base16_gui0A      = palette.base0A
vim.g.base16_gui0B      = palette.base0B
vim.g.base16_gui0C      = palette.base0C
vim.g.base16_gui0D      = palette.base0D
vim.g.base16_gui0E      = palette.base0E
vim.g.base16_gui0F      = palette.base0F


--vim.g.colors_name = "blahblahblah"
vim.o.termguicolors = false
vim.cmd.hi("clear")

for group, settings in pairs(hi) do
    --settings.force = true
    vim.api.nvim_set_hl(0, group, settings)
end
