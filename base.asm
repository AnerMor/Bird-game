IDEAL
MODEL small
STACK 100h
DATASEG 

;------------------------
; your variable here
;------------------------
varl db 5
CODESEG
START: 
    mov ax, @data
	mov ds, ax
	mov ax,5h 
	mov bx,7h 
	mov cx,2 
	add ax,cx 
	inc ax 
	dec bx 

;------------------------
; your variable here
;------------------------


exit:
	mov ax, 4c00h
	int 21h
END start
    
