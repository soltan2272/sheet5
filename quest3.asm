.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   out1 BYTE "enter length of rectangle",0
   out2 BYTE "enter width of rectangle",0
   x DWORD ?
   Y DWORD ?
   s DWORD ?
   str1 BYTE 40 DUP (?)
   opr BYTE 11 DUP (?),0
   res BYTE "the perimeter is",0

.CODE
  MainProc PROC
    input out1,str1,40
	atod str1
	mov x,eax

	input out2,str1,40
	atod str1
	mov y,eax

	mov eax,x
	imul eax,2
	mov s,eax

	mov eax,y
	imul eax,2
	add eax,s
  
	dtoa opr,eax
	output res,opr

   mov eax,0
   ret
   MainProc ENDP
   END
