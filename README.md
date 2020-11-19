# gpk
An another package manager for Linux and FreeBSD
# Dependiences
  - ksh
# FreeBSD dependiences
  - bash
# Download
  - Arch package: https://github.com/glowiak/gpk/releases/download/0.1/gpk-0.1-1-any.pkg.tar.zst
  - Debian package: https://github.com/glowiak/gpk/releases/download/0.1/gpk-0.1-debian-any.tgz
  - RedHat/CEntOS package: https://github.com/glowiak/gpk/releases/download/0.1/gpk-0.1-redhat-any.tgz
  - FreeBSD package: https://github.com/glowiak/gpk/releases/download/0.1/gpk-0.1-freebsd-any.tgz
  - openSUSE package: https://github.com/glowiak/gpk/releases/download/0.1/gpk-0.1-opensuse-any.tgz
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
  - Next, download [buildpkg.sh script](https://github.com/glowiak/gpk/releases/download/buildpkg.sh/buildpkg.sh), go to directory that's one level up than build directory, copy buildpkg.sh to this dir, and type 'ksh buildpkg.sh build_directory_name' or on FreeBSD 'bash buildpkg.sh build_dir_name'
  This command will generate package file: name-version_arch.gpk. For example 'Tutorial-1.0_x86_64.gpk"
