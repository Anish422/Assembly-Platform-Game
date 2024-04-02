#####################################################################
#
# CSCB58 Winter 2024 Assembly Final Project
# University of Toronto, Scarborough
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
.eqv GOLD 0xFFD700

#positions
.eqv INIT_POSITION_MAN 0x1000BC08
.eqv INIT_POSITION_STAR 0x10008810
.eqv INIT_POSITION_FIREBALL 0x1000AF0C

.text

start_game:
	li $t1, 0
	jal black_init
	
	li $t0, WHITE
	li $t3, GOLD
	li $t2, BASE_ADDRESS
	li $t7, PLATFORM_BLUE
	addi $t2, $t2, 1280
	li $t4, PINK
	
        sw $t0, 580($t2)
        sw $t0, 584($t2)
        sw $t0, 588($t2)
        sw $t0, 596($t2)
        sw $t0, 600($t2)
        sw $t0, 604($t2)
        sw $t0, 612($t2)
        sw $t0, 616($t2)
        sw $t0, 620($t2)
        sw $t0, 628($t2)
        sw $t0, 632($t2)
        sw $t0, 644($t2)
        sw $t0, 648($t2)
        sw $t0, 652($t2)
        sw $t0, 676($t2)
        sw $t0, 680($t2)
        sw $t0, 684($t2)
        sw $t0, 836($t2)
        sw $t0, 856($t2)
        sw $t0, 868($t2)
        sw $t0, 876($t2)
        sw $t0, 884($t2)
        sw $t0, 892($t2)
        sw $t0, 904($t2)
        sw $t0, 920($t2)
        sw $t0, 932($t2)
        sw $t0, 1092($t2)
        sw $t0, 1096($t2)
        sw $t0, 1100($t2)
        sw $t0, 1112($t2)
        sw $t0, 1124($t2)
        sw $t0, 1128($t2)
        sw $t0, 1132($t2)
        sw $t0, 1140($t2)
        sw $t0, 1144($t2)
        sw $t0, 1160($t2)
        sw $t0, 1188($t2)
        sw $t0, 1192($t2)
        sw $t0, 1196($t2)
        sw $t0, 1356($t2)
        sw $t0, 1368($t2)
        sw $t0, 1380($t2)
        sw $t0, 1388($t2)
        sw $t0, 1396($t2)
        sw $t0, 1404($t2)
        sw $t0, 1416($t2)
        sw $t0, 1432($t2)
        sw $t0, 1452($t2)
        sw $t0, 1604($t2)
        sw $t0, 1608($t2)
        sw $t0, 1612($t2)
        sw $t0, 1624($t2)
        sw $t0, 1636($t2)
        sw $t0, 1644($t2)
        sw $t0, 1652($t2)
        sw $t0, 1660($t2)
        sw $t0, 1672($t2)
        sw $t0, 1700($t2)
        sw $t0, 1704($t2)
        sw $t0, 1708($t2)
        sw $t0, 2372($t2)
        sw $t0, 2376($t2)
        sw $t0, 2380($t2)
        sw $t0, 2388($t2)
        sw $t0, 2396($t2)
        sw $t0, 2404($t2)
        sw $t0, 2412($t2)
        sw $t0, 2416($t2)
        sw $t0, 2420($t2)
        sw $t0, 2436($t2)
        sw $t0, 2440($t2)
        sw $t0, 2444($t2)
        sw $t0, 2628($t2)
        sw $t0, 2644($t2)
        sw $t0, 2652($t2)
        sw $t0, 2660($t2)
        sw $t0, 2672($t2)
        sw $t0, 2684($t2)
        sw $t0, 2692($t2)
        sw $t0, 2884($t2)
        sw $t0, 2888($t2)
        sw $t0, 2892($t2)
        sw $t0, 2904($t2)
        sw $t0, 2916($t2)
        sw $t0, 2928($t2)
        sw $t0, 2948($t2)
        sw $t0, 2952($t2)
        sw $t0, 2956($t2)
        sw $t0, 3140($t2)
        sw $t0, 3156($t2)
        sw $t0, 3164($t2)
        sw $t0, 3172($t2)
        sw $t0, 3184($t2)
        sw $t0, 3196($t2)
        sw $t0, 3204($t2)
        sw $t0, 3396($t2)
        sw $t0, 3400($t2)
        sw $t0, 3404($t2)
        sw $t0, 3412($t2)
        sw $t0, 3420($t2)
        sw $t0, 3428($t2)
        sw $t0, 3440($t2)
        sw $t0, 3460($t2)
        sw $t0, 3464($t2)
        sw $t0, 3468($t2)
        sw $t0, 5192($t2)
        sw $t0, 5196($t2)
        sw $t0, 5200($t2)
        sw $t0, 5208($t2)
        sw $t0, 5212($t2)
        sw $t0, 5216($t2)
        sw $t0, 5224($t2)
        sw $t0, 5228($t2)
        sw $t0, 5232($t2)
        sw $t3, 5248($t2)
        sw $t3, 5252($t2)
        sw $t3, 5256($t2)
        sw $t3, 5264($t2)
        sw $t3, 5268($t2)
        sw $t3, 5272($t2)
        sw $t3, 5280($t2)
        sw $t3, 5284($t2)
        sw $t3, 5288($t2)
        sw $t3, 5296($t2)
        sw $t3, 5300($t2)
        sw $t0, 5444($t2)
        sw $t0, 5464($t2)
        sw $t0, 5484($t2)
        sw $t3, 5504($t2)
        sw $t3, 5524($t2)
        sw $t3, 5536($t2)
        sw $t3, 5544($t2)
        sw $t3, 5552($t2)
        sw $t3, 5560($t2)
        sw $t0, 5700($t2)
        sw $t0, 5708($t2)
        sw $t0, 5712($t2)
        sw $t0, 5720($t2)
        sw $t0, 5724($t2)
        sw $t0, 5728($t2)
        sw $t0, 5740($t2)
        sw $t3, 5760($t2)
        sw $t3, 5764($t2)
        sw $t3, 5768($t2)
        sw $t3, 5780($t2)
        sw $t3, 5792($t2)
        sw $t3, 5796($t2)
        sw $t3, 5800($t2)
        sw $t3, 5808($t2)
        sw $t3, 5812($t2)
        sw $t0, 5956($t2)
        sw $t0, 5968($t2)
        sw $t0, 5976($t2)
        sw $t0, 5996($t2)
        sw $t3, 6024($t2)
        sw $t3, 6036($t2)
        sw $t3, 6048($t2)
        sw $t3, 6056($t2)
        sw $t3, 6064($t2)
        sw $t3, 6072($t2)
        sw $t0, 6216($t2)
        sw $t0, 6220($t2)
        sw $t0, 6224($t2)
        sw $t0, 6232($t2)
        sw $t0, 6236($t2)
        sw $t0, 6240($t2)
        sw $t0, 6252($t2)
        sw $t3, 6272($t2)
        sw $t3, 6276($t2)
        sw $t3, 6280($t2)
        sw $t3, 6292($t2)
        sw $t3, 6304($t2)
        sw $t3, 6312($t2)
        sw $t3, 6320($t2)
        sw $t3, 6328($t2)
        sw $t0, 6984($t2)
        sw $t0, 6988($t2)
        sw $t0, 6992($t2)
        sw $t0, 7004($t2)
        sw $t0, 7024($t2)
        sw $t0, 7040($t2)
        sw $t0, 7048($t2)
        sw $t0, 7056($t2)
        sw $t0, 7060($t2)
        sw $t0, 7064($t2)
        sw $t7, 7080($t2)
        sw $t7, 7084($t2)
        sw $t0, 7244($t2)
        sw $t0, 7256($t2)
        sw $t0, 7264($t2)
        sw $t0, 7280($t2)
        sw $t0, 7296($t2)
        sw $t0, 7304($t2)
        sw $t0, 7312($t2)
        sw $t0, 7320($t2)
        sw $t7, 7336($t2)
        sw $t7, 7340($t2)
        sw $t0, 7500($t2)
        sw $t0, 7512($t2)
        sw $t0, 7520($t2)
        sw $t0, 7536($t2)
        sw $t0, 7544($t2)
        sw $t0, 7552($t2)
        sw $t0, 7560($t2)
        sw $t0, 7568($t2)
        sw $t0, 7576($t2)
        sw $t7, 7592($t2)
        sw $t7, 7596($t2)
        sw $t0, 7756($t2)
        sw $t0, 7768($t2)
        sw $t0, 7776($t2)
        sw $t0, 7792($t2)
        sw $t0, 7796($t2)
        sw $t0, 7804($t2)
        sw $t0, 7808($t2)
        sw $t0, 7816($t2)
        sw $t0, 7824($t2)
        sw $t0, 7832($t2)
        sw $t0, 8012($t2)
        sw $t0, 8028($t2)
        sw $t0, 8048($t2)
        sw $t0, 8064($t2)
        sw $t0, 8072($t2)
        sw $t0, 8080($t2)
        sw $t0, 8088($t2)
        sw $t7, 8104($t2)
        sw $t7, 8108($t2)
        sw $t7, 8360($t2)
        sw $t7, 8364($t2)
        sw $t0, 9800($t2)
        sw $t0, 9808($t2)
        sw $t0, 9820($t2)
        sw $t0, 9832($t2)
        sw $t0, 9840($t2)
        sw $t0, 9852($t2)
        sw $t0, 9860($t2)
        sw $t0, 9868($t2)
        sw $t0, 9872($t2)
        sw $t0, 9876($t2)
        sw $t0, 9884($t2)
        sw $t0, 9892($t2)
        sw $t0, 9900($t2)
        sw $t0, 9904($t2)
        sw $t0, 9908($t2)
        sw $t0, 10056($t2)
        sw $t0, 10064($t2)
        sw $t0, 10072($t2)
        sw $t0, 10080($t2)
        sw $t0, 10088($t2)
        sw $t0, 10096($t2)
        sw $t0, 10108($t2)
        sw $t0, 10116($t2)
        sw $t0, 10124($t2)
        sw $t0, 10132($t2)
        sw $t0, 10140($t2)
        sw $t0, 10148($t2)
        sw $t0, 10156($t2)
        sw $t0, 10316($t2)
        sw $t0, 10328($t2)
        sw $t0, 10336($t2)
        sw $t0, 10344($t2)
        sw $t0, 10352($t2)
        sw $t0, 10364($t2)
        sw $t0, 10368($t2)
        sw $t0, 10372($t2)
        sw $t0, 10380($t2)
        sw $t0, 10384($t2)
        sw $t0, 10388($t2)
        sw $t0, 10396($t2)
        sw $t0, 10404($t2)
        sw $t0, 10412($t2)
        sw $t0, 10416($t2)
        sw $t0, 10420($t2)
        sw $t0, 10572($t2)
        sw $t0, 10584($t2)
        sw $t0, 10592($t2)
        sw $t0, 10600($t2)
        sw $t0, 10608($t2)
        sw $t0, 10620($t2)
        sw $t0, 10628($t2)
        sw $t0, 10636($t2)
        sw $t0, 10644($t2)
        sw $t0, 10652($t2)
        sw $t0, 10660($t2)
        sw $t0, 10668($t2)
        sw $t0, 10828($t2)
        sw $t0, 10844($t2)
        sw $t0, 10856($t2)
        sw $t0, 10860($t2)
        sw $t0, 10864($t2)
        sw $t0, 10876($t2)
        sw $t0, 10884($t2)
        sw $t0, 10892($t2)
        sw $t0, 10900($t2)
        sw $t0, 10912($t2)
        sw $t0, 10924($t2)
        sw $t0, 10928($t2)
        sw $t0, 10932($t2)
        sw $t4, 11604($t2)
        sw $t4, 11608($t2)
        sw $t4, 11632($t2)
        sw $t4, 11648($t2)
        sw $t4, 11656($t2)
        sw $t4, 11664($t2)
        sw $t4, 11672($t2)
        sw $t4, 11676($t2)
        sw $t4, 11680($t2)
        sw $t4, 11688($t2)
        sw $t4, 11692($t2)
        sw $t4, 11696($t2)
        sw $t4, 11856($t2)
        sw $t4, 11868($t2)
        sw $t4, 11888($t2)
        sw $t4, 11904($t2)
        sw $t4, 11912($t2)
        sw $t4, 11920($t2)
        sw $t4, 11928($t2)
        sw $t4, 11944($t2)
        sw $t4, 12120($t2)
        sw $t4, 12124($t2)
        sw $t4, 12144($t2)
        sw $t4, 12160($t2)
        sw $t4, 12168($t2)
        sw $t4, 12176($t2)
        sw $t4, 12184($t2)
        sw $t4, 12188($t2)
        sw $t4, 12192($t2)
        sw $t4, 12200($t2)
        sw $t4, 12368($t2)
        sw $t4, 12372($t2)
        sw $t4, 12376($t2)
        sw $t4, 12400($t2)
        sw $t4, 12416($t2)
        sw $t4, 12424($t2)
        sw $t4, 12432($t2)
        sw $t4, 12440($t2)
        sw $t4, 12456($t2)
        sw $t4, 12460($t2)
        sw $t4, 12464($t2)
        sw $t4, 12624($t2)
        sw $t4, 12656($t2)
        sw $t4, 12672($t2)
        sw $t4, 12680($t2)
        sw $t4, 12688($t2)
        sw $t4, 12696($t2)
        sw $t4, 12720($t2)
        sw $t4, 12880($t2)
        sw $t4, 12884($t2)
        sw $t4, 12888($t2)
        sw $t4, 12892($t2)
        sw $t4, 12912($t2)
        sw $t4, 12916($t2)
        sw $t4, 12920($t2)
        sw $t4, 12928($t2)
        sw $t4, 12940($t2)
        sw $t4, 12952($t2)
        sw $t4, 12956($t2)
        sw $t4, 12960($t2)
        sw $t4, 12968($t2)
        sw $t4, 12972($t2)
        sw $t4, 12976($t2)
        
        check_start_input:
        
        	li $t1, 0xffff0000 
		lw $t2, 0($t1) 
		bne $t2, 1, check_start_input

		lw $t0, 4($t1)

		beq $t0, 0x73, s_pressed	  
		beq $t0, 0x65, e_pressed
		b check_start_input
		
		e_pressed:
			li $t1, 0
			jal black_init
			li $v0, 10 # terminate the program gracefully
			syscall
		
		s_pressed:
			li $t1, 0
			jal black_init
        
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
    			
li $s7, 0
    	
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
la $a2, INIT_POSITION_MAN
li $a3, INIT_POSITION_STAR
la $s6, INIT_POSITION_FIREBALL
jal position_man
li $s2, 0

main_loop:
	jal create_4_platforms
	jal input_checker
	jal position_star
	jal position_fireball
	jal gravity
	jal teleport_contact
	jal ice_contact
	jal fire_base_contact
	jal heart_contact
	jal fireball_contact
	jal print_lives
	jal star_contact
	j main_loop
	#li $v0, 10 # terminate the program gracefully
	#syscall
	
position_fireball:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	addi $s3, $s6, 8
	
	li $t0, BASE_ADDRESS
	addi $t0, $t0, 12260
	
	jal floor_check
	beqz $v1, no_floor_delay
	
	li $v0, 32
	li $a0, 50 # wait
	syscall
	
	no_floor_delay:
		
	bgt $s3, $t0, og_position_fireball
	
	jal fireball
	lw $ra, 0($sp)
    	addi $sp, $sp, 4
	jr $ra
	
	og_position_fireball:
	
		li $s3, INIT_POSITION_FIREBALL
		jal fireball
		
		lw $ra, 0($sp)
    		addi $sp, $sp, 4
		jr $ra
	
	
fireball:
	beq $s6, $s3, position_fireball_exit
	
	move $t2, $s6
	li $t0, BLACK
	
	sw $t0, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	addi $t2, $t2, 252
    	
    	sw $t0, 0($t2)  #row 2
    	sw $t0, 8($t2)
    	sw $t0, 4($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 3
    	sw $t0, 8($t2)
    	sw $t0, 4($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 260
    	
    	
    	sw $t0, 0($t2)  #row 4
    	sw $t0, 4($t2)

	move $t2, $s3
	li $t0, ORANGE
	
	sw $t0, 0($t2)  #row 1
    	sw $t0, 4($t2)
    	addi $t2, $t2, 252
    	
    	sw $t0, 0($t2)  #row 2
    	sw $t0, 8($t2)
    	sw $t0, 4($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 256
    	
    	sw $t0, 0($t2)  #row 3
    	sw $t0, 8($t2)
    	sw $t0, 4($t2)
    	sw $t0, 12($t2)
    	addi $t2, $t2, 260
    	
    	
    	sw $t0, 0($t2)  #row 4
    	sw $t0, 4($t2)
    	
    	move $s6, $s3
    	
    	position_fireball_exit:
	
    	jr $ra
	
star:   
	li $t7, 11
	beq $t7, $s7, position_star_exit
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
	
    	li $t0, GOLD
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
	li $t0, BASE_ADDRESS
	addi $t0, $t0, 2276
	
	jal floor_check
	beqz $v1, no_floor_delay2
	
	li $v0, 32
	li $a0, 50 # wait
	syscall
	
	no_floor_delay2:
		
	bgt $s1, $t0, og_position_star
	
	jal star
	lw $ra, 0($sp)
    	addi $sp, $sp, 4
	jr $ra
	og_position_star:
		li $s1, INIT_POSITION_STAR
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
    		li $t3, INIT_POSITION_MAN
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
	
	li $t0, 13984
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp

	li $t0, 13988
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	  
	
	li $t0, 13992
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	
	li $t0, 13996
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	
	li $t0, 14000
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	
	li $t0, 14004
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	
	li $t0, 14008
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_tp
	addi $t0, $t0, 256
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

	li $t6, 5704
	addi $t6, $t6, BASE_ADDRESS
	
	move $t0, $t6
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart  
	
	addi $t0, $t6, -4
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	
	addi $t0, $t6, -8
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	
	addi $t0, $t6, 4
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	
	addi $t0, $t6, 8
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	
	addi $t0, $t6, 12
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	
	
	addi $t0, $t6, 16
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	
	addi $t0, $t6, 20
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	
	addi $t0, $t6, -12
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_heart
	
	jr $ra
	
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

ice_contact:
	
	li $t5, 11
	beq $s7, $t5, ice_used
	
	li $t0, 7700
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice

	li $t0, 7704
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	  
	
	li $t0, 7708
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	
	li $t0, 7712
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	
	li $t0, 7716
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	
	li $t0, 7720
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	
	li $t0, 7724
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	
	li $t0, 7728
	addi $t0, $t0, BASE_ADDRESS
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_ice
	
	ice_used:
	
	jr $ra 

	initiate_ice:
    		
		addi $t2,$zero,BASE_ADDRESS 
		addi $t2, $t2, 7708
		li $t0, BLACK
	
		sw $t0, 0($t2)  #row 1
    		sw $t0, 4($t2)
    		sw $t0, 8($t2)
    		sw $t0, 12($t2)
    		addi $t2, $t2, 256
    	
    		sw $t0, 0($t2)  #row 2
    		sw $t0, 4($t2)
    		sw $t0, 8($t2)
    		sw $t0, 12($t2)
    		addi $t2, $t2, 256
    	
    		sw $t0, 0($t2)  #row 3
    		sw $t0, 4($t2)
    		sw $t0, 8($t2)
    		sw $t0, 12($t2)
    		addi $t2, $t2, 256
    	
    	
    		sw $t0, 0($t2)  #row 4
    		sw $t0, 4($t2)
    		sw $t0, 8($t2)
    		sw $t0, 12($t2)	
    		
    		li $s7, 11
    		
    		jr $ra

fireball_contact:
	
	move $t0, $s6
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball  
	
	addi $t0, $s6, -4
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	
	addi $t0, $s6, -8
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	
	addi $t0, $s6, 4
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	
	addi $t0, $s6, 8
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	
	addi $t0, $s6, 12
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	
	
	addi $t0, $s6, 16
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	
	addi $t0, $s6, 20
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 512
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	
	addi $t0, $s6, -12
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_fireball
	
	jr $ra

	initiate_fireball:
	
		li $v0, 32
		li $a0, 400 # wait
		syscall
    		
		li $t2, 1
		beq $s4, $t2, lose_game
		addi $s4, $s4, -1
		li $t1, 0
		jal black_init
		j create_base	
    		
    		jr $ra
star_contact:

	move $t0, $a3
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	
	move $t0, $a3
	addi $t0, $t0, 4
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, 8
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, 12
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, 16
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, 20
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, 24
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, 28
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	
	
	move $t0, $a3
	addi $t0, $t0, -4
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, -8
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, -12
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, -16
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, -20
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, -24
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	
	move $t0, $a3
	addi $t0, $t0, -28
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star  
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	addi $t0, $t0, 256
	beq $a1, $t0, initiate_star
	

	jr $ra

	initiate_star:
	
		li $v0, 32
		li $a0, 400 # wait
		syscall
    		
    		li $t1, 0
		jal black_init
		addi $t2,$zero,BASE_ADDRESS
		addi $t2, $t2, 7180 
		li $t0, GRASS
		
		sw $t0, 92($t2)
                sw $t0, 124($t2)
                sw $t0, 348($t2)
                sw $t0, 380($t2)
                sw $t0, 604($t2)
                sw $t0, 636($t2)
                sw $t0, 860($t2)
                sw $t0, 892($t2)
                sw $t0, 1116($t2)
                sw $t0, 1132($t2)
                sw $t0, 1148($t2)
                sw $t0, 1372($t2)
                sw $t0, 1384($t2)
                sw $t0, 1392($t2)
                sw $t0, 1404($t2)
                sw $t0, 1628($t2)
                sw $t0, 1636($t2)
                sw $t0, 1652($t2)
                sw $t0, 1660($t2)
                sw $t0, 1884($t2)
                sw $t0, 1888($t2)
                sw $t0, 1912($t2)
                sw $t0, 1916($t2)
		
		li $v0, 32
		li $a0, 800 # wait
		syscall
		
    		j start_game

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
		
		li $v0, 32
		li $a0, 800 # wait
		syscall
			
		j start_game

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
