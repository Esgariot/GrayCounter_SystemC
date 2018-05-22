# GrayCounter_SystemC

A work in progress rewrite of GrayCounter in vhdl into systemC.

## HOW TO

- You need a `<systemc.h>` that compiler knows about (somewhere in includes)
- Also GTKWAVE
- `$ make <target>`. I added couple of targets, e.g. `make wave` opens gtkwave with file produced by `Gray.out`
- `$ make` to produce executable `Gray.out`
- `$ make clean` to clean

## TODO

- [x] testbench
- [x] sc_main
- [ ] clocks
- [x] sensitivity list

## ABOUT

I included couple of useful resources in `Resources/`(*.pdf and *.htm)
