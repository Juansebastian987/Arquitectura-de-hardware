.386
.model flat, stdcall
option casemap : none
.data
Array dword 00,05,26,72,00,34,86,19,00,34,65,39
.code
start:
    ;Miguel Angel Romero Rosas A00052672 
    ;Cristian Andres Cobo Ramirez A00348619
    ;Juan sebastian cardona A00346539
    xor eax, eax;suma acumulada
    mov ecx, 0
    push eax
    L11:
    add eax, dword ptr[Array+ecx*4]; mueve a eax elemento 4 de arrayD (se multiplica por 4 porque el elemento es de 4 bytes)
    add ecx, 1
    cmp ecx, 12
    push eax
    jc L11    
    Loops:
    pop eax
    dec ecx
    cmp ecx, 0
    jne Loops
    pop ebx; Resultado final                  
    xor eax, eax
    ret
    end start
