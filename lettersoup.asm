.model small
.data    
bienvenida db "Sopa de letras 15x15, bienvenido!",13,10,'$'
opTematica db "Existen 3 tematicas disponibles",13,10
           db "1.Animales",13,10
           db "2.Vehiculos de transporte",13,10
           db "3.Lenguajes de programacion",13,10
           db "Seleccione: $"  

opVariante db  "Existen 2 tipos de variante disponibles",13,10
           db "1.Variante A",13,10
           db "2.Variante B",13,10
           db "Seleccione: $"
           
selTematica db ?
selVariante db ?
EscribaString db "Escriba la palabra encontrada o EXIT para rendierse: $"


             
          
epa db "$"


Matriz1A   db  "P B C D E F G",13,10 
           db  "E B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "O B C D E F G",13,10 
           db  "A B C D E F G",13,10 
           db  "A B C D E 1 A $"

Matriz1B   db  "P B C D E F G",13,10 
           db  "E B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "O B C D E F G",13,10 
           db  "A B C D E F G",13,10 
           db  "1 B C D E 1 B $"

Matriz2A   db  "P B C D E F G",13,10 
           db  "E B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "O B C D E F G",13,10 
           db  "A B C D E F G",13,10 
           db  "A B C D E 2 A $"

Matriz2B   db  "P B C D E F G",13,10 
           db  "E B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "O B C D E F G",13,10 
           db  "A B C D E F G",13,10 
           db  "A B C D E 2 B $"
           
Matriz3A   db  "P B C D E F G",13,10 
           db  "E B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "O B C D E F G",13,10 
           db  "A B C D E F G",13,10 
           db  "A B C D E 3 A $"

Matriz3B   db  "P B C D E F G",13,10 
           db  "E B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "R B C D E F G",13,10 
           db  "O B C D E F G",13,10 
           db  "A B C D E F G",13,10 
           db  "A B C D E 3 B $"
                  
StringEscrito DB 20  dup(?)


.code
.start


          

   
mov ah, 09h
lea dx, bienvenida
int 21h

call menu1
call menu2
call imprimirMatriz

call inputString

  mov ah, 09
  lea dx, StringEscrito
  int 21h 
  call lineaNueva



;call imprimirMatriz1A 

jmp fin

;<<-- FUNCIONES -- >> 
;MENU1
menu1 proc near
    inicio: 
    call lineaNueva 
    call lineaNueva 
    mov ah, 09h  
    lea dx, opTematica
    int 21h      
    mov ah, 01h
    int 21h     
    sub al, 30h
    cmp al, 3
    jg inicio
    cmp al, 1
    jl inicio    
    mov selTematica, al
    ret  
menu1 endp
;FIN Menu1

;MENU2
menu2 proc near
    inicio2: 
    call lineaNueva 
    call lineaNueva 
    mov ah, 09h  
    lea dx, opVariante
    int 21h      
    mov ah, 01h
    int 21h     
    sub al, 30h
    cmp al, 2
    jg inicio
    cmp al, 1
    jl inicio 
    mov selVariante, al   
    ret  
menu2 endp
;FIN Menu1

;INICIO ImprimirMatriz
imprimirMatriz proc near
  call lineaNueva 
  call lineaNueva
  
  cmp selTematica, 1  
    je tematica1
  cmp selTematica, 2 
    je tematica2
    jmp tematica3
  
  tematica1:
  cmp selVariante,1 
    je ematriz1A
    jmp ematriz1B   
   
  tematica2:
  cmp selVariante,1 
    je ematriz2A
    jmp ematriz2B
  
  tematica3:
  cmp selVariante,1 
    je ematriz3A
    jmp ematriz3B 
  
  
  
  ematriz1A:
    call imprimirMatriz1A
    jmp matrizEND

  ematriz1B:
    call imprimirMatriz1B
    jmp matrizEND  
    
  ematriz2A:
    call imprimirMatriz2A
    jmp matrizEND

  ematriz2B:
    call imprimirMatriz2B
    jmp matrizEND   

  ematriz3A:
    call imprimirMatriz3A
    jmp matrizEND

  ematriz3B:
    call imprimirMatriz3B
    jmp matrizEND
  
  
  matrizEND:
   
   

  
  ret  
imprimirMatriz endp
;FIN    ImprimirMatriz  



;INICIO ImprimirMatriz1A
imprimirMatriz1A proc near
  call lineaNueva 
  call lineaNueva
    mov ah, 09
  lea dx, Matriz1A
  int 21h  
  
  ret  
imprimirMatriz1A endp


;INICIO ImprimirMatriz2A
imprimirMatriz2A proc near
  call lineaNueva 
  call lineaNueva
    mov ah, 09
  lea dx, Matriz2A
  int 21h  
  
  ret  
imprimirMatriz2A endp
 

;INICIO ImprimirMatriz3A
imprimirMatriz3A proc near
  call lineaNueva 
  call lineaNueva
    mov ah, 09
  lea dx, Matriz3A
  int 21h  
  
  ret  
imprimirMatriz3A endp
 

;INICIO ImprimirMatriz1B
imprimirMatriz1B proc near
  call lineaNueva 
  call lineaNueva
    mov ah, 09
  lea dx, Matriz1B
  int 21h  
  
  ret  
imprimirMatriz1B endp
  

;INICIO ImprimirMatriz2B
imprimirMatriz2B proc near
  call lineaNueva 
  call lineaNueva
    mov ah, 09
  lea dx, Matriz2B
  int 21h  
  
  ret  
imprimirMatriz2B endp


;INICIO ImprimirMatriz3B
imprimirMatriz3B proc near
  call lineaNueva 
  call lineaNueva
    mov ah, 09
  lea dx, Matriz3B
  int 21h  
  
  ret  
imprimirMatriz3B endp


;INPUT STRING

inputString proc near
    call lineaNueva   
     lea dx, EscribaString
    mov ah, 09
    int 21h
   
    mov si,offset StringEscrito
    input: mov ah,1
    int 21h
    cmp al,13
    je last
    mov [si],al
    inc si
    jmp input
    
    
    display: mov [si],'$'
    mov di,offset StringEscrito
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h

again: cmp [di],'$'
    je last
    cmp [di],32
    je next
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again

next: mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
    inc di
    jmp again

last: 
mov [si],'$'
call lineaNueva
      

         
       
    ret
inputString endp 
 
 
 


;JUMPLINE
lineaNueva proc near
    MOV dl, 10
    MOV ah, 02h
    INT 21h
    MOV dl, 13
    MOV ah, 02h
    INT 21h
    ret
lineaNueva endp 
;FIN JUMPLINE




;FINISH THE PROGRAM PROPERLY.
fin:
  mov  ax,4c00h
  int  21h



.exit
end