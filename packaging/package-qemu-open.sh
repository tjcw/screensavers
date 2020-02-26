#!/bin/bash 
#mkdir qemu
#cp -r "/cygdrive/c/Program Files/qemu/." qemu
cat skeleton-open.iss
cd qemu
find . -type f -print |
while read name
do
  echo "Source: \"{src}\\qemu\\${name}\"; DestDir: \"{app}\\${name%/*}\"; Flags: ignoreversion external"
done
echo "Source: \"{src}\\extras\\fr2.iso\"; DestDir: \"{app}\\..\\QemuSaver\"; Flags: ignoreversion external"
echo "Source: \"{src}\\extras\\fr2.scr\"; DestDir: \"{sys}\"; Flags: ignoreversion external"
echo "; NOTE: Don't use "Flags: ignoreversion" on any shared system files"

