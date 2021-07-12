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
onlyLetras db "Escriba solo letras$"
Sorry db "Gracias por jugar, intentalo de nuevo! $"
Win   db "Felicidades encontraste todo!$"

EscribaString db "Escriba la palabra encontrada o EXIT para rendierse: $"


             

  struneq db 'Strings are Unequal','$'          
epa db "$"
 streq db "Felicidades encontraste la palabra: $"

resp1_1 db "LEON$"
resp1_2 db "MONO$"
resp1_3 db "FOCA$"
resp1_4 db "GATO$"
resp1_5 db "BUHO$"


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


resp2_1 db "BICI$"
resp2_2 db "MOTO$"
resp2_3 db "AUTO$"
resp2_4 db "TREN$"
resp2_5 db "BOTE$"
salidaJuego db "EXIT$"


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
           

resp3_1 db "JAVA$"
resp3_2 db "RUBY$"
resp3_3 db "PERL$"
resp3_4 db "RUST$"
resp3_5 db "LAVA$"

validacionSensitive db 0

puntajeResp1 db 1
puntajeResp2 db 1
puntajeResp3 db 1
puntajeResp4 db 1
puntajeResp5 db 1
puntajeJuego db 0
           
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

StringSensitive DB 20 dup(?)
resp1 db 'Petern$'
resp2 db 'Petern$'                  
StringEscrito DB 20  dup(?)


.code
.start


          

   
mov ah, 09h
lea dx, bienvenida
int 21h


;inicio



;fin
  

call menu1
call menu2
call imprimirMatriz

cmp selTematica, 1
je jugar1
cmp selTematica, 2
je jugar2
jmp jugar3


jugar1:
call juego1

jugar2:

jugar3:






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
    jg inicio2
    cmp al, 1
    jl inicio2 
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


;JUEGO 1    
juego1 proc near
    
    pedir:
    call inputString
    call caseSensitive
    
    cmp validacionSensitive, 1
    je pedir
    
    call compareStringsExit
    call compareStrings1_1
    call compareStrings1_2
    call compareStrings1_3
    call compareStrings1_4
    call compareStrings1_5
    
    cmp puntajeJuego , 5
    je ganasteJuego1
    jmp pedir:
    
    ganasteJuego1:
    lea dx, Win
    mov ah, 09
    int 21h
    
    mov  ax,4c00h
    int  21h


    
    
    ret
juego1 endp



;FIN JUEGO 1


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
 ;FIN INPUT STRING
 

; << COMPARAR STRINGS >>
;COMPARE STRINGS
compareStringsExit proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, salidaJuego
    rep cmpsb
    jnz Not_Equal0
    lea dx, Sorry
    jmp Equal0 

    Not_Equal0:
    jmp finComparar0

    Equal0:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    mov  ax,4c00h
    int  21h
       
    call lineaNueva
    finComparar0:
     
   ret
compareStringsExit endp



compareStrings1_1 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp1_1
    rep cmpsb
    jnz Not_Equal1_1
    lea dx, streq
    jmp Equal1_1 

    Not_Equal1_1:
    jmp finComparar1_1

    Equal1_1:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp1_1  
    int 21h
    mov al, puntajeResp1
    add puntajeJuego, al
    mov puntajeResp1, 0 
    call lineaNueva
    finComparar1_1:
     
   ret
compareStrings1_1 endp

compareStrings1_2 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp1_2
    rep cmpsb
    jnz Not_Equal1_2
    lea dx, streq
    jmp Equal1_2 

    Not_Equal1_2:
    jmp finComparar1_2

    Equal1_2:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp1_2  
    int 21h
    mov al, puntajeResp2
    add puntajeJuego, al
    mov puntajeResp2, 0 
    call lineaNueva
    finComparar1_2:
     
   ret
compareStrings1_2 endp 

compareStrings1_3 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp1_3
    rep cmpsb
    jnz Not_Equal1_3
    lea dx, streq
    jmp Equal1_3 

    Not_Equal1_3:
    jmp finComparar1_3

    Equal1_3:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp1_3  
    int 21h
    mov al, puntajeResp3
    add puntajeJuego, al
    mov puntajeResp3, 0 
    call lineaNueva
    finComparar1_3:
     
   ret
compareStrings1_3 endp 

compareStrings1_4 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp1_4
    rep cmpsb
    jnz Not_Equal1_4
    lea dx, streq
    jmp Equal1_4 

    Not_Equal1_4:
    jmp finComparar1_4

    Equal1_4:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp1_4  
    int 21h
    mov al, puntajeResp4
    add puntajeJuego, al
    mov puntajeResp4, 0 
    call lineaNueva
    finComparar1_4:
     
   ret
compareStrings1_4 endp 

compareStrings1_5 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp1_5
    rep cmpsb
    jnz Not_Equal1_5
    lea dx, streq
    jmp Equal1_5 

    Not_Equal1_5:
    jmp finComparar1_5

    Equal1_5:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp1_5  
    int 21h
    mov al, puntajeResp5
    add puntajeJuego, al
    mov puntajeResp5, 0 
    call lineaNueva
    finComparar1_5:
     
   ret
compareStrings1_5 endp 
;FIN Compare STRINGS
;<< FIN COMPARAR STRINGS >>

;Case sentitive
caseSensitive proc near
    mov ax, 0h
    mov bx, offset StringEscrito
    mov cx, 0h
    mov cx, 4
    mov validacionSensitive, 0
    mov si, offset StringSensitive

    validar:
    cmp [bx], 41h
    jae talVezLetra 

    ingreseLetras:
    lea dx, onlyLetras
    mov ah, 09h
    int 21h
    mov validacionSensitive, 1
    jmp pedirdenuevo

    talVezLetra:
    cmp [bx], 5Ah 
    jbe esMayuscula
    cmp [bx], 61h
    jae esMinuscula

    esMayuscula:
    jmp transformarLetra

    esMinuscula:
    cmp [bx], 7Ah
    jae ingreseLetras
    sub [bx], 32
    jbe transformarLetra 

    transformarLetra:
    mov dx, [bx]
    mov [si], dx
    inc bx 
    inc si
    loop validar
    
    pedirdenuevo:
    ret
caseSensitive endp    


;FIN CASE sensitive
 


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