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

         mov       ax,dseg
         mov       ds,ax

         mov	   ax,0
	 mov	   bx,0
         mov       ax,source
         mov       bx,source+2
	 cmp	   ax,bx
	 lahf

         ret
our_prog endp
cseg     ends
         end our_prog 