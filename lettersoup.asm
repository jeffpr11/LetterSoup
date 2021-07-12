; Autores > Erwing Burbano - Jeffrey Prado
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

EscribaString db "Escriba la palabra encontrada o EXIT para rendirse: $"


struneq db 'Strings are Unequal','$'          
epa db "$"
streq db "Felicidades encontraste la palabra: $"

resp1_1 db "LEON$"
resp1_2 db "MONO$"
resp1_3 db "FOCA$"
resp1_4 db "GATO$"
resp1_5 db "BUHO$"


Matriz1A   db  "Q M O N O L M Y B M Q Y A Y M",13,10 
           db  "B G A L N G Q F U F B F W H K",13,10 
           db  "D P P H S X Q U I Y O Z G X K",13,10 
           db  "S D M F Q X F O C A Q E G F R",13,10 
           db  "R K Y Q A O O H T L W I P B Z",13,10 
           db  "T K L I Z N C F U X Y M U V Y",13,10 
           db  "J A D T A I A C V V W N X J Y",13,10 
           db  "V J D A Q C X B V L N A W O E",13,10 
           db  "M D X L H B U L U E H S B H R",13,10 
           db  "F H H K U W Z Y A O D A L W G",13,10 
           db  "Y I J Q J B M I Z N X A J K A",13,10 
           db  "L X T R X R N J R V X S U X T",13,10 
           db  "V E B P H C Q I Z H X A B T O",13,10
           db  "W I I I G B U H O I F I O F Z",13,10
           db  "F Y L R Y T P X M S L S M Z T $"

Matriz1B   db  "B A M O R C S N U X J T W F W",13,10 
           db  "C Y L G Y Z Y Q C O L L M O L",13,10 
           db  "Z Z W E B F W I X A M Q C T N",13,10 
           db  "A T F M O X P J E Z F B R A S",13,10 
           db  "S V A T A N W J H P A O L G E",13,10 
           db  "D R R R S R J A O K D I C D I",13,10
           db  "F P D K A C M H P P W D N A C",13,10 
           db  "H K Y Q N O U I T L W I P B Z",13,10 
           db  "T M U M P B T E Z Y D O H F C",13,10 
           db  "E Z M O X F H O D R Z M Q B Y",13,10 
           db  "G N W M M G C L U Q U P Z K W",13,10 
           db  "H K P M O N O C V L F J W I X",13,10
           db  "Y R E W D S O B V V F Q U R P",13,10 
           db  "K R W G Y N K R B J V U K C J",13,10 
           db  "Q F A L R N Y B Q Y P A B O P $" 


resp2_1 db "BICI$"
resp2_2 db "MOTO$"
resp2_3 db "AUTO$"
resp2_4 db "TREN$"
resp2_5 db "BOTE$"
salidaJuego db "EXIT$"


Matriz2A   db  "E F V Q P X W F B C S C R Q N",13,10 
           db  "H A S T G Q Z Y L O A O T V B",13,10 
           db  "S X B Z A M Y X C K G R Y X Z",13,10 
           db  "R B J Q O J Z X G G Q M E C E",13,10 
           db  "V V Y O G A R H Z M M P N A L",13,10 
           db  "K A S B J V Y U G B B O T E Y",13,10
           db  "M L Y O M H M Q R M B X X N Y",13,10 
           db  "O S K V O O H G G B I G S F E",13,10 
           db  "D Z X S T E O V B H A X X O C",13,10 
           db  "H O M D O X I G I A U N I V B",13,10 
           db  "G Q N Q P U A G C C T Q R I T",13,10 
           db  "R Z M T U K M V I I O N L W I",13,10
           db  "P B M F T S U D H U H A X I L",13,10 
           db  "B P S H K X F M N P M W Y A E",13,10 
           db  "W K Q N B V R H P Y S K L U M $"

Matriz2B   db  "Y L B J K Q Q W E B T S I I S",13,10 
           db  "A U X R Y J D W F V O S A T D",13,10 
           db  "F E A D B N S C Q E U T P J E",13,10 
           db  "Q H I O K U A M P G U V E G C",13,10 
           db  "R N L U T T H E Y W B L M D Q",13,10 
           db  "H X E M N O L V Z N B G T H B",13,10
           db  "E F Z R B G E I B Y Z W Q L F",13,10 
           db  "S I A Y T H T G I J I K E Z Z",13,10 
           db  "I C C Q Q O C Z S C C K K U Y",13,10 
           db  "D Q O C D N R R E S I E G A T",13,10 
           db  "N U B V O T O M A R B O H E N",13,10 
           db  "X P A Z C R F N W O W C K S C",13,10
           db  "Q V S Y M B R Y T E V E G X B",13,10 
           db  "D Y L G W F M U J E D B Z N K",13,10 
           db  "M A W R N O A G M U H V W Q E $"  
           

resp3_1 db "JAVA$"
resp3_2 db "RUBY$"
resp3_3 db "PERL$"
resp3_4 db "RUST$"
resp3_5 db "DART$"

validacionSensitive db 0

puntajeResp1 db 1
puntajeResp2 db 1
puntajeResp3 db 1
puntajeResp4 db 1
puntajeResp5 db 1
puntajeJuego db 0
           
Matriz3A   db  "K N I X N F R U S T Y G E M P",13,10 
           db  "M H W K H K N Y M B W A O Q K",13,10 
           db  "V R C Z X N W A P M J H Z H R",13,10 
           db  "C R U I W O G U N Q H V C B A",13,10 
           db  "N W D B G L R F M G O V A L N",13,10 
           db  "V T G I Y T F J I P C L Z T I",13,10
           db  "Q N R D L F G O C W C S D O C",13,10 
           db  "G X K Y V V E P Y J N V I R A",13,10 
           db  "L P P H O V C J A V A H T L G",13,10 
           db  "T C E N M G K H D E Y Q D C D",13,10 
           db  "Z X R F I P Q X X W O D E Z N",13,10 
           db  "U W L Q Y A T M R D V S A Y V",13,10
           db  "N J F O P G D L M E R S F R J",13,10 
           db  "W L J L Q U J G Q I H L E M T",13,10 
           db  "H Y R H Z R Q U V H Q A V R Z $"

Matriz3B   db  "Z F O X V F W I J Y O N E P M",13,10 
           db  "X L I C T I G A W Q K K S L X",13,10 
           db  "A C B T K Y V W Z D Y P O P S",13,10 
           db  "J V V X I A H Q Y N J B W J E",13,10 
           db  "N H W N I K X B A D T B D P P",13,10 
           db  "F L R M A A U D P K L R U M I",13,10
           db  "T H J Y H R T Q U V H Q A V R",13,10 
           db  "Z C R E F Q U Y B A A X W D X",13,10 
           db  "A F S G P S Z R Q J Y A J T B",13,10 
           db  "V S M R I A K B E Q P S K W L",13,10 
           db  "P O N S F V S J C D Q A C K U",13,10 
           db  "B M T G K N A L X C X N G H X",13,10
           db  "D G B M B X J Z T S U R V H G",13,10 
           db  "N K T W Z R J Y F L G A N J I",13,10 
           db  "S I A Y T H T G I J I K E N T $"

StringSensitive DB 20 dup(?)                 
StringEscrito DB 20  dup(?)


.code
.start
;Mensaje de Bienvenida  
mov ah, 09h
lea dx, bienvenida
int 21h
 
;Mostramos los menus de seleccion con validaciones
call menu1
call menu2

;Dependiendo de la seleccion se escoge la sopa de letras a jugar
cmp selTematica, 1
je jugar1
cmp selTematica, 2
je jugar2
jmp jugar3


jugar1:
call juego1

jugar2:
call juego2

jugar3:
call juego3





jmp fin

;<<-- FUNCIONES -- >> 

;MENU1 
;Menu para seleccionar la tematica
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
;Menu para seleccionar la variante
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
;Dependiendo de las selecciones del menu se imprime una sopa de letras
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

;<<  JUEGOS  >>
;Dependiendo de la seleccion de los menus se decide el juego en el cual se muestra la matriz 
;Luego con un mensaje se solicita que se ingrese un string y cuando se presione enter se recibe
;Confirma que solo sean letras y hace un UPPERCASE, luego compara las respuestas o exit
;Si logra encontrar todas las respuestas gana el juego y se felicita con un mensaje
;JUEGO 1    
juego1 proc near
    
    pedir:
    call imprimirMatriz         ;Imprime la matriz que se esta jugando para visualizacion
     call lineaNueva 
    call inputString
    call caseSensitive          ;Prueba si la palabra son solo letras en ese caso hace que todas sean mayusculas
    
    cmp validacionSensitive, 1
    je pedir
                                ;Compara lo escrito para las respuestas esperadas o exit
    call compareStringsExit
    call compareStrings1_1
    call compareStrings1_2
    call compareStrings1_3
    call compareStrings1_4
    call compareStrings1_5
    
    cmp puntajeJuego , 5        ;Revisa el puntaje del juego para ver si se ha ganado
    je ganasteJuego1
    jmp pedir:
    
    ganasteJuego1:              ;Se gano el juego presentando un mensaje y escribiendo 
    lea dx, Win
    mov ah, 09
    int 21h
    
    mov  ax,4c00h
    int  21h
   ret
juego1 endp

;FIN JUEGO 1

;JUEGO 2    
juego2 proc near
    
    pedir2:
    call imprimirMatriz 
     call lineaNueva 
    call inputString
    call caseSensitive
    
    cmp validacionSensitive, 1
    je pedir2
    
    call compareStringsExit
    call compareStrings2_1
    call compareStrings2_2
    call compareStrings2_3
    call compareStrings2_4
    call compareStrings2_5
    
    cmp puntajeJuego , 5
    je ganasteJuego2
    jmp pedir2:
    
    ganasteJuego2:
    lea dx, Win
    mov ah, 09
    int 21h
    
    mov  ax,4c00h
    int  21h
   ret
juego2 endp

;FIN JUEGO 2


;JUEGO 3    
juego3 proc near
    
    pedir3:
    call imprimirMatriz 
     call lineaNueva 
    call inputString
    call caseSensitive
    
    cmp validacionSensitive, 1
    je pedir3
    
    call compareStringsExit
    call compareStrings3_1
    call compareStrings3_2
    call compareStrings3_3
    call compareStrings3_4
    call compareStrings3_5
    
    cmp puntajeJuego , 5
    je ganasteJuego3
    jmp pedir3:
    
    ganasteJuego3:
    lea dx, Win
    mov ah, 09
    int 21h
    
    mov  ax,4c00h
    int  21h
   ret
juego3 endp

;FIN JUEGO 3




;INPUT STRING
;Un procedimiento que muestra un mensaje pidiendole al usuario el ingreso de una palabra
;La palabra escrita puede ser de maximo size 20, al final se agrega el signo $ para delimitar la palabra
;cuando el usuario presiona enter la palabra se termina y es guardada en StringEscrito
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
;COMPARE STRINGS: funciones para comparar strings directamente con las respuestas pre definidas
;                 se identifican con #_#, siendo el primero numero la categoria y el segundo numero la variante
;                 si son iguales aumenta el puntaje
;                 si no son iguales termina de comparar y vuelve a permitir el ingreso de palabra
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



compareStrings2_1 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp2_1
    rep cmpsb
    jnz Not_Equal2_1
    lea dx, streq
    jmp Equal2_1 

    Not_Equal2_1:
    jmp finComparar2_1

    Equal2_1:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp2_1  
    int 21h
    mov al, puntajeResp1
    add puntajeJuego, al
    mov puntajeResp1, 0 
    call lineaNueva
    finComparar2_1:
     
   ret
compareStrings2_1 endp
     
     
compareStrings2_2 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp2_2
    rep cmpsb
    jnz Not_Equal2_2
    lea dx, streq
    jmp Equal2_2 

    Not_Equal2_2:
    jmp finComparar2_2

    Equal2_2:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp2_2  
    int 21h
    mov al, puntajeResp2
    add puntajeJuego, al
    mov puntajeResp2, 0 
    call lineaNueva
    finComparar2_2:
     
   ret
compareStrings2_2 endp 
        
        
compareStrings2_3 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp2_3
    rep cmpsb
    jnz Not_Equal2_3
    lea dx, streq
    jmp Equal2_3 

    Not_Equal2_3:
    jmp finComparar2_3

    Equal2_3:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp2_3  
    int 21h
    mov al, puntajeResp3
    add puntajeJuego, al
    mov puntajeResp3, 0 
    call lineaNueva
    finComparar2_3:
     
   ret
compareStrings2_3 endp 
        
        
compareStrings2_4 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp2_4
    rep cmpsb
    jnz Not_Equal2_4
    lea dx, streq
    jmp Equal2_4 

    Not_Equal2_4:
    jmp finComparar2_4

    Equal2_4:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp2_4  
    int 21h
    mov al, puntajeResp4
    add puntajeJuego, al
    mov puntajeResp4, 0 
    call lineaNueva
    finComparar2_4:
     
   ret
compareStrings2_4 endp 
         
         
compareStrings2_5 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp2_5
    rep cmpsb
    jnz Not_Equal2_5
    lea dx, streq
    jmp Equal2_5 

    Not_Equal2_5:
    jmp finComparar2_5

    Equal2_5:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp2_5  
    int 21h
    mov al, puntajeResp5
    add puntajeJuego, al
    mov puntajeResp5, 0 
    call lineaNueva
    finComparar2_5:
     
   ret
compareStrings2_5 endp  



compareStrings3_1 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp3_1
    rep cmpsb
    jnz Not_Equal3_1
    lea dx, streq
    jmp Equal3_1 

    Not_Equal3_1:
    jmp finComparar3_1

    Equal3_1:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp3_1  
    int 21h
    mov al, puntajeResp1
    add puntajeJuego, al
    mov puntajeResp1, 0 
    call lineaNueva
    finComparar3_1:
     
   ret
compareStrings3_1 endp
     
     
compareStrings3_2 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp3_2
    rep cmpsb
    jnz Not_Equal3_2
    lea dx, streq
    jmp Equal3_2 

    Not_Equal3_2:
    jmp finComparar3_2

    Equal3_2:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp3_2  
    int 21h
    mov al, puntajeResp2
    add puntajeJuego, al
    mov puntajeResp2, 0 
    call lineaNueva
    finComparar3_2:
     
   ret
compareStrings3_2 endp 
        
        
compareStrings3_3 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp3_3
    rep cmpsb
    jnz Not_Equal3_3
    lea dx, streq
    jmp Equal3_3 

    Not_Equal3_3:
    jmp finComparar3_3

    Equal3_3:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp3_3  
    int 21h
    mov al, puntajeResp3
    add puntajeJuego, al
    mov puntajeResp3, 0 
    call lineaNueva
    finComparar3_3:
     
   ret
compareStrings3_3 endp 
        
        
compareStrings3_4 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp3_4
    rep cmpsb
    jnz Not_Equal3_4
    lea dx, streq
    jmp Equal3_4 

    Not_Equal3_4:
    jmp finComparar3_4

    Equal3_4:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp3_4  
    int 21h
    mov al, puntajeResp4
    add puntajeJuego, al
    mov puntajeResp4, 0 
    call lineaNueva
    finComparar3_4:
     
   ret
compareStrings3_4 endp 
         
         
compareStrings3_5 proc near
   mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, 4
    lea si, StringSensitive
    lea di, resp3_5
    rep cmpsb
    jnz Not_Equal3_5
    lea dx, streq
    jmp Equal3_5 

    Not_Equal3_5:
    jmp finComparar3_5

    Equal3_5:
    ;call lineaNueva 
    mov ah, 09h
    int 21h 
    lea dx, resp3_5  
    int 21h
    mov al, puntajeResp5
    add puntajeJuego, al
    mov puntajeResp5, 0 
    call lineaNueva
    finComparar3_5:
     
   ret
compareStrings3_5 endp  
;FIN Compare STRINGS
;<< FIN COMPARAR STRINGS >>



  
; << CASE SENSITIVE >>
;CASE SENSITIVE:  valida el ingreso de palabra, confirma que el ingreso solo sea letras(sin importar mayusculas o minsculas)
;                 si no todo es letra, pide la palabra de vuelta indicando el ingreso correcto
;                 si todo es letra, transforma todo a mayusculas y guarda la palabra en StringSensitive
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
;Un procedimiento que simplemente realiza un salto de linea por pantalla
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