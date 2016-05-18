" enable all function in all mode
  let g:user_emmet_mode='a'
"
" enable just for html/css
  let g:user_emmet_install_global=0
  autocmd FileType html,css,volt,php EmmetInstall
"
" remap the default <C-Y> leader
" let g:user_emmet_leader_key='<leader>'
"
" customize settings
" let g:user_emmet_settings = {
"\	'lang' : 'zh',
"\	'html' : {
"\		'filters' : 'html'
"\	},
"\	'perl' : {
"\		'aliases' : {
"\			'req' : 'require "|"'
"\		},
"\		'snippets' : {
"\			'use' : 'use strict\nuse warnings\n\n',
"\			'w' : 'warn \"${cursor}\";'
"\		}
"\	},
"\	'php' : {
"\		'extends' : 'html',
"\		'filters' : 'html,c'
"\	},
"\	'css' : {
"\		'filters' : 'fc'
"\	},
"\	'javascript' : {
"\		'snippets' : {
"\			'jq' : '\\$(function() {\n\t${cursor}${child}\n});',
"\			'jq:each' : '\\$.each(arr,function(index,item) {\n\t${child}\n});',
"\			'fn' : '(function() {\n\t${cursor}\n})();',
"\			'tm' : 'setTimeout(function() {\n\t${cursor}\n},100);'
"\		}
"\	}
"\}
"
" If you want to complete tags using omnifunc then add this
" let g:use_emmet_complete_tag = 1
"
"
