/*
 *  Copyright 2022,2024 IBM Corporation
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 */
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

enum { k_Debug = 0 };
int main(int argc, char **argv) {
  char buffer[1000];
  if (k_Debug) {
    printf("argv[0] is %s argc is %d\n", argv[0], argc);
    printf("argv[1] is %s\n", argv[1]);
    fflush(stdout);
  }
  if (argc > 1 && strcmp(argv[1], "/s") == 0) {
    int cdrc = chdir("C:\\Program Files\\QemuSaver");
    if (k_Debug) {
      printf("cd returns %d errno=%d\n", cdrc, errno);
      fflush(stdout);
    }
    strcpy(buffer, argv[0]);
    int l = strlen(buffer);
    while (l > 0 && buffer[l] != '.') {
      l -= 1;
    }
    buffer[l] = 0;
    while (l > 0 && buffer[l] != '\\')
      l -= 1;
    char cmd[1000];
    sprintf(cmd, "qemu-system-x86_64 -cdrom %s.iso", buffer + l + 1);
    if (k_Debug) {
      printf("Command is %s\n", cmd);
      fflush(stdout);
    }
    int sysrc = system(cmd);
    if (k_Debug) {
      printf("system returns %d errno=%d\n", sysrc, errno);
      fflush(stdout);
      sleep(10);
    }
  }
  return 0;
}
