
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

.code

mov cx, 0

outerLoop:

           cmp cx, 3
           je done
           mov bx, 1

innerLoop:
           mov ax, cx
           mov ah, 2
           mov dl, '*'
           int 21h

           cmp bx, 3
           je innerLoopDone
           inc bx
           jmp innerLoop

innerLoopDone:
           mov ah, 02h
           mov dl, 0dh
           int 21h
           mov dl, 0ah
           int 21h
           inc cx
           jmp outerLoop           
done:
ret




