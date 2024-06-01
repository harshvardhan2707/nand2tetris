// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
(START)
@SCREEN
D=A
@scr
M=D
@i
M=0
@KBD
D=M
@WHITE
D;JEQ
@BLACK
D;JNE

(WHITE)
@scr
D=M
@i
D=D+M
@KBD
D=A-D
@START
D;JEQ

@scr
D=M
@i
A=D+M
M=0

@i
M=M+1
@WHITE
0;JMP


(BLACK)
@scr
D=M
@i
D=D+M
@KBD
D=A-D
@START
D;JEQ

@scr
D=M
@i
A=D+M
M=-1

@i
M=M+1
@BLACK
0;JMP
