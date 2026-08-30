# Veiler
This repository contains code related to my package manager for LFS. I want to use LFS as my main system everyday, yes that's right! Some people do want to daily drive their LFS system but package management is the biggest issue they all encounter. So I created my own for myself, and maybe others soon  

# NOTE

This was made for my use mostly, its still under development so some packages might not get managed properly or some packages might break other packages. When I think it's atleast somewhat usable I will publish its code in releases.
* This package manager only works with bash, and doesnt work in posix mode
* DO NOT use this as your main package manager because this can break at any time
* Report any found bugs in issues

# Using this with LFS

First of all, this won't work before chapter 8 because all the packages are cross compiled. By default Veiler builds all the packages for the current system and the toolchain which is going to be used is determined by the build system of the packages. This package manager uses the versions provided in the LFS book and build commands from the latest LFS stable book.
And also, just after reaching chapter 8 you won't be able to use the package manager immediately. You would need to install wget on the LFS system either from source ( recommended ) or binary. Then, you need to download a release or the git version of the package manager and transfer it to the LFS system and run the installation script there.
Finally, you would need to use the `--no-root` option or set `$VEILERNOROOT` to 1 in `/etc/Veiler/veiler.conf` unless the shadow package is not installed. This is because `su` command would not be available which may cause issues. So you use the no root option but still be root.
Some packages have circular dependencies. Since the package manager cannot resolve circular dependencies ( it can only detect ), you would have to manually build the required packages properly in order to solve the dependency chain.

# Using with BLFS

On a BLFS system where the base LFS system is complete, you can use Veiler as long as the dependencies. Using on BLFS is less pain because the core system is already built

# Using this with normal distros
If you use this with normal distros then you will have 2 package managers, which may confuse eachother. Although you can install programs in /usr/local as it is not tracked by the distros package manager

# Required dependencies
The following dependencies are required in order to use the package manager ( usually they should be available on all systems )
* Wget ( For downloading packages )
* Findutils ( For cleaning directories and writing installed files )
* Coreutils ( For doing system actions )
* Sed ( For doing things bash cannot do )
* Grep ( Same as sed ) 

# Documentation
Information related to configuration, installation or usage can be found at https://ilovetrees242.github.io/Supplements/Website/Veiler.html

# Basic usage:

Install a package: `./Veiler unveil <PKG>`

Uninstall a package: `./Veiler veil <PKG>`

Search a package: `./Veiler search <PKG>`

Sync: `./Veiler search <PKG>`

# Basic options

__--tests         :__ Run test suites

__--documentation :__ Install documentation

__--help          :__ Help

__--quiet         :__ Quiet mode

__--ask           :__ Confirmation prompts

# Contributing

You can contribute by finding vulrenabilities and minor bugs and fixing them, or by expanding the package repository
