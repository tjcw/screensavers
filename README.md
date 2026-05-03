# Linux Screensavers for Microsoft Windows

Scripts and tooling to create Live Linux distributions and turn them into
screensavers for use on Microsoft Windows systems.

Prebuilt distributions available on the Internet Archive
[Best so far](https://archive.org/details/linux-screensavers-for-windows)
[Linux Foundation version](https://archive.org/details/LF-Linux-screensavers-for-Windows)
[Original 2005 edition](https://archive.org/details/linux-screensavers-for-windows-2005)

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
script bin/do_oi to build a suitable Live Linux iso and a script bin/build_both to wrap this. To run this,
you should 'git clone' this repo under ~/eclipse-workspace ; then go to an
empty directory, and run this script as

```
  sudo ~/eclipse-workspace/screensavers/bin/build_both
```

For this, you need a Debian testing (forky, 14)  or newer system as a real or virtual machine, or
under Microsoft Windows WSL2.

There is an experimental version which should run under Debian derivatives such 
as Ubuntu; for this you also need to clone the live-build and debootstrap repos
and run with

```
  git clone https://salsa.debian.org/live-team/live-build.git
  git clone https://salsa.debian.org/installer-team/debootstrap.git
  sudo ~/eclipse-workspace/screensavers/bin/build_both_ws
```

This results in two 'iso's which can be run in a VM or booted on a real
system. But I wanted to run it as a screensaver for Windows, so I have
a further set of tools which packages it with qemu on a Windows system.

To use these tools, go to a Microsoft Windows system, install cygwin
with the 'mingw' compilers (x86_64-w64-mingw32-gcc) and install 
inno setup from https://jrsoftware.org/isinfo.php . With these and the contents of the 'packaging' directory
you can build a screensaver wrapper for 'qemu', and a package for
installation in the usual way for Windows. 'jrsoftware' would like you to 
pay nowadays if you are a for-profit business, but individuals and non-profits
can use it free with an optional donation.

Then go back to Linux, set up a file tree matching what you see in
the reference installation package, and use 'zip' to pack it all into
one file. Then take this to your Windows system and test it.

If you only have a Windows system, the Linux parts of the above instrucitons can be run under WSL2 (Windows Subsystem for Linux Version 2).

The reference zip files are supplied as part of the 
[Best so far](https://archive.org/details/linux-screensavers-for-windows)
but it's more instructive to follow the tutorial here
https://developer.ibm.com/tutorials/awb-build-linux-dist-as-a-ms-windows-screen-saver/ at least to put in your own business logo instead of the Debian one.
There is a copy on Sourceforge here https://sourceforge.net/projects/linux-screensavers-for-windows/
To install these, download them to the target Windows system; unpack them with
the built-in Windows function to unpack zip files, and run the insttaller
executables. Then go to the screensaver selection screen and select one of
the new screensavers which appear, either 'fr2' or 'gk2'. These versions of
the screensavers are network-enabled so you can e.g. run firefox in the
screensaver and browse the web; if you are in an environment where
screensavers should not have Internet access, you can select 'fr2n' or 'gk2n'
instead.

I also have tools to install and run these distributions in Microsoft's Windows Subsystem
for Linux (WSL2). To do this, follow instructions in bin/run_wsl2. You will need to 
install a Debian Linux distribution in WSL2, use the script bin/setup_wsl2 to install
the open source games and/or educational packages, and use bin/run_wsl2 to run the software.

The screensavers can be used as a digital billboard. For this you need to plug in 2 SVG files, one to display on the boot splash screen and one to display on the screensaver wallpaper. The splash screen is at svgs/splash.svg and the wallpaper is at content/common-files/home/user/face . You can use open source 'inkscape' to edit them, or I am told Adobe tooling also works.

Documentation for the screensavers is available here
https://github.com/tjcw/screensaver-docs or here
https://gitlab.com/tjcw/screensaver-docs
