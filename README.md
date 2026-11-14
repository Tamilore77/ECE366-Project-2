# ECE 366 - Project 2 - Progress Report 1

## Student and group information

- **Student name:** TamiloreA
- **NetID:** oades4
- **Current group size:** 1 (working individually)
- **Group status:** I am the only member of my group. 

## Contribution

I am responsible for all parts of Progress Report 1:

- Writing the `Fibonacci.asm` MIPS assembly program.
- Checking the Fibonacci algorithm and testing sample inputs in MARS.
- Preparing and maintaining the GitHub repository.
- Writing this README and preparing the submission archive.


## GitHub repository

https://github.com/Tamilore77/ECE366-Project-2.git



## How to run in the MIPS MARS simulator


1. Open `Fibonacci.asm` in MARS using **File > Open**.
2. Edit `input_n: .word 10` in the `.data` section to select a nonnegative input. For example, use `input_n: .word 7`.
3. Select **Run > Assemble**.
4. Select **Run > Go**.
5. Read the answer in the **Run I/O** panel. For `n = 7`, the expected line is `Fibonacci(7) = 13`.
6. Inspect the **Data Segment** in the **Execute** tab to confirm the result was stored in `fib_result`.
7. To try another number, change `input_n`, assemble again, and run the program.


