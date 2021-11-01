# screensavers

Scripts and tooling to create Live Linux distributions and turn them into
screensavers for use on Microsoft Windows systems.

I was rather taken with freeduc-cd 1.4.1 (still available from
https://sourceforge.net/projects/ofset/files/freeduc-cd/1.4.1/ )
and GamesKnoppix ( http://mirrors.sandino.net/knoppix/GamesKnoppix-3.7-0.2-EN/ )
and I wondered whether they coud be brought up to date. 
Most of the source is nowadays part of Debian, so I extracted the list of
packages with 'dpkg' by running each in a VM and scp-ing the output to the
hosting machine; I needed to use a CentOS 8 host because most linux
distributions nowadays do not recognise the ancient ciphers which were in
use then.

Then I found the live-build package. I wrote a
script scripts/bin/do_oi to build a suitable Live Linux iso. To run this,
you should 'git clone' this repo under ~/eclipse-workspace ; then go to an
empty directory, and run this script as
  sudo ~/eclipse-workspace/screensavers/scripts/bin/do_oi freeduc bullseye
or
  sudo ~/eclipse-workspace/screensavers/scripts/bin/do_oi gk bullseye

This results in an 'iso' which can be run in a VM or booted on a real
system. But I wanted to run it as a screensaver for Windows, so I have
a further set of tools which packages it with qemu on a Windows system.

To use these tools, go to a Microsoft Windows system, install cygwin
with the 'mingw' compilers (86_64-w64-mingw32-gcc) and install 
inno setup. With these and the contents of the 'packaging' directory
you can build a screensaver wrapper for 'qemu', and a package for
installation in the usual way for Windows.

Then go back to Linux, set up a file tree matching what you see in
the reference installation package, and use 'zip' to pack it all into
one file. Then take this to your Windows system and test it.
