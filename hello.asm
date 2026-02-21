.data
message: .asciz "Hello from RARS\n"

.text
.global main

main:
	la a0, message
	li a7, 4
	ecall
	
	li a7, 10
	ecall