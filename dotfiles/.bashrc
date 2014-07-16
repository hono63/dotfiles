# .bashrc

#20140127 ターミナルの環境変数PS1を変更?
#20140309 文字色を黄色に変更
export PS1="\e[0;33m[\u@\h \W]\\$ \e[0m"

#Application alias
alias 0xED='open -a /Applications/0xED.app'
#GNU Emacs for MacOS X
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

#SSH alias
alias pi='ssh pi@192.168.11.111'

#lsのカラー表示
alias ls="ls -G"
alias la="ls -a"
alias ll="ls -l"
