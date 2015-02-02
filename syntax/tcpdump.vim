" In The Name Of God
" Vim syntax file
" Last Change:	2015 Feb 02
" Maintainer:	Parham Alvani <parham.alvani@gmail.com>
" Language: TcpDump
"
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn case ignore

" Mac Address
syn match tcpMacAddress	/\(\x\{2}:\)\{5}\x\{2}/

" IPv4 Address
syn match tcpIp4Address	/\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}/

" Packet length
syn keyword tcpLength	length

" Tcp header
syn keyword tcpHeader	ack seq win options
syn keyword tcpOptions	nop sack TS

" Timestamp
syn match tcpTimeStamp	/\d\{2}:\d\{2}:\d\{2}\.\d\{6}/

hi def link tcpTimeStamp	String
hi def link tcpMacAddress	Type
hi def link tcpIp4Address	Type
hi def link tcpHeader	Identifier
hi def link tcpOptions	PreProc
