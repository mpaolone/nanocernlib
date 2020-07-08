use File::chdir;
use Cwd;
#here I assume you want to build into the existing build and install directories, but really you can change these to any directory of your choosing.
my $curDir = getcwd();
print $curDir."\n";
my $buildDir = $curDir."/build";
print $buildDir."\n";
my $installDir = $curDir."/install";
#change the compiler options if you are using another version of gcc, or if you want to try the native MacOS clang++
my $GCC = "gcc-10";
my $GPP = "g++-10";

$CWD = $buildDir;
system("cmake -DCMAKE_C_COMPILER=$GCC -DCMAKE_CXX_COMPILER=$GPP -DCMAKE_INSTALL_PREFIX=$installDir $curDir");
system("make -j8");
system("make install");
$CWD = $curDir;

if(-e "/usr/local/lib/libgeant321.a"){
	system("rm -f /usr/local/lib/libgeant321.a");
}
system("ln -s $installDir/lib/libnanocernlib_geant321.a /usr/local/lib/libgeant321.a");

if(-e "/usr/local/lib/libmathlib.a"){
	system("rm -f /usr/local/lib/libmathlib.a");
}
system("ln -s $installDir/lib/libnanocernlib_mathlib.a /usr/local/lib/libmathlib.a");

if(-e "/usr/local/lib/libmclibs.a"){
	system("rm -f /usr/local/lib/libmclibs.a");
}
system("ln -s $installDir/lib/libnanocernlib_mclibs.a /usr/local/lib/libmclibs.a");

if(-e "/usr/local/lib/libpacklib.a"){
	system("rm -f /usr/local/lib/libpacklib.a");
}
system("ln -s $installDir/lib/libnanocernlib_packlib.a /usr/local/lib/libpacklib.a");


