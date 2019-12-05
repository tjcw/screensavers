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

Then I wrote a 'phase 1' and 'phase 2' script; phase 1 is to set up a
basic Debian system, phase 2 is to make a Live Linux iso; and between these
scripts I ran 
for p in $(<p.list); do apt-get -y install $p 2>&1 ; done |tee install.log
to install as much as now is in Debian of the code that was present then.

This results in an 'iso' which can be run in a VM or booted on a real
system. But I wanted to run it as a screensaver for Windows, so I have
a further set of tools which packages it with qemu on a Windows system.

