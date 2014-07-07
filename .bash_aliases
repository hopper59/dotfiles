#alias lal = 'ls -al'

alias lal='ls -al'
alias bashReb='exec bash'
alias zshReb='exec zsh'
alias myshare='cd ~/shared'
alias myproj='cd ~/Projects'

#datto
alias dattous='ssh root@admin.dattobackup.com -i ~/ubun'
alias ftpdatto='sftp -i ~/ubun root@admin.dattobackup.com'
alias dattoca='ssh root@admin.dattobackup.ca -i ~/ubun'

#test webserver
alias testWeb='ssh root@admin.kfrancis.us.dev'
alias testSftp='sftp root@admin.kfrancis.us.dev'

#git things
alias gs='git status'
alias gb='git branch'
alias gr='git remote -v'
alias gl='git log --graph --decorate=short'
alias gc='git commit -v'
alias gf='git fetch --all'
alias updateMaster='git remote | grep -v kfrancis | tr -d "\n" | xargs -0 -I repo git checkout -B master repo/master'

alias clipper='gnome-screenshot -i'

alias pycharm='~/pyCharm/bin/pycharm.sh&'
alias phpstorm='/opt/PhpStorm/bin/phpstorm.sh&'


