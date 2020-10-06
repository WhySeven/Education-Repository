title    ex_prog
         page      ,132
stack    segment   para stack 'stack'
         db        64 dup('stack   ')
stack    ends
dseg     segment   para public 'data'
source   dw        10,20,30,40
dest     db        4 dup(?)
dseg     ends
cseg     segment   para public 'code'
our_prog proc      far
         assume    cs:cseg,ds:dseg,ss:stack

         mov ax, data
	 mov ds, ax
	 mov es, ax
 

	 GET_KEY:
 
	 mov ah, 1
	 int 21h
	 cmp al,'2'
	 je out_a
 
	 cmp al,'3'
	 je out_q

	 cmp al,'0'
	 je exit
 
	 jmp GET_KEY
 
	 out_a:
	 mov ah,02h
	 mov dl,'='
	 int 21h
	 jmp GET_KEY 

	 out_q:
	 mov ah,02h
	 mov dl,'?'
	 int 21h
	 jmp GET_KEY
	 
	 exit:
	 mov ax, 4c00h ; exit to operating system.
	 int 21h
	 ends

ex_prog endp
cseg     ends
         end ex_prog 