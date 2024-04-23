ExitProcess proto

.data
    precio_producto1 dd 15
    precio_producto2 dd 30
    precio_producto3 dd 60
    precio_producto4 dd 70
    precio_producto5 dd 80
    venta_total dd 0

.code
main proc

    mov eax, precio_producto1
    push rax

    mov eax, precio_producto2
    push rax

    mov eax, precio_producto3
    push rax

    mov eax, precio_producto4
    push rax

    mov eax, precio_producto5
    push rax

    mov ecx, 5

sumar_ventas:
    cmp ecx, 0
    je calcular_total

    pop rax
    add venta_total, eax
    dec ecx
    jmp sumar_ventas

calcular_total:
    mov eax, precio_producto3
    imul eax, 15
    push rax

    mov eax, precio_producto4
    imul eax, 20
    push rax

    pop rax
    add venta_total, eax

    pop rax
    add venta_total, eax

    mov ebx, 1000
    mov eax, venta_total
    cdq
    idiv ebx

    call ExitProcess

main endp
end

