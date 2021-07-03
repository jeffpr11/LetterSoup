.model small
.data    
bienvenida db "Sopa de letras 15x15, bienvenido!",13,10,'$'
opTematica db "Existen 3 tematicas disponibles",13,10
           db "1.Animales",13,10
           db "2.Vehiculos de transporte",13,10
           db "3.Lenguajes de programacion",13,10
           db "Seleccione: $"
selTematica db ?
;opMatriz db "Puede elegir entre 2 matrices acorde a la dificuultad",13,10
;         db "A",13,10
;         db "B",13,10
;         db "Seleccione matriz: $" 
;selMatriz db ?
;txtIngreso db "Ingrese palabra encontrada o 'retirar': $" 
;txtSalida db "RETIRAR$"
Jan   db  "A B C D E F G",13,10 
      db  "A B C D E F G",13,10 
      db  "A B C D E F G",13,10 
      db  "A B C D E F G",13,10 
      db  "A B C D E F G",13,10 
      db  "A B C D E F G",13,10 
      db  "A B C D E F G"       
color db 181

.code
.start


          

   
mov ah, 09h
lea dx, bienvenida
int 21h   
lea dx, opTematica
int 21h      
mov ah, 01h
int 21h     
sub al, 30h    
mov selTematica, al  


;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax 

;DISPLAY STRING WITH COLOR.
  mov  es,ax ;ES SEGMENT MUST POINT TO DATA SEGMENT.
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Jan ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color
  mov  cx,150 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,5 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES.  

;FINISH THE PROGRAM PROPERLY.
  mov  ax,4c00h
  int  21h
  

.exit
end