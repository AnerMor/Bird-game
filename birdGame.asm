IDEAL
MODEL small
STACK 100h
p186
DATASEG
; --------------------------
    openScreen db '                                                 ',10, 13        
	db'    ____  ___  ____   ____     ____     _     __  __  _____ ',10, 13
	db'   | __ )|_ _||  _ \ |  _ \   / ___|   / \   |  \/  || ____|',10, 13
	db'   |  _ \ | | | |_) || | | | | |  _   / _ \  | |\/| ||  _|  ', 10, 13
	db'   | |_) || | |  _ < | |_| | | |_| | / ___ \ | |  | || |___ ', 10, 13
	db'   |____/|___||_| \_\|____/   \____|/_/   \_\|_|  |_||_____|', 10, 13
    db'                                                         ' ,10, 13, '$'                                                    
	
	message1 db 'press any key to start$'
	
		  
    board db 'VVVVVVVVVVVVVVVVVVVVV             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   |             ' , 10, 13 
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   <             ' , 10, 13
		  db '>                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '^^^^^^^^^^^^^^^^^^^^^            ' , 10, 13
		  db '                                  ' , 10, 13
	      db '    THE BIRD GAME                 ' , 10, 13
		  db '                                  ' , 10, 13, '$'
		  
	board2 db 'VVVVVVVVVVVVVVVVVVVVV             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   |             ' , 10, 13 
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '^^^^^^^^^^^^^^^^^^^^^            ' , 10, 13, '$'
		  
	board3 db 'VVVVVVVVVVVVVVVVVVVVV             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13 
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   |             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '^^^^^^^^^^^^^^^^^^^^^            ' , 10, 13, '$'
		  
	board4 db 'VVVVVVVVVVVVVVVVVVVVV             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13 
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |            ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '^^^^^^^^^^^^^^^^^^^^^            ' , 10, 13, '$'
		  
	
	board5 db 'VVVVVVVVVVVVVVVVVVVVV             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13 
		  db '>                   |             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <            ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '|                   <             ' , 10, 13
		  db '>                   |             ' , 10, 13
		  db '^^^^^^^^^^^^^^^^^^^^^            ' , 10, 13, '$'
	
		  
	message2 db '                                      ',10, 13
			 db '                                      ',10, 13
			 db '       YOU LOST!                      ',10, 13, '$'
		  
	cx_keeper dw 10 
	
	x db 9
	y db 9
	color dw 0Eh 
			  
	chr db 1
	direction db 'r'
	screenChr db 0
	lost db 0
	count dw 0
	boardNumber db 1
	
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
	
proc delay
	mov cx, 03h ;High Word
	mov dx, 0d40h ;Low Word
	mov al, 0
	mov ah, 86h ;Wait
	int 15h
	ret
	endp delay
	
proc readChr
	;cmp al, 'q'
	;jne endReadChr
	;jmp endGame
	
	;endReadChr:
	mov [chr], al
	
	endp readChr
	
proc setCursorPosition
	mov dh, [y] ; row
	mov dl, [x] ; column
	mov bh, 0 ; page number
	mov ah, 2
	int 10h
	ret 
	endp setCursorPosition
	
proc readScreenChr
	pusha
	mov bh, 0h ; Page=1
	mov ah, 08h ; Read character function
	int 10h ;return the character to al
	mov [screenChr], al
	popa
	ret
	endp readScreenChr
	
proc changeDir
	pusha
	cmp [direction], 'r'
	je left
	mov [direction], 'r'
	add [x], 2
	jmp endChangeDir
	left:
	mov [direction], 'l'
	sub [x], 2
	inc [count]
	endChangeDir:
	call setCursorPosition
	popa 
	ret
	endp changeDir
	
proc checkScrnChr
	pusha

	mov [lost], 0
	cmp [screenChr], 60 ; <
	je youLost
	cmp [screenChr], 62 ; >
	je youLost
	cmp [screenChr], 86; V
	je youLost
	cmp [screenChr], 94 ; ^
	je youLost
	cmp [screenChr], '|'
	je changeDirection
	jmp endCheckScrnChr
	
	youLost:
	mov [lost], 1
	jmp endCheckScrnChr
	changeDirection:
	inc [count]
	call changeBoard
	call changeDir
	endCheckScrnChr:
	popa
	ret
	endp checkScrnChr
	


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
		jne moveCharacter
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
		call delay
			
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
		call delay
		
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
		call delay
		
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
		call delay
		
		ret
		endp moveRight
		
proc changeBoard 
	mov al, [x]
	push ax
	mov al, [y]
	push ax
	mov [x], 0
	mov [y], 0
	call setCursorPosition
	
	cmp [boardNumber], 1
	je print2
	
	cmp [boardNumber], 2
	je print3
	
	cmp [boardNumber], 3
	je print4
	
	cmp [boardNumber], 4
	je print5
	
	mov dx, offset board
	mov ah, 9h
	int 21h
	inc [boardNumber]
	jmp printPlayer
	
	
	print2:
	mov [boardNumber], 2
	mov dx, offset board2
	mov ah, 9h
	int 21h
	jmp printPlayer
	
	print3:
	mov [boardNumber], 3
	mov dx, offset board3
	mov ah, 9h
	int 21h
	jmp printplayer
	
	print4:
	mov [boardNumber], 4
	mov dx, offset board4
	mov ah, 9h
	int 21h
	jmp printplayer
	
	print5:
	mov [boardNumber], 5
	mov dx, offset board5
	mov ah, 9h
	int 21h
	mov [boardNumber], 0
	
	printPlayer:
	pop ax
	mov [y], al
	pop ax
	mov [x], al
	
	
	call setCursorPosition
	
	
	ret
	endp changeBoard
	
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
	mov ah, 1h
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
	
	

mainGameLoop:
	call erase
	
	;add [y], 2
	cmp [direction], 'r'
	je continueRight
	dec [x]
	jmp checkJump
	continueRight:
	inc [x]
	
	checkJump:
	cmp [chr], ''
	jne jmpChr
	add [y], 2
	jmp continue
	jmpChr:
	sub [y], 2
	continue:
	
	call setCursorPosition
	call readScreenChr
	call checkScrnChr
	;call changeBoard
	
	cmp [lost], 1
	je endGame
	mov [color], 0Eh
	
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
	
	
	mov [chr], 0
	mov ah, 1h
	int 16h
	jz noKey
	mov ah, 0
	int 16h
	; waits for character
	call readChr
	; check if user asks to quit
	cmp [chr], 'q'
	je endGame
	
	noKey:
	call delay
	
	jmp mainGameLoop
  
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
	mov dx, offset message2
	mov ah, 9h
	int 21h
	 
	mov ah, 0h
    int 16h
	
	; text mode   80* 25
	mov ax, 2h
	int 10h
	
	
exit:
	mov ax, 4c00h
	int 21h
END start

