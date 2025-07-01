assume cs:code, ds:data

data segment
        list db 01h, 02h, 03h, 04h
        count db 04h
        res dw 01h
data ends

code segment
start:
        mov ax, data
        mov ds, ax
        mov ax, 0h

        mov cl, count
        lea si, list
go:
        add al, [si]
        inc si
        dec cl
        jnz go
        mov res, ax

        int 03h
code ends
end start



        
