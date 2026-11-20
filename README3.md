# ECE 366: Computer Organization — Project 2 Final Report

## Student / group information

- **Student name:** Tamilore A
- **UIC NetID:** = oades4
- **Group size:** 1 — individual work (only member of my group)


## GitHub repository

https://github.com/Tamilore77/ECE366-Project-2.git


## Contribution

I prepared the final integrated program and documentation:

1. Integrated the `Fibonacci(n)` program from Progress Report 1.
2. Integrated the `IsOdd(m)` program and division-by-repeated-subtraction (DRS) routine from Progress Report 2.
3. Implemented the top-level `IsFibonacciOdd(n)` function.
4. Prepared sample inputs, expected results, run instructions, and submission files.



## Objective

1. `Fibonacci(n)` uses the iterative algorithm in Figure 1 to compute `F(n)`.
2. `IsOdd(m)` checks whether a nonnegative `m` has remainder `1` when divided by `2` (Figure 2).
3. `DRS(x, y)` uses repeated subtraction to obtain the remainder without hardware division (Figure 3).
4. `IsFibonacciOdd(n)` calls `Fibonacci(n)` and passes its result to `IsOdd(m)`.

The program reads `input_n` from memory, saves the intermediate Fibonacci value at `fibonacci_value`, and **writes the final Boolean answer to a different memory location** named `odd_result`.

- `odd_result = 1`: The nth Fibonacci number is odd (True).
- `odd_result = 0`: The nth Fibonacci number is even (False).
- No `div`, `divu`, `rem`, or `remu` machine instructions are used.


## How to run the program in MIPS MARS


1. Choose **File > Open** and open `IsFibonacciOdd.asm`.
2. In the `.data` section, edit `input_n: .word 10` to the desired **nonnegative integer** `n` (for example, `input_n: .word 7`).
3. Select **Run > Assemble** (or the Assemble toolbar button).
4. Select **Run > Go** (or the Run toolbar button).
5. Read both lines in the **Run I/O** output window.
6. In the **Execute / Data Segment** area, verify that the final `1` or `0` appears at `odd_result`. The intermediate Fibonacci number appears at `fibonacci_value`.
7. For another test, edit `input_n`, reassemble, and run again.

With the default input (`n = 10`), the expected console output is:

```text
Fibonacci(10) = 55
IsFibonacciOdd(10) = 1
```
