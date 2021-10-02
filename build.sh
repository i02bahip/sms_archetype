#!/bin/sh
environment/compiler/wla-dx/bin/linux/wla-z80 -v -o out/main.o src/main.asm
environment/compiler/wla-dx/bin/linux/wlalink -d -v -s environment/compiler/wla-dx/link/link.lk out/main.sms
rm out/*.o