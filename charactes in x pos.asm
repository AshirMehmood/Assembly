 .model small
 .stack 100h
 
 .data 
 char db ?
 str db " Input character:",'$'
 posx db 12
 posy db 40
 .code
   ;program to display next 7 digits in column 
   ; almost same code will be used that was used in previous prgram
 main proc
 mov ax,@data
 mov ds,ax
 mov ah,0
 int 10h 
 mov ah,9
 mov dx,offset str
 int 21h
 mov ah,8
 int 21h
 mov char,al
 mov ah,2
 mov dh,posx
 mov dl,posy
 int 10h
 mov cx,7
 loop1:    ;loop's body
 mov ah,2
 mov dl,char  ; will display first character
 int 21h
 inc char     ; increment the ascii value of fist character
 inc posx
 mov dh,posx 
 mov dl,posy ; re assigning in dh,and also dl because in loop both need to be reassigned  
 int 10h 
 loop loop1