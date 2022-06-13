.model small
.stack 100h
.data
  num1 db ?
  num2 db ?
  sum db ?
  str1 db 'the sum of ','$'
  str2 db ' and ','$'
  str3 db ' is','$'
.code

main proc
   
 mov ax,@data
 mov ds,ax
 mov ah,08h
 int 21h
 mov num1,al  
 add bl,al
 mov ah,08h
 int 21h  
 mov num2,al
 add bl,al  
 mov sum,bl
 mov ah,9
 mov dx,offset str1  
 int 21h
 mov ah,2
 mov dl,num1
 int 21h
 mov ah,9
 mov dx,offset str2
 int 21h  
 mov ah,2
 mov dl,num2
 int 21h
 mov ah,9
 mov dx,offset str3
 int 21h
 mov ah,2
 mov dl,sum
 sub dl, 30h
 int 21h  
 mov ah,4ch
 int 21h
 
main endp