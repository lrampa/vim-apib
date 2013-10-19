"syn clear
if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword apibCommand GET HEAD POST PUT DELETE TRACE OPTIONS CONNECT PATCH

syn match apibComment /---.*/
syn match apibHeaderSend />.*/
syn match apibHeaderReceived /<.*/
"syn region rteComment start=#/\*# end=#\*/#
"syn region rteString start=/"/ skip=/\\"/ end=/"/


hi def link apibCommand Statement
hi def link apibHeaderSend Character
hi def link apibHeaderReceived Number

hi def link apibComment Comment


let b:current_syntax = "apib"

