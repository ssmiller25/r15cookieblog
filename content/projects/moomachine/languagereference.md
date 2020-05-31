---
catagories:
  - Project
tags:
  - project
  - moomachine
date: "2010-08-03"
layout: "single"
meta: "false"
title: "Moo Machine - Moo Language Reference"
---
The Moo Machine uses the code integer for instruction entry and display.  Most program demonstrations use the actual 
instruction, which is easier to read.

(from [https://bigzaphod.github.io/COW/](https://bigzaphod.github.io/COW/)

| Code | Instruction | Description |
|---|---|---|
| 0 | moo | This command is connected to the MOO command. When encountered during normal execution, it searches the program code in reverse looking for a matching MOO command and begins executing again starting from the found MOO command. When searching, it skips the instruction that is immediately before it (see MOO). |
| 1 | mOo | Moves current memory position back one block. |
| 2 | moO | Moves current memory position forward one block. |
| 3 | mOO | Execute value in current memory block as if it were an instruction. The command executed is based on the instruction code value (for example, if the current memory block contains a 2, then the moO command is executed). An invalid command exits the running program. Value 3 is invalid as it would cause an infinite loop. |
| 4 | Moo | If current memory block has a 0 in it, read a single ASCII character from STDIN and store it in the current memory block. If the current memory block is not 0, then print the ASCII character that corresponds to the value in the current memory block to STDOUT |
| 5 | MOo | Decrement current memory block value by 1. |
| 6 | MoO | Increment current memory block value by 1. |
| 7 | MOO | If current memory block value is 0, skip next command and resume execution after the next matching moo command. If current memory block value is not 0, then continue with next command. **Note that the fact that it skips the command immediately following it has interesting ramifications for where the matching moo command really is. For example, the following will match the second and not the first moo: OOO MOO moo moo** |
| 8 | OOO | Set current memory block value to 0. |
| 9 | MMM | If no current value in register, copy current memory block value. If there is a value in the register, then paste that value into the current memory block and clear the register. |`
| 10 | OOM | Print value of current memory block to STDOUT as an integer. |
| 11 | oom | Read an integer from STDIN and put it into the current memory block. |

