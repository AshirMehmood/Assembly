.model small
.stack 100h

.data  
char1 db ?
char2 db ?    
msg db "input 1st character:",13,10,'$' 

msg2 db "input 2nd character:",13,10,'$'  
msg3 db "number found!",13,10,'$'
msg4 db "number is less than your first number",13,10,'$'
msg5 db "number is greater than your firs number",13,10,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    mov dx,offset  msg 
    int 21h  
    mov ah,8
    int 21h
    mov char1,al
    game_logic: 
    mov ah,0
    int 10h
    mov ah,9 
    mov dx,offset msg2
    int 21h
    mov ah,8
    int 21h
    mov char2,al
    cmp al,char1 ;comparing
    je equal
    jl less
    greater:
     mov ah,9
     mov dx,offset msg5
     int 21h
     jmp game_logic
  
     less:
      mov ah,9
     mov dx,offset msg4
     int 21h
     jmp game_logic
    equal:
     mov ah,9
     mov dx,offset msg3
     int 21h
     mov ah,4ch
     int 21h
     ; exit program
    main endp
    


