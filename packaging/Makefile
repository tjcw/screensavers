CFLAGS=-O2
LDFLAGS=-mwindows
CC=x86_64-w64-mingw32-gcc
STRIP=x86_64-w64-mingw32-strip

all: crunqemu crunqemu-usb fr2.scr gk2.scr

fr2.scr: crunqemu-usb
	cp crunqemu-usb.exe fr2.scr
	$(STRIP) fr2.scr

gk2.scr: crunqemu-usb
	cp crunqemu-usb.exe gk2.scr
	$(STRIP) fgk.scr

clean:
	rm -f crunqemu crunqemu-usb fr2.scr gk2.scr
