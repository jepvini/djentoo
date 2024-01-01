Usefull comands

- compile: rm -f config.h && make
- install: rm -f config.h && sudo make clean install

- patch: patch -i file/dot/diff

Patch installed:
- alpha -> trasparency np
- blinking cursor -> patch fails with x.c at line 237, add 'static int cursorblinks = 0;' at line 259
- scrollback -> scrolling with shift+pageUp/Down np
