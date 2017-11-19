.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   out1 BYTE "enter first number",0
   out2 BYTE "enter second number",0
   out3 BYTE "enter third number",0
   x DWORD ?
   Y DWORD ?
   z DWORD ?
   s DWORD ?
   str1 BYTE 40 DUP (?)
   opr BYTE 11 DUP (?),0
   res BYTE "the result is",0

.CODE
  MainProc PROC
    input out1,str1,40
	atod str1
	mov x,eax

	input out2,str1,40
	atod str1
	mov y,eax

	input out3,str1,40
	atod str1
	mov z,eax

	mov eax,x
	add eax,y
	imul eax,2
	add eax,z

	dtoa opr,eax
	output res,opr

   mov eax,0
   ret
   MainProc ENDP
   END