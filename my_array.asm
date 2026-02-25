.data
my_array: .word 1, 2, 3, 4, 5, 6, 7, 8
number_of_elements: .word 8

space_character: .asciz " "
newline_character: .asciz "\n"

.text
.global main

main:
	la t0, my_array			# t0 points to first element of array
	la t2, number_of_elements	# t2 points to stored array length
	lw t1, 0(t2)			# t1 = remaining elements to process (loop counter)
	
loop:
	beq t1, zero, exit
	
	lw a0, 0(t0)	# load current element into a0
	li a7, 1	# syscall print integer
	ecall
	
	# print space_character
	la a0, space_character
	li a7, 4
	ecall
	
	addi t0, t0, 4	# move to next word (4 bytes)
	addi t1, t1, -1	# decrement element counter
	j loop

exit:
	li a7, 10
	ecall