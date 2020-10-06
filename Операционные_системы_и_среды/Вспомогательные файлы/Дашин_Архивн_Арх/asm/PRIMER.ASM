title    ex_prog
         page      ,132
stack    segment   para stack 'stack'
         db        64 dup('stack   ')
stack    ends
dseg     segment   para public 'data'
source   db        10,20,30,40
dest     db        4 dup(?)
dseg     ends
cseg     segment   para public 'code'
our_prog proc      far
         assume    cs:cseg,ds:dseg,ss:stack
         push      ds
         mov       ax,0
         push      ax

         mov       ax,dseg
         mov       ds,ax

         mov       dest,0
         mov       dest+1,0
         mov       dest+2,0
         mov       dest+3,0

         mov       al,source
         mov       dest+3,al
         mov       al,source+1
         mov       dest+2,al
         mov       al,source+2
         mov       dest+1,al
         mov       al,source+3
         mov       dest,al
         ret
our_prog endp
cseg     ends
         end our_prog 