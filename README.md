# gpk
An another package manager for Linux and FreeBSD
# Dependiences
  - ksh
# FreeBSD dependiences
  - bash
# Download
  - Arch package: https://github.com/glowiak/gpk/releases/download/0.4/gpk-0.4-1-any.pkg.tar.zst
  - Debian package: https://github.com/glowiak/gpk/releases/download/0.4/gpk-0.4-debian-any.tgz
  - RedHat/CEntOS package: https://github.com/glowiak/gpk/releases/download/0.4/gpk-0.4-redhat-any.tgz
  - FreeBSD package: https://github.com/glowiak/gpk/releases/download/0.4/gpk-0.4-freebsd-any.tgz
  - openSUSE package: https://github.com/glowiak/gpk/releases/download/0.4/gpk-0.4-opensuse-any.tgz
  - Gentoo package: https://github.com/glowiak/gpk/releases/download/0.4/gpk-0.4-gentoo-any.tgz
  - VoidLinux package: https://github.com/glowiak/gpk/releases/download/0.4/gpk-0.4-voidlinux-any.tgz
# Installation
On Arch simply install package with pacman -U. On other OS type it to install it:
  - cd / && tar xzvf path_to_package_file.tgz
# Usage
  - To install a package type 'sudo /usr/local/bin/gpk-install path_to_package.gpk' (NOTE!: You have to type full path of package file or it don't work)
  - To remove a package sudo 'sudo /usr/local/bin/gpk-remove package_name'
  - To create a package read 'Creating Packages' section on this site

# Software repository
You can install one of official packages from this [repodb](https://github.com/glowiak/gpk/releases/tag/repodb)
# Creating Packages
You can create your own packages. Just read this section.\n
First create a directory to build your app.Next you have to create some files and dirs with following content in this directory:
  - content - directory that contains package files (you have to create usr, usr/local, opt e.t.c. directories.Main executable file should be stored in usr/local/bin dir)
  - pkgname - file that contains package name
  - pkgver - file that contains package version
  - pkgmk - file that contains package creator
  - pkgarch - file that contains package architecture (i386, x86_64 e.t.c.)
  - pkgdeps - file that contains package dependiences (for example: 'zenity ksh bash qemu')
  - pkgdesc - file that contains package description. (NOTE: You can't use ENTER/RETURN in it)
  - remove - file that contains deinstallation script for package
  - Next, download [buildpkg.sh script](https://github.com/glowiak/gpk/releases/download/buildpkg.sh/buildpkg.sh), go to directory that's one level up than build directory, copy buildpkg.sh to this dir, and type 'ksh buildpkg.sh build_directory_name' or on FreeBSD 'bash buildpkg.sh build_dir_name'
  This command will generate package file: name-version_arch.gpk. For example 'Tutorial-1.0_x86_64.gpk"
# News
  - Yes, I fixed this bug. Enjoy FreeBSD users.
  - gpk will be default PM on Antergos2020
  - gpk for Slackware - work in progress
  - I can't make version for slackware, because this distro don't support dependiences in slackpkg/installpkg, but you have gpk for Gentoo :) 
  - gpk for freebsd now works
  - added "@skipArchTest" argument
  - package file path don't have to be absolute
# Source code
There are a lot of questions "...where's the source code?". This app is wroten in ksh, so executable is source. Executable/source files:
  - /usr/local/bin/gpk-install
  - /usr/local/bin/gpk-remove
# Moving to Java 6?
"...it's only ksh (!) script..." - so I'm creating beta version for ArchLinux created in Java 1.6.0_25. It not works.
# Ubuntu says x86_64 is amd64, so how I can install packages on it?
Good question, I thinked on it a lot of time, and I have solution. If you want install normal gpk package on ubuntu or ubuntu gpk package on other os just type it: "/usr/local/bin/gpk-install packagename @skipArchTest"
# Typing absolute path is annoying
I know, so in 0.3 you don't have to type absolute package file path! Enjoy :)
# igpk
You may saw commandline package managers like apt,pacman,zypper,yum etc, so I made igpk - commandline tool to manage gpk software. igpk uses official package repository, to change it edit /opt/igpk/repo file. NOTE!: To use igpk you have to have installed and configured sudo!
# igpk installation
To install igpk download and install [this](https://github.com/glowiak/gpk/releases/download/igpk/igpk-1.1_x86_64.gpk) package.
# igpk uninstallation
To remove igpk from your system, just type as root: "/usr/local/bin/gpk-remove igpk"
# igpk usage
  - igpk @install <package> <version> <architecture> - install package
  - igpk @installAnyArch <package> <version> <architecture> - install package for any architecture (like @skipArchTest)
  - igpk @delete <package> - uninstall package
  - igpk @help - display help
