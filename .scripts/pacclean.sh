#!/usr/bin/env zsh
#
# Script to update and clean pacman 
# inspired by /r/archlinux/comments/ki34iw/kind_reminder_to_remind_you_to_clean_your_systems/ggol2mf/

# -e                exit script if any commands fail 
# -u                treat unset variables as an error
# -o pipefail:      make pipes produce a failure return code on command errors
set -eu -o pipefail

printf "Running pacman update...\n"
sudo pacman -Syu;

printf "Removing orphans...\n"
if [[ $(pacman -Qtdq) ]]; then # check if there actually are any packages to remove, to avoid errors
    sudo pacman -Rns $(pacman -Qtdq)
fi

printf "Cleaning pacman cache.."
sudo pacman -Sc

printf "\nDone!\n"
