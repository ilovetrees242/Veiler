# Veiler
This repository contains code related to my package manager for LFS. I want to use LFS as my main system everyday, yes that's right! Some people do want to daily drive their LFS system but package management is the biggest issue they all encounter. So I created my own for myself, and maybe others soon  

# NOTE

This was made for my use mostly, its still under development so some packages might not get managed properly or some packages might break other packages. When I think it's atleast somewhat usable I will publish its code in releases.
* This package manager only works with bash, and doesnt use posix shell scripting only
* DO NOT use this as your main package manager because this can break at any time
* Report any found bugs in issues
* The dependency resolving algorithm lives on hopes and dreams

# Using this with LFS
First of all, this won't work before chapter 8 because all the packages are cross compiled. By default Veiler builds all the packages for the current system and uses any toolchain which is found

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
Information related to configuration, installation or usage can be found at https://ilovetrees242.github.io/DevHelp/Website/Veiler.html
