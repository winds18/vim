" enable auto-popup for this completion with snipMate
  let g:acp_behaviorSnipmateLength = 1
"
" If non-zero, auto-popup is enabled at startup
" let g:acp_enableAtStartup = 1
"
" If non-zero, auto-popup is triggered by key mappings instead of |CursorMovedI| event. This is useful to avoid auto-popup by moving cursor in Insert mode
" let g:acp_mappingDriven = 0
"
" Value set to 'ignorecase' temporarily when auto-popup
" let g:acp_ignorecaseOption = 1
"
" Value set to 'complete' temporarily when auto-popup
" let g:acp_completeOption = '.,w,b,k'
"
" If non-zero, "preview" is added to 'completeopt' when auto-popup
" let g:acp_completeoptPreview = 0
"
" |g:acp_behavior-completefunc| for user-defined completion. If empty, this completion will be never attempted
" let g:acp_behaviorUserDefinedFunction = ''
"
" |g:acp_behavior-meets| for user-defined completion. If empty, this completion will be never attempted
" let g:acp_behaviorUserDefinedMeets = ''
"
" Pattern before the cursor, which are needed to attempt snipMate-trigger completion
" let g:acp_behaviorSnipmateLength = -1
"
" Command for keyword completion. This option is usually set "\<C-n>" or "\<C-p>"
" let g:acp_behaviorKeywordCommand = "\<C-n>"
"
" Length of keyword characters before the cursor, which are needed to attempt keyword completion. If negative value, this completion will be never attempted
" let g:acp_behaviorKeywordLength = 2
"
" List of string. If a word before the cursor matches to the front part of one of them, keyword completion won't be attempted
" E.g., when there are too many keywords beginning with "get" for the completion and auto-popup by entering "g", "ge", or "get" causes response degradation, set ["get"] to this option and avoid it
" let g:acp_behaviorKeywordIgnores = []
"
" Length of filename characters before the cursor, which are needed to attempt filename completion. If negative value, this completion will be never attempted
" let g:acp_behaviorFileLength = 0
"
" Length of keyword characters before the cursor, which are needed to attempt ruby omni-completion for methods. If negative value, this completion will be never attempted
" let g:acp_behaviorRubyOmniMethodLength = 0
"
" Length of keyword characters before the cursor, which are needed to attempt ruby omni-completion for symbols. If negative value, this completion will be never attempted
" let g:acp_behaviorRubyOmniSymbolLength = 1
"
" Length of keyword characters before the cursor, which are needed to attempt python omni-completion. If negative value, this completion will be never attempted
" let g:acp_behaviorPythonOmniLength = 0
"
" Length of keyword characters before the cursor, which are needed to attempt perl omni-completion. If negative value, this completion will be never attempted
" let g:acp_behaviorPerlOmniLength = -1
"
" Length of keyword characters before the cursor, which are needed to attempt XML omni-completion. If negative value, this completion will be never attempted
" let g:acp_behaviorXmlOmniLength = 0
"
" Length of keyword characters before the cursor, which are needed to attempt HTML omni-completion. If negative value, this completion will be never attempted
" let g:acp_behaviorHtmlOmniLength = 0
"
" Length of keyword characters before the cursor, which are needed to attempt CSS omni-completion for properties. If negative value, this completion will be never attempted
" let g:acp_behaviorCssOmniPropertyLength = 1
"
" Length of keyword characters before the cursor, which are needed to attempt CSS omni-completion for values. If negative value, this completion will be never attempted
" let g:acp_behaviorCssOmniValueLength = 0
"
" This option is for advanced users. This setting overrides other behavior options. This is a |Dictionary|. Each key corresponds to a filetype. '*' is default. Each value is a list. These are attempted in sequence until completion item is found. Each element is a |Dictionary| which has following items:
" "command": Command to be fed to open popup menu for completions
" "completefunc":'completefunc' will be set to this user-provided function during the completion. Only makes sense when "command" is "<C-x><C-u>"
" "meets":Name of the function which dicides whether or not to attempt this completion. It will be attempted if this function returns non-zero. This function takes a text before the cursor
" "onPopupClose":Name of the function which is called when popup menu for this completion is closed. Following completions will be suppressed if this function returns zero
" "repeat":If non-zero, the last completion is automatically repeated
" let g:acp_behavior = {}
"
"
