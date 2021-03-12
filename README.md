# dots
My personal dotfiles.


## Setup
I use the [bare repo technique](https://www.atlassian.com/git/tutorials/dotfiles), 
which is pretty a elegant way of storing and tracking your dotfiles without having to resort to symlinks and such.

### tl;dr

```
git clone --bare https://github.com/ebsz/dots $HOME/.cfg
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg checkout
```
