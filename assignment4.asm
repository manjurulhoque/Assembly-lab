
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

.data

var1 db ?

.code

mov cl, 0

mov ah, 01h
int 21h
mov var1, al
mov 

outerLoop:
           cmp cl, 3
           je done
           mov bl, 1

innerLoop:
            
           ;mov al, cl
           mov ah, 2
           mov dl, '*'
           int 21h
           
           
           mov ah, 2
           mov dl, var1
           int 21h
           cmp bl, dl
           je innerLoopDone
           inc bl
           jmp innerLoop
           
innerLoopDone:
           mov ah, 02h
           mov dl, 0dh
           int 21h
           mov dl, 0ah
           int 21h
           inc cl
           jmp outerLoop           
done:
ret




