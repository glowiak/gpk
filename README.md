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
# Installation
On Arch simply install package with pacman -U. On other OS type it to install it:
  - cd / && tar xzvf path_to_package_file.tgz
# Usage
  - To install a package type 'sudo /usr/local/bin/gpk-install path_to_package.gpk' (NOTE!: You have to type full path of package file or it don't work)
  - To remove a package sudo 'sudo /usr/local/bin/gpk-remove package_name'
  - To create a package read 'Creating Packages' article on this site

# Software repository
You can install one of official packages from this [repodb](https://github.com/glowiak/gpk/releases/tag/repodb)
