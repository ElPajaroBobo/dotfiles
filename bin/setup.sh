rm .bashrc .dircolors .vimrc .gitconfig
git clone --bare git@github.com:ElPajaroBobo/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
wget https://github.com/dandavison/delta/releases/download/0.8.3/git-delta_0.8.3_arm64.deb
wget https://golang.org/dl/go1.17.2.linux-arm64.tar.gz
export PATH=$PATH:/usr/local/go/bin
sudo rm -vrf /usr/local/go && sudo tar -C /usr/local -vxzf go1.17.2.linux-arm64.tar.gz
sudo dpkg -i git-delta_0.8.3_arm64.deb
go install github.com/justjanne/powerline-go@latest
config pull
. .bashrc
rm go1.17.2.linux-arm64.tar.gz
rm git-delta_0.8.3_arm64.deb

