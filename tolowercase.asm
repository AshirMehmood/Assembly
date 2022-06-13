.model small
.stack 100h
.data
  char1 db ?
  str1 db 'lower case ','$'
  str2 db ' is converted to upper-case ','$'
.code

main proc
   
 mov ax,@data
 mov ds,ax
 mov ah,8
 int 21h  
 mov char1,al  
 mov ah,9
 mov dx,offset str1
 int 21h
 mov ah,2
 mov dl,char1 
 int 21h  
 sub al,0020h
 mov ah,9
 mov dx,offset str2
 int 21h 
 mov al,char1
 sub al,0020h
 mov ah,2
 mov dl,al
 int 21h
 mov ah,4ch      
 int 21h  
 
main endp