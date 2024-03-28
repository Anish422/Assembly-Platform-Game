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

.text
li $t0 ORANGE #orange colour
li $t4 DIRT_BROWN #brown
li $t5 GRASS #green

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

li $t0, PLATFORM_BLUE

create_4_platforms:

	li $t6, 0
	li $t7, 4

	addi $t1, $zero, 6732 
	addi $sp, $sp, -4 
	sw $t1, 0($sp)
	jal platform   #platform 1
	lw $t1, 0($sp)

	addi $t1, $zero, 13404 
	addi $sp, $sp, -4 
	sw $t1, 0($sp)
	jal platform #platform 2
	lw $t1, 0($sp)
	
	addi $t1, $zero, 10516 
	addi $sp, $sp, -4 
	sw $t1, 0($sp)
	jal platform #platform 3
	lw $t1, 0($sp)

	addi $t1, $zero, 9396 
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
		addi $t2, $t2, 256
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
    		li $t6, 0

star:   
	addi $t2,$zero,BASE_ADDRESS 
	addi $t2, $t2, 2176
	li $t0, 0xFFD700
	
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
   
   
man: 
	addi $t2,$zero,BASE_ADDRESS 
	addi $t2, $t2, 14344
	li $t0, SKIN #skin
	li $t1, EYES_BLUE #eyes
	li $t3, MOUTH #mouth
	li $t4, WHITE #white
	li $t5, GRAY #gray
	li $t6, PURPLE #purple
	
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
    	sw $t6, 8($t2)
    	sw $t4, 12($t2)
    	sw $t0, 16($t2)
    	addi $t2, $t2, 260
    	
    	sw $t4, 0($t2)  #row 4
    	sw $t4, 4($t2)
    	sw $t4, 8($t2)
    	addi $t2, $t2, 256
    	
    	sw $t5, 0($t2)  #row 5
    	sw $t5, 8($t2)
    	
fireball:

	addi $t2,$zero,BASE_ADDRESS 
	addi $t2, $t2, 12140
	li $t0, ORANGE
	
	sw $t0, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	addi $t2, $t2, 252
    	
    	sw $t0, 0($t2)  #row 2
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 3
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 260
    	
    	
    	sw $t0, 0($t2)  #row 4
    	sw $t0, 4($t2)
    	
teleportation_pickup:

	addi $t2,$zero,BASE_ADDRESS 
	addi $t2, $t2, 13892
	li $t0, PURPLE
	
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

poison_pickup:

	addi $t2,$zero,BASE_ADDRESS 
	addi $t2, $t2, 5800
	li $t0, POISON_GREEN
	
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
	addi $t2, $t2, 9244
	li $t0, EYES_BLUE
	
	sw $t0, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 2
    	sw $t0, 12($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 3
    	sw $t0, 12($t2)
    	addi $t2, $t2, 256
    	
    	
    	sw $t0, 0($t2)  #row 4
    	sw $t0, 4($t2)
    	sw $t0, 8($t2)
    	sw $t0, 12($t2)

    	
    	
    	
   	
    	
    	
    	

li $v0, 10 # terminate the program gracefully
syscall