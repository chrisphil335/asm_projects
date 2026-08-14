.data

displayAddress: .word 0x10008000	# displayAddress = position of pixel 0

goalAreaColor: .word 0x0000ff01		# goalAreaColor = lime + 1 blue
goalColor: .word 0x0000ffff		# goalColor = light blue
waterAreaColor: .word 0x000000ff	# waterAreaColor = blue
safeAreaColor: .word 0x0000ff00		# safeAreaColor = lime
roadAreaColor: .word 0x00808080		# roadAreaColor = gray
startAreaColor: .word 0x0000ff00	# startAreaColor = lime

logColor: .word 0x00800000		# logColor = maroon
vehicleColor: .word 0x00ff0000		# vehicleColor = red

scoreArea: .space 2048			# scoreArea = space for score area
goalArea: .space 2048			# goalArea = space for goal area
topLogRow: .space 1024			# topLogRow = space for top log row
middleLogRow: .space 1024		# middleLogRow = space for middle log row
bottomLogRow: .space 1024		# bottomLogRow = space for bottom log row
topVehicleRow: .space 1024		# topVehicleRow = space for top log row
middleVehicleRow: .space 1024		# middleVehicleRow = space for middle log row
bottomVehicleRow: .space 1024		# bottomVehicleRow = space for bottom log row
livesArea: .space 2048			# livesArea = space for lives area

frogColor: .word 0x00ff00ff	# frogColor = magenta
frog: .space 64
frogX: .word 0x00000080
frogY: .word 0x00003400

lives: .word 0x00000003		# lives remaining

.text

restart:

draw_goal_area:
addi $sp, $sp, -4
la $t0, goalArea
sw $t0, 0($sp)
addi $sp, $sp, -4
lw $t1, goalAreaColor
sw $t1, 0($sp)
addi $sp, $sp, -4
li $t2, 32
sw $t2, 0($sp)
addi $sp, $sp, -4
li $t3, 256
sw $t3, 0($sp)
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, goalArea	# $t0 = bottom vehicle row position
addi $t0, $t0, 1040	# $t0 = bottom vehicle row relative car position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, goalColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 32		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, goalArea	# $t0 = bottom vehicle row position
addi $t0, $t0, 1088	# $t0 = bottom vehicle row relative car position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, goalColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 32		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, goalArea	# $t0 = bottom vehicle row position
addi $t0, $t0, 1136	# $t0 = bottom vehicle row relative car position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, goalColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 32		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, goalArea	# $t0 = bottom vehicle row position
addi $t0, $t0, 1184	# $t0 = bottom vehicle row relative car position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, goalColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 32		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, goalArea	# $t0 = bottom vehicle row position
addi $t0, $t0, 1232	# $t0 = bottom vehicle row relative car position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, goalColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 32		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle

draw_top_log_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topLogRow	# $t0 = bottom log row position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t1, waterAreaColor	# $t1 = water area color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 256		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topLogRow	# $t0 = bottom vehicle row position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, logColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 64		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topLogRow	# $t0 = bottom vehicle row position
addi $t0, $t0, 96	# $t0 = bottom vehicle row relative car position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, logColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 64		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topLogRow	# $t0 = bottom vehicle row position
addi $t0, $t0, 176	# $t0 = bottom vehicle row relative car position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, logColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 48		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle

draw_middle_log_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 256		# $t0 = size of middle log row
sw $t0, 0($sp)		# push $t0 onto the stack pointer
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, topLogRow	# $t1 = paint from
sw $t1, 0($sp)		# push $t1 onto the stack pointer
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t2, middleLogRow	# $t2 = paint to
sw $t2, 0($sp)		# push $t2 onto the stack
jal paint

draw_bottom_log_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 256		# $t0 = size of middle log row
sw $t0, 0($sp)		# push $t0 onto the stack pointer
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, topLogRow	# $t1 = paint from
sw $t1, 0($sp)		# push $t1 onto the stack pointer
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t2, bottomLogRow	# $t2 = paint to
sw $t2, 0($sp)		# push $t2 onto the stack
jal paint

draw_top_vehicle_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topVehicleRow	# $t0 = bottom vehicle row position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, roadAreaColor	# $t1 = road area color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 256		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topVehicleRow	# $t0 = bottom vehicle row position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, vehicleColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 32		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topVehicleRow	# $t0 = bottom vehicle row position
addi $t0, $t0, 96	# $t0 = bottom vehicle row relative car position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, vehicleColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 32		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topVehicleRow	# $t0 = bottom vehicle row position
addi $t0, $t0, 192	# $t0 = bottom vehicle row relative car position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stak pointer up 1 word
lw $t1, vehicleColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 48		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle

draw_middle_vehicle_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 256		# $t0 = size of middle log row
sw $t0, 0($sp)		# push $t0 onto the stack pointer
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, topVehicleRow	# $t1 = paint from
sw $t1, 0($sp)		# push $t1 onto the stack pointer
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t2, middleVehicleRow	# $t2 = paint to
sw $t2, 0($sp)		# push $t2 onto the stack
jal paint

draw_bottom_vehicle_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 256		# $t0 = size of middle log row
sw $t0, 0($sp)		# push $t0 onto the stack pointer
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, topVehicleRow	# $t1 = paint from
sw $t1, 0($sp)		# push $t1 onto the stack pointer
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t2, bottomVehicleRow	# $t2 = paint to
sw $t2, 0($sp)		# push $t2 onto the stack
jal paint

draw_frog:
la $t0, frog
lw $t1, frogColor
sw $t1, 0($t0)
sw $t1, 4($t0)
sw $t1, 8($t0)
sw $t1, 12($t0)
sw $t1, 20($t0)
sw $t1, 24($t0)
sw $t1, 32($t0)
sw $t1, 36($t0)
sw $t1, 40($t0)
sw $t1, 44($t0)
sw $t1, 48($t0)
sw $t1, 60($t0)

before_start:
jal paint_background

main:
lw $t0, lives
beq $t0, 0, exit
jal move_frog
jal paint_background
jal frog_collision
jal paint_frog
jal move_background
li $v0, 32	# sleep service value
li $a0, 80	# sleep time argument
syscall		# call sleep service
j main

draw_rectangle:
lw $t9, 0($sp)		# pop j (width*4) from the stack
addi $sp, $sp, 4	# move the stack pointer down 1 word
lw $t8, 0($sp)		# pop i (height*4) from the stack
addi $sp, $sp, 4	# move the stack pointer down 1 word
lw $t1, 0($sp)		# pop color to paint from the stack
addi $sp, $sp, 4	# move the stack pointer down 1 word
lw $t0, 0($sp)		# pop starting position from the stack
addi $sp, $sp, 4	# move the stack pointer down 1 word
draw_rectangle_column_loop:
beq $t8, 0, end_draw_rectangle
addi $t7, $t9, 0	# reset $t7 to $t9 = width*4
draw_rectangle_row_loop:
beq $t7, 0, next_rectangle_column
sw $t1, 0($t0)		# paint current start position $t0 color to paint $t1
addi $t0, $t0, 4	# shift current starting position 1 column over
addi $t7, $t7, -4	# increment column j -= 4
j draw_rectangle_row_loop
next_rectangle_column:
addi $t0, $t0, 256	# shift current starting position forward 1 row width
sub $t0, $t0, $t9	# shift current starting position back by j
addi $t8, $t8, -4	# increment row i -= 4
j draw_rectangle_column_loop
end_draw_rectangle:
jr $ra

paint:
lw $t0, 0($sp)		# pop paint to location
addi $sp, $sp, 4	# move the stack pointer down 1 word
lw $t1, 0($sp)		# pop paint from location
addi $sp, $sp, 4	# move the stack pointer down 1 word
lw $t9, 0($sp)		# pop size of paint from location
addi $sp, $sp, 4	# move the stack pointer down 1 word
li $t8, 0		# initial i == 0
paint_loop:
beq $t8, $t9, end_paint
lw $t2, 0($t1)
sw $t2, 0($t0)		# paint $t0 from $t1
addi $t0, $t0, 4	# increment $t0 by 4
addi $t1, $t1, 4	# increment $t1 by 4
addi $t8, $t8, 1	# increment i by 1
j paint_loop
end_paint:
jr $ra

paint_background:
addi $sp, $sp, -4	# move the stack pointer up 1 word
sw $ra, 0($sp)		# push $ra onto the stack
paint_goal_area:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 512		# $t0 = size of bottom log row
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, goalArea	# $t1 = startArea
sw $t1, 0($sp)		# push $t1 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t2, displayAddress	# $t0 = displayAddress
addi $t2, $t2, 2048	# $t0 = position
sw $t2, 0($sp)		# push $t0 onto the stack
jal paint
paint_top_log_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 256		# $t0 = size of bottom log row
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, topLogRow	# $t1 = startArea
sw $t1, 0($sp)		# push $t1 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t2, displayAddress	# $t0 = displayAddress
addi $t2, $t2, 4096	# $t0 = position
sw $t2, 0($sp)		# push $t0 onto the stack
jal paint
paint_middle_log_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 256		# $t0 = size of botto log row
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, middleLogRow	# $t1 = startArea
sw $t1, 0($sp)		# push $t1 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t2, displayAddress	# $t0 = displayAddress
addi $t2, $t2, 5120	# $t0 = position
sw $t2, 0($sp)		# push $t0 onto the stack
jal paint
paint_bottom_log_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 256		# $t0 = size of botto log row
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, bottomLogRow	# $t1 = startArea
sw $t1, 0($sp)		# push $t1 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t2, displayAddress	# $t0 = displayAddress
addi $t2, $t2, 6144	# $t0 = position
sw $t2, 0($sp)		# push $t0 onto the stack
jal paint
draw_safe_area:
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t0, displayAddress	# $t0 = displayAddress
addi $t0, $t0, 7168	# $t0 = position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t1, safeAreaColor	# $t1 = safe area color
sw $t1, 0($sp)		# push $t1 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 32		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 256		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
paint_top_vehicle_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 256		# $t0 = size of bottom vehicle row
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, topVehicleRow	# $t1 = startArea
sw $t1, 0($sp)		# push $t1 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t2, displayAddress	# $t0 = displayAddress
addi $t2, $t2, 9216	# $t0 = position
sw $t2, 0($sp)		# push $t0 onto the stack
jal paint
paint_middle_vehicle_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 256		# $t0 = size of bottom vehicle row
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, middleVehicleRow	# $t1 = startArea
sw $t1, 0($sp)		# push $t1 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t2, displayAddress	# $t0 = displayAddress
addi $t2, $t2, 10240	# $t0 = position
sw $t2, 0($sp)		# push $t0 onto the stack
jal paint
paint_bottom_vehicle_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t0, 256		# $t0 = size of bottom vehicle row
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t1, bottomVehicleRow	# $t1 = startArea
sw $t1, 0($sp)		# push $t1 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t2, displayAddress	# $t0 = displayAddress
addi $t2, $t2, 11264	# $t0 = position
sw $t2, 0($sp)		# push $t0 onto the stack
jal paint
draw_start_area:
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t0, displayAddress	# $t0 = displayAddress
addi $t0, $t0, 12288	# $t0 = position
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t1, startAreaColor	# $t1 = safe area color
sw $t1, 0($sp)		# push $t1 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 32		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 256		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
lw $ra 0($sp)		# pop $ra off of the stack
addi $sp, $sp, 4	# point the stack pointer down 1 word
jr $ra

move_left:
lw $t0, 0($sp)		# pop drawing off of the stack
addi $sp, $sp, 4	# move the stack pointer down 1 word
li $t8, 0		# initial i == 0
move_row_left_outer_loop:
beq $t8, 4, end_move_row_left_outer_loop
lw $t1, 0($t0)		# $t1 temp stores pixel 0
li $t9, 0		# initial j == 0
move_row_left_inner_loop:
beq $t9, 63, end_move_row_left_inner_loop
lw $t2, 4($t0)		# $t2 = (i + 1)th pixel
sw $t2, 0($t0)		# $t0's i(th pixel = $t0's (i + 1)th pixel
addi $t0, $t0, 4	# increment $t0 by 4
addi $t9, $t9, 1	# increment j by 1
j move_row_left_inner_loop
end_move_row_left_inner_loop:
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j move_row_left_outer_loop
end_move_row_left_outer_loop:
jr $ra

move_right:
lw $t0, 0($sp)		# pop drawing off of the stack
addi $sp, $sp, 4	# move the stack pointer down 1 word
addi $t0, $t0, 1020	# start at the right
li $t8, 0		# initial i == 0
move_row_right_outer_loop:
beq $t8, 4, end_move_row_right_outer_loop
lw $t1, 0($t0)		# $t1 temp stores pixel 63
li $t9, 0		# initial j == 0
move_row_right_inner_loop:
beq $t9, 63, end_move_row_right_inner_loop
lw $t2, -4($t0)		# $t2 = (i - 1)th pixel
sw $t2, 0($t0)		# $t0's ith pixel = $t0's ith pixel
addi $t0, $t0, -4	# increment $t0 by -4
addi $t9, $t9, 1	# increment j by 1
j move_row_right_inner_loop
end_move_row_right_inner_loop:
sw $t1, 0($t0)
addi $t0, $t0, -4
addi $t8, $t8, 1
j move_row_right_outer_loop
end_move_row_right_outer_loop:
jr $ra

move_background:
addi $sp, $sp, -4	# move the stack pointer up 1 word
sw $ra, 0($sp)		# push $ra onto the stack
move_top_log_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topLogRow	# $t0 = bottomLogRow
sw $t0, 0($sp)		# push $t0 onto the stack
jal move_right
move_middle_log_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, middleLogRow	# $t0 = bottomLogRow
sw $t0, 0($sp)		# push $t0 onto the stack
jal move_left
move_bottom_log_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, bottomLogRow	# $t0 = bottomLogRow
sw $t0, 0($sp)		# push $t0 onto the stack
jal move_right
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, bottomLogRow	# $t0 = bottomLogRow
sw $t0, 0($sp)		# push $t0 onto the stack
jal move_right
move_top_vehicle_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topVehicleRow	# $t0 = bottomVehicleRow
sw $t0, 0($sp)		# push $t0 onto the stack
jal move_left
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, topVehicleRow	# $t0 = bottomVehicleRow
sw $t0, 0($sp)		# push $t0 onto the stack
jal move_left
move_middle_vehicle_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, middleVehicleRow	# $t0 = bottomVehicleRow
sw $t0, 0($sp)		# push $t0 onto the stack
jal move_right
move_bottom_vehicle_row:
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, bottomVehicleRow	# $t0 = bottomVehicleRow
sw $t0, 0($sp)		# push $t0 onto the stack
jal move_left
lw $ra 0($sp)		# pop $ra off of the stack
addi $sp, $sp, 4	# point the stack pointer down 1 word
jr $ra

paint_frog:
addi $sp, $sp, -4	# move stack pointer up
sw $ra, 0($sp)		# push $ra onto the stack
la $t0, frog		# paint from
lw $t1, frogX
lw $t2, frogY
lw $t4, displayAddress
add $t4, $t4, $t1
add $t4, $t4, $t2	# paint to
li $t8, 0		# initial i == 0
paint_frog_outer_loop:
beq $t8, 4, end_paint_frog
li $t9, 0		# initial j == 0
paint_frog_inner_loop:
beq $t9, 4, end_paint_frog_outer_loop
lw $t5, 0($t0)
sw $t5, 0($t4)
addi $t0, $t0, 4
addi $t4, $t4, 4
addi $t9, $t9, 1
j paint_frog_inner_loop
end_paint_frog_outer_loop:
addi $t4, $t4, 240
addi $t8, $t8, 1
j paint_frog_outer_loop
end_paint_frog:
lw $ra, 0($sp)		# pop $ra off of the stack
addi $sp, $sp, 4	# point the stack pointer down 1 word
jr $ra

move_frog:
lw $t8, 0xffff0000
beq $t8, 1, keyboard_input
j end_move_frog
keyboard_input:
lw $t0, frogX
lw $t1, frogY
lw $t2, 0xffff0004
beq $t2, 0x77, respond_to_W
beq $t2, 0x61, respond_to_A
beq $t2, 0x73, respond_to_S
beq $t2, 0x64, respond_to_D
j end_move_frog
respond_to_W:
beq $t1, 2048, end_move_frog
addi $t1, $t1, -1024
j end_keyboard_input
respond_to_A:
beq $t0, 0, end_move_frog
addi $t0, $t0, -16
j end_keyboard_input
respond_to_S:
beq $t1, 13312, end_move_frog
addi $t1, $t1, 1024
j end_keyboard_input
respond_to_D:
beq $t0, 240, end_move_frog
addi $t0, $t0, 16
j end_keyboard_input
end_keyboard_input:
sw $t0, frogX
sw $t1, frogY
end_move_frog:
jr $ra

frog_collision:
addi $sp, $sp, -4
sw $ra, 0($sp)
lw $t0, displayAddress
lw $t1, frogX
lw $t2, frogY
add $t0, $t0, $t1
add $t0, $t0, $t2
lw $t8, 0($t0)		# top left pixel color
lw $t9, 12($t0)		# top right pixel color
lw $t4, vehicleColor
lw $t5, waterAreaColor
lw $t6, goalAreaColor
lw $t7, goalColor
if_frog_collides_vehicle:
beq $t8, $t4, frog_dies
beq $t9, $t4, frog_dies
if_frog_collides_water:
beq $t8, $t5, frog_dies
beq $t9, $t5, frog_dies
if_frog_collides_goal_area:
beq $t8, $t6, frog_dies
beq $t9, $t6, frog_dies
if_frog_reaches_goal:
beq $t8, $t7, frog_reaches_goal
beq $t9, $t7, frog_reaches_goal
no_collision:
j end_frog_collision
frog_dies:
lw $t0, lives
addi $t0, $t0, -1
sw $t0, lives
j frog_restart
frog_reaches_goal:
addi $sp, $sp, -4	# move the stack pointer up 1 word
la $t0, goalArea	# $t0 = bottom vehicle row position
add $t0, $t0, $t1	# $t0 = frog's x position
addi $t0, $t0, 1008
sw $t0, 0($sp)		# push $t0 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
lw $t1, goalAreaColor	# $t1 = vehicle color
sw $t1, 0($sp)		# push $t1 onto the tack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t2, 16		# $t2 = i (height*4)
sw $t2, 0($sp)		# push $t2 onto the stack
addi $sp, $sp, -4	# move the stack pointer up 1 word
li $t3, 48		# $t3 = j (width*4)
sw $t3, 0($sp)		# push $t3 onto the stack
jal draw_rectangle
frog_restart:
li $t0, 128
sw $t0, frogX
li $t1, 13312
sw $t1, frogY
end_frog_collision:
lw $ra, 0($sp)
addi $sp, $sp, 4
jr $ra

exit:
li $v0, 10 # terminate the program gracefully
syscall