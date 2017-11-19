.586
.MODEL FLAT
 INCLUDE io.h
.STACK 4096

.DATA
   p   DWORD ?
   n   DWORD ?
   d   DWORD ?
   q   DWORD ?
   f   DWORD ?
   r   DWORD ?

    prompt1 BYTE "Enter number of dollars",0
	prompt2 BYTE "Enter number of fifty-cent peices",0
	prompt3 BYTE "Enter number of quarters",0
    prompt4 BYTE "Enter number of dimes",0
    prompt5 BYTE "Enter number of nickels",0
    prompt6 BYTE "Enter number of pennis",0   

   string BYTE 40 Dup(?)
   result1 BYTE " Total value is : ",0
   sum BYTE 11 Dup(?),0


.CODE

MainProc PROC 
     input prompt1 ,string ,40
	 atod string 
	 mov r,eax

	 input prompt2 ,string ,40
	 atod string 
	 mov f,eax

	 input prompt3 ,string ,40
	 atod string 
	 mov q,eax

	 input prompt4 ,string ,40
	 atod string 
	 mov d,eax

	 input prompt5 ,string ,40
	 atod string 
	 mov n,eax

	 input prompt6 ,string ,40
	 atod string 
	 mov p,eax

	 mov r,eax
	 imul eax,100
	 mov r,eax
	 mov f,eax
	 imul f,50
	 mov q,eax
	 imul q,25
	 mov d,eax
	 imul d,10
	 mov n,eax
	 imul n,5
	 add eax,p
	 

	 
	 
	 dtoa sum,eax		 
	 output result1,sum
	 xor eax,eax
	 ret

MainProc ENDP
END
