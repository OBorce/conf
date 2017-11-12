# Step 1:
update your system

``su -c "dnf upgrade --refresh"``

# Step 2:
install vim and zsh

``su -c "dnf install vim zsh"``

# Step 3:
set zsh as default shell (change *USERNAME* with your user)

``su -c "usermod -s /bin/zsh USERNAME"``

# Step 4:
get [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

``sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"``

# Step 5:
install GCC for C++, cmake, GO and tmux

``su -c "dnf install gcc-c++ cmake golang tmux"``

# Step 6:
setup zsh and vim

* Copy the alias.zsh file to .oh-my-zsh/lib/
* Copy the zero-theme file to .oh-my-zsh/themes/
* Copy the .zshrc and .vimrc to your home directory
* open vim and type :PlugInstall ( it will install fzf and all the other plugins for us)

# Step 7:
Setup your git (replace *Email* with your email)

git config --global user.email Email

[generate](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) and add an ssh to bitbucket


