	.thumb
	.syntax unified
	.TEXT
	.GLOBAL START

START:


	LDR R1, =30
	LDR R2, =-30
	LDR R3, ='A'
	
	LDR R4, =ARRAY
	LDR R6, =WORD

	SUB SP, SP, #4
	LDR R7, [R6]
	STR R7, [SP]
	SUB SP, SP, #4
	LDR R7, [R6,#4]!
	STR R7, [SP]
	SUB SP, SP, #4
	LDR R7, [R6,#4]!
	STR R7, [SP]
	SUB SP, SP, #4
	LDR R7, [R6,#4]!
	STR R7, [SP]
	SUB SP, SP, #4
	LDR R7, [R6,#4]!
	STR R7, [SP]
	

STOP:
	b STOP
 
ARRAY:		.word 	20, 3,  5, 21
			.word 	1,  2,  3,  4
			.word	5,  6,  7,  8
			.word	9, 10, 11, 12
			.word	13, 14, 15, 16

WORD: 		.word	'h','e','l','l','o'
