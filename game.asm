#####################################################################
#
# CSCB58 Winter 2024 Assembly Final Project
# University of Toronto, Scarborough
#
# Student: Anish Shah, 1009119160, shahan14, anish.shah@mail.utoronto.ca
#
# Bitmap Display Configuration:
# - Unit width in pixels: 4 (update this as needed)
# - Unit height in pixels: 4 (update this as needed)
# - Display width in pixels: 256 (update this as needed)
# - Display height in pixels: 256 (update this as needed)
# - Base Address for Display: 0x10008000 ($gp)
#
# Which milestoneshave been reached in this submission?
# (See the assignment handout for descriptions of the milestones)
# - Milestone 4
#
# Which approved features have been implemented for milestone 3?
# (See the assignment handout for the list of additional features)
# 1. (fill in the feature, if any)
# 2. (fill in the feature, if any)
# 3. (fill in the feature, if any)
# ... (add more if necessary)
#
# Link to video demonstration for final submission:
# - (insert YouTube / MyMedia / other URL here). Make sure we can view it!
#
# Are you OK with us sharing the video with people outside course staff?
# - yes / no / yes, and please share this project github link as well!
#
# Any additional information that the TA needs to know:
# - (write here, if any)
#
#####################################################################

# Bitmap display starter code
#
# Bitmap Display Configuration:
# - Unit width in pixels: 4
# - Unit height in pixels: 4
# - Display width in pixels: 256
# - Display height in pixels: 256
# - Base Address for Display: 0x10008000 ($gp)
#
.eqv BASE_ADDRESS 0x10008000

#colours
.eqv ORANGE 0xffa500
.eqv DIRT_BROWN 0x9b7653
.eqv GRASS 0x7CFC00
.eqv EYES_BLUE 0x528C9E
.eqv SKIN 0xe0ac69
.eqv WHITE 0xffffff
.eqv MOUTH 0xc14b4b
.eqv GRAY 0x808080
.eqv PURPLE 0x800080
.eqv PLATFORM_BLUE 0x45b6fe
.eqv POISON_GREEN 0x4DB560
.eqv BLACK 0x000000
.eqv PINK 0xFFC0CB

#position
.eqv INIT_POSITION 0x1000BC08


.text

start_game:

li $s4, 2
li $s5, 0
create_base:

	li $t0, ORANGE #orange colour
	li $t4, DIRT_BROWN #brown
	li $t5, GRASS #green

	li $t1, 15868 # right edge, 3rd last row
	li $t2, 15616 # left edge, 3rd last row

	base_3:
		li $t3, 15648   
    		ble $t2, $t3, set_colour_3
    		sw $t0, BASE_ADDRESS($t2)
    		addi $t2, $t2, 8
    		ble $t2, $t1, base_3
    		set_colour_3:
   			sw $t5, BASE_ADDRESS($t2)
    			addi $t2, $t2, 4
    			ble $t2, $t1, base_3

	li $t1, 16124 # right edge, 2nd last row
	li $t2, 15872 # left edge, 2nd last row

	base_2:
		li $t3, 15904   
    		ble $t2, $t3, set_colour_2
    		sw $t0, BASE_ADDRESS($t2)
    		addi $t2, $t2, 4
    		ble $t2, $t1, base_2
    		set_colour_2:
   			sw $t4, BASE_ADDRESS($t2)
    			addi $t2, $t2, 4
    			ble $t2, $t1, base_2


	li $t1, 16380 # right edge, last row
	li $t2, 16128 # left edge, last row

	base_1:
	
		li $t3, 16160   
    		ble $t2, $t3, set_colour
    		sw $t0, BASE_ADDRESS($t2)
    		addi $t2, $t2, 4
    		ble $t2, $t1, base_1  
    		set_colour:
   			sw $t4, BASE_ADDRESS($t2)
    			addi $t2, $t2, 4
    			ble $t2, $t1, base_1

#fireball:

	#addi $t2,$zero,BASE_ADDRESS 
	#addi $t2, $t2, 12140
	#li $t0, ORANGE
	
	#sw $t0, 0($t2)  #row 1
    	#sw $t0, 4($t2)
    	#addi $t2, $t2, 252
    	
    	#sw $t0, 0($t2)  #row 2
    	#sw $t0, 4($t2)
    	#sw $t0, 8($t2)
    	#sw $t0, 12($t2)
    	#addi $t2, $t2, 256
    	
    	#sw $t0, 0($t2)  #row 3
    	#sw $t0, 4($t2)
    	#sw $t0, 8($t2)
    	#sw $t0, 12($t2)
    	#addi $t2, $t2, 260
    	
    	
    	#sw $t0, 0($t2)  #row 4
    	#sw $t0, 4($t2)
    	
teleportation_pickup:

	addi $t2,$zero,BASE_ADDRESS 
	addi $t2, $t2, 13992
	li $t0, GRAY
	li $t4, PURPLE
	
	sw $t0, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	addi $t2, $t2, 252
    	
    	sw $t0, 0($t2)  #row 2
    	sw $t4, 8($t2)
    	sw $t4, 4($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 3
    	sw $t4, 8($t2)
    	sw $t4, 4($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 260
    	
    	
    	sw $t0, 0($t2)  #row 4
    	sw $t0, 4($t2)

heart_pickup:
	
	li $t5, 11
	beq $s5, $t5, ice_pickup

	addi $t2,$zero,BASE_ADDRESS 
	addi $t2, $t2, 5704
	li $t0, PINK
	
	sw $t0, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	addi $t2, $t2, 252
    	
    	sw $t0, 0($t2)  #row 2
    	sw $t0, 12($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 3
    	sw $t0, 12($t2)
    	addi $t2, $t2, 260
    	
    	
    	sw $t0, 0($t2)  #row 4
    	sw $t0, 4($t2)

ice_pickup:

	addi $t2,$zero,BASE_ADDRESS 
	addi $t2, $t2, 7708
	li $t0, EYES_BLUE
	li $t4, PLATFORM_BLUE
	
	sw $t0, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 2
    	sw $t4, 8($t2)
    	sw $t4, 4($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 3
    	sw $t0, 12($t2)
    	sw $t4, 8($t2)
    	sw $t4, 4($t2)
    	addi $t2, $t2, 256
    	
    	
    	sw $t0, 0($t2)  #row 4
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	sw $t0, 12($t2)
    	
la $a1, BASE_ADDRESS
la $a2, INIT_POSITION
la $a3, BASE_ADDRESS 
addi $a3, $a3, 2064
move $s1, $a3
#addi $a2, $a1, 12868
jal position_man
li $s2, 0

main_loop:
	jal create_4_platforms
	jal input_checker
	jal position_star
	jal gravity
	jal teleport_contact
	jal fire_base_contact
	jal heart_contact
	jal print_lives
	j main_loop
	#li $v0, 10 # terminate the program gracefully
	#syscall
	
star:   
	beq $a3, $s1, position_star_exit
	
	li $t0, BLACK
	move $t2, $a3

    	sw $t0, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	addi $t2, $t2, 252
    	
    	sw $t0, 0($t2) #row 2
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	addi $t2, $t2, 244
   	
   	sw $t0, 0($t2) #row 3
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	sw $t0, 16($t2)
    	sw $t0, 20($t2)
    	sw $t0, 24($t2)
   	sw $t0, 28($t2)
   	sw $t0, 32($t2)
   	sw $t0, 36($t2)
   	addi $t2, $t2, 260
   	
   	sw $t0, 0($t2) #row 4
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	sw $t0, 16($t2)
    	sw $t0, 20($t2)
    	sw $t0, 24($t2)
   	sw $t0, 28($t2)
   	addi $t2, $t2, 260
   	
   	sw $t0, 0($t2) #row 5
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	sw $t0, 16($t2)
    	sw $t0, 20($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2) #row 6
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	sw $t0, 16($t2)
    	sw $t0, 20($t2)
   	addi $t2, $t2, 252
   	
   	sw $t0, 0($t2) #row 7
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	sw $t0, 16($t2)
    	sw $t0, 20($t2)
    	sw $t0, 24($t2)
   	sw $t0, 28($t2)
   	addi $t2, $t2, 256
   	
   	sw $t0, 0($t2) #row 8
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	sw $t0, 20($t2)
    	sw $t0, 24($t2)
   	sw $t0, 28($t2)
	
    	li $t0, 0xFFD700
	move $t2, $s1
	
    	sw $t0, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	addi $t2, $t2, 252
    	
    	sw $t0, 0($t2) #row 2
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	addi $t2, $t2, 244
   	
   	sw $t0, 0($t2) #row 3
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	sw $t0, 16($t2)
    	sw $t0, 20($t2)
    	sw $t0, 24($t2)
   	sw $t0, 28($t2)
   	sw $t0, 32($t2)
   	sw $t0, 36($t2)
   	addi $t2, $t2, 260
   	
   	sw $t0, 0($t2) #row 4
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	sw $t0, 16($t2)
    	sw $t0, 20($t2)
    	sw $t0, 24($t2)
   	sw $t0, 28($t2)
   	addi $t2, $t2, 260
   	
   	sw $t0, 0($t2) #row 5
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	sw $t0, 16($t2)
    	sw $t0, 20($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2) #row 6
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	sw $t0, 16($t2)
    	sw $t0, 20($t2)
   	addi $t2, $t2, 252
   	
   	sw $t0, 0($t2) #row 7
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
   	sw $t0, 12($t2)
   	sw $t0, 16($t2)
    	sw $t0, 20($t2)
    	sw $t0, 24($t2)
   	sw $t0, 28($t2)
   	addi $t2, $t2, 256
   	
   	sw $t0, 0($t2) #row 8
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	sw $t0, 20($t2)
    	sw $t0, 24($t2)
   	sw $t0, 28($t2)
   	
	move $a3, $s1
	
	position_star_exit:
	
    	jr $ra
    	
position_star:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	addi $s1, $a3, 4
	li $s3, BASE_ADDRESS
	addi $s3, $s3, 2276
	
	jal floor_check
	beqz $v1, no_floor_delay
	
	li $v0, 32
	li $a0, 100 # wait
	syscall
	
	no_floor_delay:
		
	bgt $s1, $s3, og_position_star
	
	jal star
	lw $ra, 0($sp)
    	addi $sp, $sp, 4
	jr $ra
	og_position_star:
		li $s1, BASE_ADDRESS
		addi $s1, $s1, 2064
		jal star
		
		lw $ra, 0($sp)
    		addi $sp, $sp, 4
		jr $ra

gravity:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
    	
	jal floor_check
	beqz $v1, fall
	j no_fall

	fall:
		li $v0, 32
		li $a0, 150 # wait
		syscall
	
		addi $a2, $a2, 256
		jal position_man

	no_fall:
		lw $ra, 0($sp)
    		addi $sp, $sp, 4
    		jr $ra
    	
position_man:
    	
	move $t8, $a1
    	move $t9, $a2
    	beq $t8, $t9, position_man_exit
    	move $a1, $t9
    	addi $t9, $t9, -1028
    	addi $t8, $t8, -1028
	
	#erase from old address
	move $t2, $t8
	li $t0, BLACK
	
	sw $t0, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 2
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	addi $t2, $t2, 252
    
    	sw $t0, 0($t2)  #row 3
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	sw $t0, 12($t2)
    	sw $t0, 16($t2)
    	addi $t2, $t2, 260
    	
    	sw $t0, 0($t2)  #row 4
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 5
    	sw $t0, 8($t2)
	
	#redraw in new address
	move $t2, $t9
	li $t0, SKIN #skins
	li $t1, EYES_BLUE #eyes
	li $t3, MOUTH #mouth
	li $t4, WHITE #white
	li $t5, GRAY #gray
	
	sw $t1, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	sw $t1, 8($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 2
    	sw $t3, 4($t2)
    	sw $t0, 8($t2)
    	addi $t2, $t2, 252
    	
    	sw $t0, 0($t2)  #row 3
    	sw $t4, 4($t2)
    	sw $t5, 8($t2)
    	sw $t4, 12($t2)
    	sw $t0, 16($t2)
    	addi $t2, $t2, 260
    	
    	sw $t4, 0($t2)  #row 4
    	sw $t4, 4($t2)
    	sw $t4, 8($t2)
    	addi $t2, $t2, 256
    	
    	sw $t5, 0($t2)  #row 5
    	sw $t5, 8($t2)
    	
    	position_man_exit:
   
    	jr $ra


input_checker:
    	addi $sp, $sp, -4
	sw $ra, 0($sp)
    	
	li $t1, 0xffff0000 
	lw $t2, 0($t1) 
	bne $t2, 1, input_ended

	lw $t0, 4($t1)
	li $t5, 256 

	beq $t0, 0x61, a_check_edge	  
	beq $t0, 0x64, d_check_edge
	beq $t0, 0x77, w_press
	beq $t0, 0x72, r_press
	beq $t0, 0x71, q_press
	j input_ended
	
	a_check_edge:
    		li $t3, INIT_POSITION
    		sub $t7, $t3, $a1	       
    		div $t7, $t5        
   	 	mfhi $t4         
    		bnez $t4, a_press   
    		j input_ended
    		
    	d_check_edge:
    		li $t3, 16372
    		sub $t7, $t3, $a1	       
    		div $t7, $t5        
   	 	mfhi $t4         
    		bnez $t4, d_press   
    		j input_ended 

	a_press:
	    	addi $a2, $a2, -8   
		jal position_man
		j input_ended
	
	d_press:
		addi $a2, $a2, 8
		jal position_man
		j input_ended
	
	w_press:
		jal floor_check
		beqz $v1, check_double
		j jump
		
		check_double:
			bnez $s2, no_jump
			li $s2, 1
			j jump
		
		jump:
			li $t5, 1272
    			addi $a2, $a2, -4352
    			addi $t7, $a2, -BASE_ADDRESS
  			bge, $t7, $t5, skip_modulo
    			li $t0, 256
    			div $t7, $t0
    			mfhi $a2
    			addi $a2, $a2, 1280
    			addi $a2, $a2, BASE_ADDRESS
    			
		skip_modulo:
    			jal position_man
    			j input_ended  
			
		no_jump:
			j input_ended
	
	r_press:
		li $t1, 0
		jal black_init
		j start_game
	q_press:
		li $t1, 0
		jal black_init
		li $v0, 10 # terminate the program gracefully
		syscall
		
			
	input_ended:
		lw $ra, 0($sp)
    		addi $sp, $sp, 4
    		jr $ra
    		
floor_check:
    	
	li $v1, 0
	addi $t1, $a1, 256
	addi $t1, $t1, -BASE_ADDRESS
	
	li $t7, 15616
	bge $t1, $t7, check_upper_lim
	
	li $t7, 13380
	bge $t1, $t7, check_upper_lim2
	
	li $t7, 9908
	bge $t1, $t7, check_upper_lim2

	li $t7, 9236
	bge $t1, $t7, check_upper_lim2
	
	li $t7, 6784
	bge $t1, $t7, check_upper_lim2	
	
	j exit_floor_check
	
	check_upper_lim:
		addi $t7, $t7, 32
		ble $t1, $t7, set_true
		j exit_floor_check
	
	check_upper_lim2:
		addi $t7, $t7, 28
		ble $t1, $t7, set_true
		j exit_floor_check
	
	set_true:
		li $v1, 1
		j exit_floor_check
		
	exit_floor_check:
    	
    	jr $ra

black_init:
	li $t2, 16384
	li $t0, BLACK
	addi $t1, $t1, 4
	sw $t0, BASE_ADDRESS($t1)
	ble $t1, $t2, black_init
	jr $ra
	
teleport_contact:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	li $t0, 13992
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 13996
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp
	
	li $t0, 14000
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 13988
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp
	
	li $t0, 14248
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 14252
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 14256
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 14244
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 14504
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 14508
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 14512
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 14500
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 14760
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 14764
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	li $t0, 14768
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp   
	
	li $t0, 14756
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp 
	
	lw $ra, 0($sp)
    	addi $sp, $sp, 4
	jr $ra 

	initiate_tp:
		
		li $t1, 0
		li $a2, 9660
		addi $a2, $a2, BASE_ADDRESS
		jal position_man
    		
		addi $t2,$zero,BASE_ADDRESS 
		addi $t2, $t2, 13992
		li $t0, GRAY
		li $t4, PURPLE
	
		sw $t0, 0($t2)  #row 1
    		sw $t0, 4($t2)
    		addi $t2, $t2, 252
    	
    		sw $t0, 0($t2)  #row 2
    		sw $t4, 8($t2)
    		sw $t4, 4($t2)
    		sw $t0, 12($t2)
    		addi $t2, $t2, 256
    	
    		sw $t0, 0($t2)  #row 3
    		sw $t4, 8($t2)
    		sw $t4, 4($t2)
    		sw $t0, 12($t2)
    		addi $t2, $t2, 260
    	
    	
    		sw $t0, 0($t2)  #row 4
    		sw $t0, 4($t2)
    		
    		lw $ra, 0($sp)
    		addi $sp, $sp, 4
    		jr $ra

heart_contact:
	
	li $t5, 11
	beq $s5, $t5, bonus_used

	li $t0, 5704
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 5708
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart
	
	li $t0, 5712
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 5716
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart
	
	li $t0, 5960
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 5964
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 5968
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 5972
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 6216
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 6220
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 6224
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 6228
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 6472
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 6476
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	li $t0, 6480
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart   
	
	li $t0, 6484
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_heart 
	
	bonus_used:
	
	jr $ra 

	initiate_heart:
    		
		addi $t2,$zero,BASE_ADDRESS 
		addi $t2, $t2, 5704
		li $t0, BLACK
	
		sw $t0, 0($t2)  #row 1
    		sw $t0, 4($t2)
    		addi $t2, $t2, 252
    	
    		sw $t0, 0($t2)  #row 2
    		sw $t0, 12($t2)
    		addi $t2, $t2, 256
    	
    		sw $t0, 0($t2)  #row 3
    		sw $t0, 12($t2)
    		addi $t2, $t2, 260
    	
    	
    		sw $t0, 0($t2)  #row 4
    		sw $t0, 4($t2)
    		
    		addi $s4, $s4, 1
    		li $s5, 11
    		
    		jr $ra

print_lives:
	li $t1, 1
	li $t2, 2
	li $t3, 3
	
	li $t4, BASE_ADDRESS
	addi, $t4, $t4, 260
	
	li $t0, PINK
	
	beq $s4, $t1, one_life
	
	beq $s4, $t2, two_lives
	
	beq $s4, $t3, three_lives
	
	
	one_life:
		sw $t0, 0($t4)
		sw $t0, 256($t4)
		sw $t0, 512($t4)
		sw $t0, 768($t4)
		jr $ra
			
	two_lives:
		sw $t0, 0($t4)
		sw $t0, 256($t4)
		sw $t0, 512($t4)
		sw $t0, 768($t4)
		
		sw $t0, 8($t4)
		sw $t0, 264($t4)
		sw $t0, 520($t4)
		sw $t0, 776($t4)
		
		jr $ra
	
	three_lives:
	
		sw $t0, 0($t4)
		sw $t0, 256($t4)
		sw $t0, 512($t4)
		sw $t0, 768($t4)
		
		sw $t0, 8($t4)
		sw $t0, 264($t4)
		sw $t0, 520($t4)
		sw $t0, 776($t4)
		
		sw $t0, 16($t4)
		sw $t0, 272($t4)
		sw $t0, 528($t4)
		sw $t0, 784($t4)
		jr $ra
	
 
 fire_base_contact:
 	
	addi $t1, $a1, 256
	addi $t1, $t1, -BASE_ADDRESS
	
	li $t7, 16160
	bgt $t1, $t7, lose_game
	
	li $t7, 15904
	bge $t1, $t7, check_fire_lim
 	
	j exit_fire_check
	
	check_fire_lim:
		addi $t7, $t7, 224
		ble $t1, $t7, lose_life
		j exit_fire_check
		
	lose_life:
		li $t2, 1
		beq $s4, $t2, lose_game
		addi $s4, $s4, -1
		li $t1, 0
		jal black_init
		j create_base
		
	lose_game:
		
		li $v0, 32
		li $a0, 500 # wait
		syscall
	
	
		li $t1, 0
		jal black_init
		addi $t2,$zero,BASE_ADDRESS 
		addi $t2, $t2, 7288
		li $t0, ORANGE
		
		sw $t0, 0($t2)
		sw $t0, 256($t2)
		sw $t0, 512($t2)
		sw $t0, 768($t2)
		sw $t0, 1024($t2)
		sw $t0, 1280($t2)
		sw $t0, 1536($t2)
		sw $t0, 1540($t2)
		sw $t0, 1544($t2)
		sw $t0, 1548($t2)
			
		li $v0, 10 # terminate the program gracefully
		syscall

	exit_fire_check:

    	jr $ra
    	
create_4_platforms:

	
    	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	li $t0, PLATFORM_BLUE
	li $t6, 0
	li $t7, 4

	addi $t1, $zero, 6784 
	addi $sp, $sp, -4 
	sw $t1, 0($sp)
	jal platform   #platform 1
	lw $t1, 0($sp)

	addi $t1, $zero, 13380 
	addi $sp, $sp, -4 
	sw $t1, 0($sp)
	jal platform #platform 2
	lw $t1, 0($sp)
	
	addi $t1, $zero, 9236
	addi $sp, $sp, -4 
	sw $t1, 0($sp)
	jal platform #platform 3
	lw $t1, 0($sp)

	addi $t1, $zero, 9908 
	addi $sp, $sp, -4 
	sw $t1, 0($sp)
	jal platform #platform 4
	lw $t1, 0($sp)
	
	platform:
		beq $t6, $t7, platform_exit
		lw $t3, 0($sp)
		addi $sp, $sp, 4
	
		addi $t2,$zero,BASE_ADDRESS
		add $t2,$t2,$t3

		sw $t0,0($t2)
		sw $t0,4($t2)
		sw $t0,8($t2)
		sw $t0,12($t2)
		sw $t0,16($t2)
		sw $t0,20($t2)
		sw $t0,24($t2)
		
		addi $t6, $t6, 1
		jr $ra
	
	platform_exit:
	lw $ra, 0($sp)
    	addi $sp, $sp, 4
	jr $ra