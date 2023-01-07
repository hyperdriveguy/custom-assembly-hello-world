# Overview

This is a hello world example that showcases a simple 8 bit CPU architechure and assembler written in Python.
The architechure is loosely inspired by the 8080 processor and the SM83 processor, the processor used in the GameBoy and GameBoy Color.
I made this to showcase my current understanding of CPU architechure and assembly programming.
I'm using this project as a beginning stepping stone for what I wish to accomplish as a Computer Engineer.

Within the Logisim simulator, this program prints "Hello World!" to the simulated display three times, then prints "End program."

{Provide a link to your YouTube demonstration.  It should be a one minute demo of the software running and a walkthrough of the code.}

[Software Demo Video](http://youtube.link.goes.here)

# Development Environment
For developing this, I used my preferred code editor, Kate, as it has assembly syntax highlighting built in.
For the simulated hardware I used Logisim Evolution, an open source circuit simulator.

The programming language used is a custom assembly instruction set:

| **Opcode** | **Description**                                                            | **Usage**        |
|:----------:|----------------------------------------------------------------------------|------------------|
| nop        | No operation.                                                              | `nop`            |
| ld         | Load an integer from ROM into a register.                                  | `ld r0, 11`      |
| ldc        | Load an ASCII character from ROM into a register.                          | `ldc r1, "c"`    |
| mov        | Move a value from one register to another.                                 | `mov r0, r1`     |
| disp       | Display a value stored in a register.                                      | `disp r4`        |
| dispd      | Display a value or character stored in ROM.                                | `dispd "@"`      |
| xor        | Preform an XOR operation and store the result in the first argument.       | `xor r0, r1, r2` |
| or         | Preform an OR operation and store the result in the first argument.        | `or r0, r1, r2`  |
| add        | Preform an ADD operation and store the result in the first argument.       | `add r7, re, rf` |
| lsr        | Preform an logical shift right and store the result in the first argument. | `lsr r0, r1`     |
| lsl        | Preform an logical shift left and store the result in the first argument.  | `lsl r2, r2`     |
| com        | Preform a bit-wise complement and store the result in the first argument.  | `com r2, r6`     |
| sub        | Preform an SUB operation and store the result in the first argument.       | `sub r3, r2, r1` |
| inc        | Increment register value by one.                                           | `inc r2`         |
| dec        | Decrement register value by one.                                           | `sub r1`         |
| cp         | Compare values in two registers. Sets compare flag if they are equal.      | `cp r0, r5`      |
| jmp        | Jump to an address stored in a register.                                   | `jmp rf`         |
| jp         | Jump to an address stored in ROM. Supports labels.                         | `jp Start`       |
| jpc        | Jump to an address stored in ROM if compare flag is set.                   | `jpc Branch`     |
| jpnc       | Jump to an address stored in ROM if compare flag is not set.               | `jpnc Loop`      |
| disp_str   | Macro for displaying multi-character strings using dispd.                  | `disp_str "Wow"` |

# Useful Websites
As the processor is based on the GameBoy, these assembly tutorials and hardware documenation proved useful:
* [Pan Docs on GB Dev](https://gbdev.io/pandocs/)
* [GB ASM Tutorial](https://eldred.fr/gb-asm-tutorial/)
