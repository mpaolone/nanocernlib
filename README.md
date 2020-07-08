# nanocernlib

A collection of commonly used cernlib routines packaged with cmake to easily build on modern systems.

This version is a fork of the original.  I have added the following disclaimer:
Made by Michael Paolone, based on code by Sylvester Joosten, based on an old MAC build of cernlib in 2015, which of course is based on the 2006 cernlib package developed by cern.  This code is use at your own risk and falls under any licensing of the original cernlib package: see https://cernlib.web.cern.ch/cernlib/

This build was tested with MacOSX 10.15.3 (Catalina) with gcc 10.1.0 installed from brew


# Installation
Note: the following instructions are given assuming you are using `bash` as your shell.
## Choose a working prefix
```bash
export PREFIX="/path/to/your/prefix"; mkdir -p $PREFIX
```
## Install all necessary dependencies
Ensure you have `cmake`, 'perl' and `gfortran` installed

## Run installation script

perl install.pl

If everything worked correctly, you should have these three files (unbroken soft links) in your /usr/local/lib directory:

  libgeant321.a
  libmathlib.a
  libmclibs.a
  libpacklib.a
  
Note:  One could make dynamic library links with the following command:
  g++-10 -fpic -dynamiclib -Wl,-all_load,-undefined,dynamic_lookup libnanocernlib_geant321.a -o libgeant321.dylib -lgfortran
for each respective library, but as of this writing, I haven't tested that the shared libraries work.