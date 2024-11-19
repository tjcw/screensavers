# Linux Screensavers for Microsoft Windows

Scripts and tooling to create Live Linux distributions and turn them into
screensavers for use on Microsoft Windows systems.

I was rather taken with freeduc-cd 1.4.1 (still available from
https://sourceforge.net/projects/ofset/files/freeduc-cd/1.4.1/ )
and GamesKnoppix ( https://archive.org/details/gamesknoppix )
and I wondered whether they could be brought up to date. 
Most of the source is nowadays part of Debian, so I extracted the list of
packages with 'dpkg' by running each in a VM and scp-ing the output to the
hosting machine; I needed to use a CentOS 8 host because most linux
distributions nowadays do not recognise the ancient ciphers which were in
use then.

Then I found the live-build package. I wrote a
script bin/do_oi to build a suitable Live Linux iso. To run this,
you should 'git clone' this repo under ~/eclipse-workspace ; then go to an
empty directory, and run this script as

  sudo ~/eclipse-workspace/screensavers/bin/build_both

For this, you need a Debian 12 or newer system as a real or virtual machine, or
under Microsoft Windows WSL2.

This results in two 'iso's which can be run in a VM or booted on a real
system. But I wanted to run it as a screensaver for Windows, so I have
a further set of tools which packages it with qemu on a Windows system.

To use these tools, go to a Microsoft Windows system, install cygwin
with the 'mingw' compilers (x86_64-w64-mingw32-gcc) and install 
inno setup from https://jrsoftware.org/isinfo.php . With these and the contents of the 'packaging' directory
you can build a screensaver wrapper for 'qemu', and a package for
installation in the usual way for Windows.

Then go back to Linux, set up a file tree matching what you see in
the reference installation package, and use 'zip' to pack it all into
one file. Then take this to your Windows system and test it.

If you only have a Windows system, the Linux parts of the above instrucitons can be run under WSL2 (Windows Subsystem for Linux Version 2).

The reference zip files are supplied as part of the Sourceforge material at 
https://sourceforge.net/projects/linux-screensavers-for-windows/files/release1/ . 
To install these, download them to the target Windows system; unpack them with
the built-in Windows function to unpack zip files, and run the insttaller
executables. Then go to the screensaver selection screen and select one of
the new screensavers which appear, either 'fr2' or 'gk2'.

I also have tools to install and run these distributions in Microsoft's Windows Subsystem
for Linux (WSL2). To do this, follow instructions in bin/run_wsl2. You will need to 
install a Debian Linux distribution in WSL2, use the script bin/setup_wsl2 to install
the open source games and/or educational packages, and use bin/run_wsl2 to run the software.

The screensavers can be used as a digital billboard. For this you need to plug in 2 SVG files, one to display on the boot splash screen and one to display on the screensaver wallpaper. The splash screen is at svgs/splash.svg and the wallpaper is at content/common-files/home/user/face . You can use open source 'inkscape' to edit them, or I am told Adobe tooling also works.
