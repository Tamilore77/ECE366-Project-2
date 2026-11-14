# ECE 366 - Project 2 - Progress Report 2

## Student and group information

- **Student name:** TamiloreA
- **NetID:** oades4
- **Group size:** 1 
- **Group status:** I am the only person in my group. The assignment originally requires groups of three; instructor approval for a solo submission has not been confirmed.

## Contribution

I am responsible for all of Progress Report 2:

- Implementing the MIPS assembly `IsOdd(m)` function.
- Implementing division by repeated subtraction without using the MIPS `DIV` instruction.
- Testing the program with even, odd, and zero inputs in MARS.
- Preparing the README, GitHub repository, and submission archive.


## GitHub repository

https://github.com/Tamilore77/ECE366-Project-2.git


## How to run in MIPS MARS

1. Open the MARS MIPS Simulator (
2. Select **File > Open** and open `IsOdd.asm`.
3. In the `.data` section, change `input_m: .word 7` to your desired nonnegative test input.
4. Select **Run > Assemble**.
5. Select **Run > Go**.
6. Read the answer in the **Run I/O** panel. For the default input, the expected line is `IsOdd(7) = 1`.
7. inspect the **Data Segment** to confirm the value in `odd_result` has changed to `1` or `0`.
8. To test a different input, edit `input_m`, then assemble and run again.






