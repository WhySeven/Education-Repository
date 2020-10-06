Dosseg
.Model small
.Stack 100h
.Data
FrameU DB 201,205,205,205,205,205,205,205,205,205,205,205,205,205,187,13,10,'$'
Messag DB 186,'Hello, World!',186,13,10,'$'
FrameD DB 200,205,205,205,205,205,205,205,205,205,205,205,205,205,188,13,10,'$'
.Code



mov ax,SEG FrameU
mov ds,ax
mov dx,OFFSET FrameU
mov ah,09h
LEA dx, FrameU
int 21h

mov ax,SEG Messag
mov ds,ax
mov dx,OFFSET Messag
mov ah,09h
int 21h

mov ax,SEG FrameD
mov ds,ax
mov dx,OFFSET FrameD
mov ah,09h
int 21h

mov ax,4c00h
mov dl,199
int 21h
End