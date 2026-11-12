# ECE 366 - Project 2 - Progress Report 1
# Tamilore A


.data
input_n:       .word 10             # Change 10 to the desired n
fib_result:    .word 0              # Result written here
label_start:   .asciiz "Fibonacci("
label_middle:  .asciiz ") = "
newline:       .asciiz "\n"

.text
.globl main
main:
    # Read n from memory, compute Fibonacci(n), store the result.
    lw    $a0, input_n
    jal   Fibonacci
    nop
    sw    $v0, fib_result

    # Print: Fibonacci(n) = result
    li    $v0, 4
    la    $a0, label_start
    syscall

    li    $v0, 1
    lw    $a0, input_n
    syscall

    li    $v0, 4
    la    $a0, label_middle
    syscall

    li    $v0, 1
    lw    $a0, fib_result
    syscall

    li    $v0, 4
    la    $a0, newline
    syscall

    li    $v0, 10              # Exit program
    syscall

# Fibonacci
# Arguments: $a0 = n
# Returns:   $v0 = Fibonacci(n)
# Algorithm follows Figure 1 in the project handout.
Fibonacci:
    slti  $t0, $a0, 2        # n < 2?
    bne   $t0, $zero, base_case
    nop

    move  $t1, $zero        # a = 0
    li    $t2, 1            # b = 1
    addiu $t3, $a0, -1      # iterations = n - 1

fib_loop:
    beq   $t3, $zero, fib_done
    nop
    move  $t4, $t2          # temp = b
    addu  $t2, $t1, $t2     # b = a + b
    move  $t1, $t4          # a = temp
    addiu $t3, $t3, -1      # iterations -= 1
    j     fib_loop
    nop

fib_done:
    move  $v0, $t2          # return b
    jr    $ra
    nop

base_case:
    move  $v0, $a0          # return n if n = 0 or n = 1
    jr    $ra
    nop

