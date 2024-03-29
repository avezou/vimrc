# Git aliases
alias gitdf="git difftool -y"
alias gitcomm="git commit"
alias gitcommam="git commit --amend"
alias gitbr="git checkout -b"
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'
--abbrev-commit"
alias svcstart="sudo systemctl start"
alias svcrestart="sudo systemctl restart"
alias svcreload="sudo systemctl reload"
alias svcstop="sudo systemctl stop"
alias svim="sudo vim"
alias nginxt="sudo nginx -t"
alias nginxreload="sudo systemctl relaod nginx"
# Install lsd with (sudo snap install lsd)
# Alias ls to lsd
alias ls="lsd -lah"
alias wanip='dig @resolver4.opendns.com myip.opendns.com +short'
alias wanip4='dig @resolver4.opendns.com myip.opendns.com +short -4'
alias wanip6='dig @resolver1.ipv6-sandbox.opendns.com AAAA myip.opendns.com +short -6'
