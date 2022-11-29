NimNX
=====

    Basic nim template for skipping all the "how-tos" straight to a working example!

This project can also be used to start new NX projects.
Feel free to skim through the code and see how it works.

# Usage
Step #0: install nim :D

First, install devkitpro (and export env vars too).

Then, build your *.nro:

```shell
nimble install
switch_build src/nimNx.nim
```

Copy `build/nimNx/nimNx.nro` to `/switch/nimNx/`.

Launch using Switch

# Description

This project consists of two parts:
+ C `FFI` to get all the libNX parts available for nim (under `src/NimNx`)
+ The actual nim code that uses this stuff

This project was made using following technique:

    OPEN C PROJECT
    FIND DEFINITION OF C VAR / FUNC / STRUCT
    IMPORT IT CORRECTLY IN NIM
    USE IN A SAME MANNER

So I highly recommend finding same identifiers 
in original libNx C code and see how it got translated to nim.

# FAQ

### Why `type`s + `const` for C `enums` (like under `src/nimNx/libnx/hid`)?

[Nim forum](https://forum.nim-lang.org/t/5768)

### Why specify `discardable` pragma in `importc` `proc`s?

As we mostly never use their results

### Why recreating BitFlags instead of importing them?

You actually need to recreate it one way or another, as it's using #define to work with bitmaps.
There's a pretty low chance it would change in future releases of libNx, so I decided to recreate them.

