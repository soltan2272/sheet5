.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   out1 BYTE "enter first grade",0
   out2 BYTE "enter second grade",0
   out3 BYTE "enter third grade",0
   out4 BYTE "enter fourth grade",0

   fi DWORD ?
   s DWORD ?
   t DWORD ?
   fo DWORD ?
   av DWORD ?
   str1 BYTE 40 DUP (?)
   opr BYTE 11 DUP (?),0
   res BYTE "Sum of grades ",0
   res1 BYTE "Average of grades ",0
.CODE
  MainProc PROC
    input out1,str1,40
	atod str1
	mov fi,eax

	input out2,str1,40
	atod str1
	mov s,eax

	input out3,str1,40
	atod str1
	mov t,eax

	input out4,str1,40
	atod str1
	mov fo,eax

	mov eax,fi
	add eax,s
	add eax,t
	add eax,fo

	dtoa opr,eax
	output res,opr

    mov edx,0
	mov ebx,4
	div ebx

	dtoa opr,eax
	output res1,opr

   mov eax,0
   ret
   MainProc ENDP
   END