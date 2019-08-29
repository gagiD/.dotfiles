git clone --bare https://github.com/gagiD/dotfiles.git $HOME/.dotfiles

dotfiles checkout

alias dotfiles='/usr/bin/git --git-dir=/home/gagi/.dotfiles/ --work-tree=/home/gagi'


mkdir -p .dotfiles-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles-backup/{}

dotfiles config --local status.showUntrackedFiles no
