#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

enum {
  k_Debug = 0
};
int main(int argc, char **argv)
{
  char buffer[1000] ; 
  if ( k_Debug ) {
    printf("argv[0] is %s argc is %d\n", argv[0], argc) ;
    printf("argv[1] is %s\n", argv[1]) ;
    fflush(stdout) ;
  }
  if ( argc > 1 && strcmp(argv[1],"/s") == 0 )
  {
  int cdrc = chdir("C:\\Program Files\\QemuSaver") ;
  if ( k_Debug ) {
    printf("cd returns %d errno=%d\n", cdrc, errno) ;
    fflush(stdout) ;
  }
  strcpy(buffer,argv[0]) ;
  int l=strlen(buffer) ;
  while(l > 0 && buffer[l] != '.' )
  {
    l -= 1 ;
  }
  buffer[l] = 0 ;
  while(l > 0 && buffer[l] != '\\' ) l -= 1 ;
  char cmd[1000] ;
  sprintf(cmd,"qemu-system-x86_64 -cdrom %s.iso -m 1024 -usb -device usb-tablet -full-screen",buffer+l+1) ;
  if ( k_Debug ) {
    printf("Command is %s\n",cmd) ;
    fflush(stdout) ;
  }
  int sysrc=system(cmd) ; 
  if ( k_Debug ) {
    printf("system returns %d errno=%d\n", sysrc, errno) ;
    fflush(stdout) ;
    sleep(10) ;
  }
  }
  return 0 ;
}
