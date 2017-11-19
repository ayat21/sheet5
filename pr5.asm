.586
.MODEL FLAT
 INCLUDE io.h
.STACK 4096



.DATA
   x   DWORD ?
   y   DWORD ?
   z   DWORD ?
   m   DWORD ?
   prompt1 BYTE "Enter x",0
   prompt2 BYTE "Enter y",0
   prompt3 BYTE "Enter z",0
   prompt4 BYTE "Enter m",0
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

	 input prompt3 ,string ,40
	 atod string 
	 mov z,eax

	 input prompt4 ,string ,40
	 atod string 
	 mov m,eax
	 

	 mov ebx,m
	 add ebx,y

	 mov eax,z
	 add eax,x

	 add ebx,eax
	 div 4,ebx
	 
	 dtoa sum,ebx
		 
	 output result1,sum
	 xor eax,eax
	 ret

MainProc ENDP
END
