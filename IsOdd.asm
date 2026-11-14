# ECE 366 - Project 2 - Progress Report 2
# TamiloreA

.data
input_m:     .word 7
odd_result:  .word 0
text_start:  .asciiz "IsOdd("
text_middle: .asciiz ") = "
newline:     .asciiz "\n"

.text
.globl main
main:
    # Load m from memory and call IsOdd(m).
    la    $t0, input_m
    lw    $a0, 0($t0)
    jal   IsOdd
    nop

    # Store result at a different memory location.
    la    $t0, odd_result
    sw    $v0, 0($t0)

    # Display: IsOdd(m) = 1  (or 0)
    li    $v0, 4
    la    $a0, text_start
    syscall

    li    $v0, 1
    la    $t0, input_m
    lw    $a0, 0($t0)
    syscall

    li    $v0, 4
    la    $a0, text_middle
    syscall

    li    $v0, 1
    la    $t0, odd_result
    lw    $a0, 0($t0)
    syscall

    li    $v0, 4
    la    $a0, newline
    syscall

    li    $v0, 10
    syscall

# IsOdd(m)
# Input:  $a0 = m (nonnegative)
# Output: $v0 = 1 if m is odd, otherwise 0
IsOdd:
    addiu $sp, $sp, -8
    sw    $ra, 4($sp)       # Save return address (nested call).
    li    $a1, 2           # Divisor is 2.
    jal   division_by_subtraction
    nop

    # division_by_subtraction returns m % 2 in $v0.
    sltu  $v0, $zero, $v0  # 1 if remainder is nonzero; else 0.
    lw    $ra, 4($sp)
    addiu $sp, $sp, 8
    jr    $ra
    nop

# Division by repeated subtraction (Figure 3)
# Inputs: $a0 = dividend x, $a1 = divisor y (y > 0)
# Output: $v0 = remainder x % y
# Uses no DIV, DIVU, REM, or REMU instruction.
division_by_subtraction:
    move  $t0, $a0         # x = dividend
    move  $t1, $zero       # quotient = 0

division_loop:
    sltu  $t2, $t0, $a1    # Is x < y?
    bne   $t2, $zero, division_done
    nop

    subu  $t0, $t0, $a1    # x = x - y
    addiu $t1, $t1, 1      # quotient = quotient + 1
    j     division_loop
    nop

division_done:
    move  $v0, $t0         # Return the remainder.
    jr    $ra
    nop
