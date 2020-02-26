#!/bin/bash 
mkdir qemu
cp -r "/cygdrive/c/Program Files/qemu/." qemu
mv qemu/qemu-system-x86_64.exe  qemu/keep.qemu-system-x86_64.exe
rm qemu/qemu-system-*.exe
mv qemu/keep.qemu-system-x86_64.exe qemu/qemu-system-x86_64.exe
cat skeleton.iss
cd qemu
find . -type f -print |
while read name
do
  echo "Source: \"{src}\\qemu\\${name}\"; DestDir: \"{app}\\${name}\"; Flags: ignoreversion external"
done
