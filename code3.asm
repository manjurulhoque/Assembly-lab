include emu8086.inc 

org 100h
.model small
.stack 100h

.data
vx dw 0     

inx db "Input: $"
outx db 0ah, 0dh, "Output: $"
     
.code
lea dx, inx
mov ah, 09h
int 21h

mov vx, 1
l1:
    call scan_num
    mov bx, cx
    dec vx
    cmp vx, 0
    jnz l1
    
    
ter:
    lea dx, outx
    mov ah, 09h
    int 21h 
    
    mov ax, bx
    call print_num
    

ret     
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
end    