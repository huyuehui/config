#!/bin/bash
set -e -x

echo "Making a backup of your importantant configure files..."
mkdir -p kernel
cp -p /usr/src/linux/.config ./kernel/
mkdir -p emacs/el-get-init-files
cp -p ~/.emacs.d/init.el ./emacs/
cp -p ~/.emacs.d/el-get/el-get-init-files/*.el ./emacs/el-get-init-files/
mkdir -p fvwm
cp -p -r ~/.fvwm/* ./fvwm/
mkdir -p /home/lucifer/work/projects/config/gentoo/etc/portage
mkdir -p /home/lucifer/work/projects/config/gentoo/var/lib/portage
pushd /etc/portage
cp -p -r make.conf package.license package.use package.unmask repos.conf /home/lucifer/work/projects/config/gentoo/etc/portage/
popd
cp -p /var/lib/portage/world /home/lucifer/work/projects/config/gentoo/var/lib/portage/
echo "Backup Done!"
