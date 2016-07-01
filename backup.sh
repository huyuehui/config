#!/bin/bash
set -e -x

CONFIG_HOME=~/work/projects/config

echo "Making a backup of your importantant configure files..."
mkdir -p kernel
cp -p /usr/src/linux/.config $CONFIG_HOME/kernel/
mkdir -p emacs/el-get-init-files
cp -p ~/.emacs.d/init.el $CONFIG_HOME/emacs/
rsync -av ~/.emacs.d/el-get/el-get-init-files/ $CONFIG_HOME/emacs/el-get-init-files/
mkdir -p fvwm
cp -p -r ~/.fvwm/* $CONFIG_HOME/fvwm/
mkdir -p $CONFIG_HOME/gentoo/etc/portage
rsync -av /etc/portage/ $CONFIG_HOME/gentoo/etc/portage/
mkdir -p $CONFIG_HOME/gentoo/var/lib/portage
cp -p /var/lib/portage/world $CONFIG_HOME/gentoo/var/lib/portage/
echo "Backup Done!"
