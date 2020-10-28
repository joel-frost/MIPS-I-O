# MIPS-I-O

The program has 4 string variables used for prompting and outputting. The program asks the user for their name and stores this in $s0 for printing later. The maximum number of characters a user can enter is 16, set by $a1 during the syscall. The program then asks the user for their student ID, this is moved to $s1 ready for printing. Finally using 4 separate syscalls, the program outputs ‘Your Name: [Inputted Name in $s0]’ and ‘Your Student ID No: [Entered Int in $s1]’. 
