#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
int main(int argc, char **argv)
{
  char buffer[1000] ; 
//  printf("argv[0] is %s argc is %d\n", argv[0], argc) ; 
// if ( argc == 1 )
  {
//  printf("argv[1] is %s\n", argv[1]) ; 
//  fflush(stdout) ;
  if ( strcmp(argv[1],"/s") == 0 ) 
  {
  int cdrc = chdir("C:\\Program Files\\QemuSaver") ;
//  printf("cd returns %d errno=%d\n", cdrc, errno) ; 
//  fflush(stdout) ; 
  strcpy(buffer,argv[0]) ;
  int l=strlen(buffer) ;
  while(l > 0 && buffer[l] != '.' )
  {
    l -= 1 ;
  }
  buffer[l] = 0 ;
  while(l > 0 && buffer[l] != '\\' ) l -= 1 ;
  char cmd[1000] ;
  sprintf(cmd,"qemu-system-x86_64 -cdrom %s.iso",buffer+l+1) ;
//  printf("Command is %s\n",cmd) ;
//  fflush(stdout) ;
  int sysrc=system(cmd) ; 
//  printf("system returns %d errno=%d\n", sysrc, errno) ; 
//  fflush(stdout) ; 
  }
  }
  return 0 ;
}
