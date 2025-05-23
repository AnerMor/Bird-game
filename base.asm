IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
    openScreen db '                                                 ',10, 13        
	db' ____  ___  ____   ____     ____     _     __  __  _____ ', 10, 13
	db'| __ )|_ _||  _ \ |  _ \   / ___|   / \   |  \/  || ____|', 10, 13
	db'|  _ \ | | | |_) || | | | | |  _   / _ \  | |\/| ||  _|  ', 10, 13
	db'| |_) || | |  _ < | |_| | | |_| | / ___ \ | |  | || |___ ', 10, 13
	db'|____/|___||_| \_\|____/   \____|/_/   \_\|_|  |_||_____|', 10, 13
    db'                                                         ' ,10, 13, '$'                                                    
	
	message1 db 'press any key to start$'
	
		  
    board db 'VVVVVVVVVVVVVVVVVVVVV  ' , 10, 13
		  db '|                   |  ' , 10, 13
		  db '>                   |  ' , 10, 13
		  db '|                   <  ' , 10, 13
		  db '|                   |  ' , 10, 13
		  db '>                   |  ' , 10, 13
		  db '|                   |  ' , 10, 13
		  db '|                   <  ' , 10, 13
		  db '|                   |  ' , 10, 13
		  db '|                   <  ' , 10, 13
		  db '|                   |  ' , 10, 13
		  db '>                   |  ' , 10, 13
		  db '|                   |  ' , 10, 13
		  db '|                   <  ' , 10, 13
		  db '|                   |  ' , 10, 13
		  db '>                   |  ' , 10, 13
		  db '|                   |  ' , 10, 13
		  db '^^^^^^^^^^^^^^^^^^^^' , 10, 13
		  db '                       ' , 10, 13
	      db '    THE BIRD GAME      ' , 10, 13
		  db '                       ' , 10, 13, '$'
		  
	cx_keeper dw 10 
	
	x db 3 
	y db 7
	color dw 0Eh 
			  
	
; --------------------------
CODESEG
proc erase
	mov [color], 0
	mov ah, 9
	mov al, 0 
	mov bx, [color] 
	mov cx, 1 
	int 10h
	ret
	endp erase

proc	moveCharacter
	    mov [cx_keeper], cx

		; waits for character
		mov ah, 0h
		int 16h	
		
		cmp al, 'q'
		jne q_next
		jmp endGame
		
		q_next:
		cmp al, 'w'
		jne w_next
		jmp callw
		
		w_next:
		cmp al, 'a'
		jne a_next
		jmp calla
		
		a_next:
		cmp al, 's'
		jne s_next
		jmp calls
		
		s_next:
		cmp al, 'd'
		jne moveCha racter
		jmp moveRight
		
		ret
		endp moveCharacter
		
proc moveForward
		call erase
		
		dec [y]

		mov dh, [y] ; row
		mov dl, [x] ; column
		mov bh, 0 ; page number
		mov ah, 2
		int 10h
		
		mov [color], 14
		mov ah, 9
		mov al, 2 ; aL = character to display
		mov bx, [color] ; bh = Background bl = Foreground
		mov cx, 1 ; cx = number of times to write character
		int 10h
			
		ret
		endp moveForward
		
proc moveLeft
		call erase
		
		dec [x]
		
		mov dh, [y] ; row
		mov dl, [x] ; column
		mov bh, 0 ; page number
		mov ah, 2
		int 10h
		
		mov [color], 14
		mov ah, 9
		mov al, 2 ; aL = character to display
		mov bx, [color] ; bh = Background bl = Foreground
		mov cx, 1 ; cx = number of times to write character
		int 10h
		jmp moveCharacter
		
		ret
		endp moveLeft
		
		
proc moveDown
		call erase
		
		inc [y]
		
		mov dh, [y] ; row
		mov dl, [x] ;	 column
		mov bh, 0 ; page number
		mov ah, 2
		int 10h
		
		mov [color], 14
		mov ah, 9
		mov al, 2 ; aL = character to display
		mov bx, [color] ; bh = Background bl = Foreground
		mov cx, 1 ; cx = number of times to write character
		int 10h
		jmp moveCharacter
		
		ret
		endp moveDown
		
proc moveRight
		call erase
		
		inc [x]
		
		mov dh, [y] ; row
		mov dl, [x] ; column
		mov bh, 0 ; page number
		mov ah, 2
		int 10h
		
		mov [color], 14
		mov ah, 9
		mov al, 2 ; aL = character to display
		mov bx, [color] ; bh = Background bl = Foreground
		mov cx, 1 ; cx = number of times to write character
		int 10h
		jmp moveCharacter
		
		ret
		endp moveRight
	
start:
	mov ax, @data
	mov ds, ax
	
	mov dx, offset openScreen
	mov ah, 9h
	int 21h
	
	mov dx, offset message1
	mov ah, 9h
	int 21h
	
	;wait for character
	mov ah, 0h
    int 16h

	mov ax, 13h
	int 10h
	
	mov dx, offset board
	mov ah, 9h
	int 21h
	
	;wait for character
	mov ah, 0h
    int 16h
  
	mov dh, [y] ; row
	mov dl, [x] ; column
	mov bh, 0 ; page number
	mov ah, 2
	int 10h
	
	mov [color], 14
	mov ah, 9
	mov al, 2 ; aL = character to display
	mov bx, [color] ; bh = Background bl = Foreground
	mov cx, 1 ; cx = number of times to write character
	int 10h

  
  
callmoveCharacter:
	call moveCharacter
	
callw:		
	call moveForward
	jmp moveCharacter

calla:	
	call moveLeft
	jmp moveCharacter
	
calls:
	call moveDown
	jmp moveCharacter

calld:
	call moveRight
	jmp moveCharacter
	
endGame:
	; text mode   80* 25
	mov ax, 2h
	int 10h
	
	
exit:
	mov ax, 4c00h
	int 21h
END start

