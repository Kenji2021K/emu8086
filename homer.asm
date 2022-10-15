org 100h
mov ax, 0b800h
mov ds, ax
mov si, 4 
mov cx, 5

delay:			;variable or it is a like a group name
mov si, (160*0) + (0*2) ;it Display the text in the top left
mov bx[si], 'H'         ;it display letter H
mov bx[si+2], 'N'	;it display letter N
mov bx[si+4], 'U'	;it display letter U
mov bx[si],' '		;it make the letter H disappear and display the next letter
mov bx[si + 2], ' ' 	;it make the letter H disappear and display the next letter
mov bx[si + 4], ' ' 	;it make the letter H disappear and display the next letter 
 
 
call delay1
push cx
mov cx, 0ffffh        
delay1:
mov si, (160*12) + (0*2)  ;it Display the text in the middle left
mov bx[si], 'H'         
mov bx[si+2], 'N'	
mov bx[si+4], 'U'	
mov bx[si],' '		
mov bx[si + 2], ' ' 	
mov bx[si + 4], ' ' 	


call delay2  		
push cx
mov cx, 0ffh
delay2:
mov si, (160*24) + (0*2) ;it Display the text in the bottom left 
mov bx[si], 'H'         
mov bx[si+2], 'N'	
mov bx[si+4], 'U'	
mov bx[si],' '		
mov bx[si + 2], ' ' 	
mov bx[si + 4], ' ' 	
 
 
call delay3  		
push cx
mov cx, 0ffh
delay3:
mov si, (160*24) + (34*2) ;it Display the text in the middle bottom
mov bx[si], 'H'         
mov bx[si+2], 'N'	
mov bx[si+4], 'U'	
mov bx[si],' '		
mov bx[si + 2], ' ' 	
mov bx[si + 4], ' ' 	


call delay4  		
push cx
mov cx, 0ffh
delay4:
mov si, (160*24) + (76*2) ;it Display the text in the bottom right
mov bx[si], 'H'         
mov bx[si+2], 'N'	
mov bx[si+4], 'U'	
mov bx[si],' '		
mov bx[si + 2], ' ' 	
mov bx[si + 4], ' ' 	


call delay5  		
push cx
mov cx, 0ffh
delay5:
mov si, (160*12) + (76*2) ;it Display the text in the middle right 
mov bx[si], 'H'         
mov bx[si+2], 'N'	
mov bx[si+4], 'U'	
mov bx[si],' '		
mov bx[si + 2], ' ' 	
mov bx[si + 4], ' ' 	
  

call delay6  		
push cx
mov cx, 0ffffh            
delay6: 
mov si, (160*0) + (76*2) ;it Display the text in the top right
mov bx[si], 'H'         
mov bx[si+2], 'N'	
mov bx[si+4], 'U'	
mov bx[si],' '		
mov bx[si + 2], ' ' 	
mov bx[si + 4], ' ' 	


call delay7  		
push cx
mov cx, 0ffffh            
delay7: 
mov si, (160*0) + (34*2) ;it Display the text in the middle top
mov bx[si], 'H'         
mov bx[si+2], 'N'	
mov bx[si+4], 'U'	
mov bx[si],' '		
mov bx[si + 2], ' ' 	
mov bx[si + 4], ' ' 	


call delay8  		
push cx
mov cx, 0ffffh            
delay8: 
mov si, (160*12) + (34*2)  ;it Display the text in the center
mov bx[si], 'H'         
mov bx[si+2], 'N'	
mov bx[si+4], 'U'	
mov bx[si],' '		
mov bx[si + 2], ' ' 	
mov bx[si + 4], ' ' 	


push cx 

mov cx, 0ffffh

pop cx 
loop delay  		; it loop the delay variable to countinue the process

pop cx 
loop delay1 

pop cx
loop delay2  

pop cx
loop delay3

pop cx
loop delay4

pop cx
loop delay5  

pop cx
loop delay6 

pop cx
loop delay7

pop cx
loop delay8

int 20h

ret 			;return function
	