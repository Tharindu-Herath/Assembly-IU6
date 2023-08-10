section .data
ExitMsg db "Press Enter to Exit",10
lenExit equ $-ExitMsg
A dw -30
B dw 21

section .bss
InBuf resb 10
lenIn equ $-InBuf
X resd 1

section .text
global _start
_start:
mov EAX, [A]
add EAX, 5
sub EAX, [B]
mov [X], EAX
mov eax, 4
mov ebx, 1
mov ecx, ExitMsg
mov edx, lenExit
int 80h
; read
mov eax, 3 
mov ebx, 0
mov ecx, InBuf
mov edx, lenIn
int 80h
; exit
mov eax, 1
xor ebx, ebx
int 80h
 