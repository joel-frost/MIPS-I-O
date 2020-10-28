#------------------------------
# CSF MIPS ASSIGNMENT - TASK A
#------------------------------

.data    
#-----------------------------
#This is the data segment
#-----------------------------
nameIn: .asciiz "Enter Name: "
stuIdIn: .asciiz "Enter Student ID Number: "
nameOut: .asciiz "Your Name: "
stuIdOut: .asciiz "Your Student ID No: "
 
.text 
#-------------------------------
#This is the body of the code
#-------------------------------
 
main:
 
#--------------------------------------------------------------
# Read/Write Student Info
#--------------------------------------------------------------

# Load name variable and print asking for name
la $a0, nameIn
li $v0, 4
syscall

# Get input
li $v0, 8

# Maximum characters to read
li $a1, 16

# Move name to s0 for output later
move $s0, $a0
syscall

# Load stuid variable and print asking for student ID
la $a0, stuIdIn
li $v0, 4
syscall

# Get input
li $v0, 5
syscall
# Move student ID to s1
move $s1, $v0

#
# Name in s0, ID in s1
#

# Print 'your name is:'
la $a0, nameOut
li $v0, 4
syscall

# Move entered name to $a0
move $a0, $s0

# Print Name
li $v0, 4
syscall

# Print 'your ID is: '
la $a0, stuIdOut
li $v0, 4
syscall

# Move entered ID to a0
add $a0, $s1, $zero

# Print Student ID
li $v0, 1
syscall



#
# system call code for exit = 10
# 
li $v0, 10		
syscall				  