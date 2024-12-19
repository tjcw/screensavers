#!/bin/bash 
#
#  Copyright 2024 IBM Corporation
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
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

