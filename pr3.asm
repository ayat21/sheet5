.586
.MODEL FLAT
 INCLUDE io.h
.STACK 4096



.DATA
   x   DWORD ?
   y   DWORD ?

   prompt1 BYTE "Enter x",0
   prompt2 BYTE "Enter y",0
  
   string BYTE 40 Dup(?)
   result1 BYTE "result is",0
   sum BYTE 11 Dup(?),0


.CODE

MainProc PROC 
     input prompt1 ,string ,40
	 atod string 
	 mov x,eax

	 input prompt2 ,string ,40
	 atod string 
	 mov y,eax

	 

	 mov ebx,y
	 imul ebx, 2
	 

	 mov eax,x
	 imul eax,2
	 add eax,ebx
	 

	 
	
	

	 dtoa sum,eax
	 output result1,sum
	 xor eax,eax
	 ret

MainProc ENDP
END
