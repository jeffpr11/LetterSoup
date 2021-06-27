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

.exit
end