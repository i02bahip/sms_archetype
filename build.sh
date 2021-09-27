#!/bin/sh
environment\compiler\wla-dx\bin\x86\wla-z80 -v -o out\main.o main.asm
environment\compiler\wla-dx\bin\x86\wlalink -d -v -s environment\compiler\wla-dx\link\link.lk out\main.sms