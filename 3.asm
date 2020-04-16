.386
.model flat, stdcall
option casemap : none
.data
ArrayNumbers dword 00,05,26,72,00,34,86,19,00,34,65,39
.code
start:
    ;Miguel A00052672 
    ;Cobo A00348619
    ;Juan sebastian cardona A00346539    
    mov ebx, 0;suma acumulada = 0
    lea esi, [ArrayNumbers];direccion arraynumbers
    push esi
    call suma ;llama a procedimiento, es equivalente push porque pone algo en la pila (modifica esp)
    add esp, 4; equivalente a pop esi    
          
    xor eax, eax
    ret ;retorna de procedimiento, es equivalente pop porque extrae algo de la pila (modifica esp)
    ; carga la direccion de la siguiente instruccion a ejecutar en el IP(contador de programa)
    
suma:
    push ebp
    mov ebp, esp
    mov ecx,0;indice
    mov eax, [esp+8];dir arrayNumbers
    
    L20:
    add ebx, dword ptr[eax+ecx*4]
    add ecx, 1
    cmp ecx, 12
    jc L20
    
    mov esp, ebp
    pop ebp
    ret
    
    end start