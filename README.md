# ECE 366 - Project 2 - Progress Report 1

## Student and group information

- **Student name:** Tamilore A
- **NetID:** oades4
- **Current group size:** 1 (working individually)


## Contribution

I am responsible for all parts of Progress Report 1:

- Writing the `Fibonacci.asm` MIPS assembly program.
- Checking the Fibonacci algorithm and testing sample inputs in MARS.
- Preparing and maintaining the GitHub repository.
- Writing this README and preparing the submission archive.


## GitHub repository

https://github.com/Tamilore77/ECE366-Project-2.git


## How to run in the MIPS MARS simulator


1. Edit `input_n: .word 10` in the `.data` section to select a nonnegative input. For example, use `input_n: .word 7`.
2. Select **Run > Assemble**.
3. Select **Run > Go**.
4. Read the answer in the **Run I/O** panel. For `n = 7`, the expected line is `Fibonacci(7) = 13`.
5. Inspect the **Data Segment** in the **Execute** tab to confirm the result was stored in `fib_result`.
6. To try another number, change `input_n`, assemble again, and run the program.



