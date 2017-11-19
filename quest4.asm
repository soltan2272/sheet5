.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   out1 BYTE "enter coins in pennies",0
   out2 BYTE "enter coins in nickels",0
   out3 BYTE "enter coins in dimes",0
   out4 BYTE "enter coins in quarters",0
   out5 BYTE "enter coins in  fifty-cent",0
   out6 BYTE "enter coins in  dollar ",0
  
   p DWORD ?
   n DWORD ?
   de DWORD ?
   q DWORD ?
   f DWORD ?
   d DWORD ?
   str1 BYTE 40 DUP (?)
   opr BYTE 11 DUP (?),0
   res BYTE "number of dollars =",0
   res1 BYTE "number of cents =",0

.CODE
  MainProc PROC
    input out1,str1,40
	atod str1
	mov p,eax

	input out2,str1,40
	atod str1
	imul eax,5
	mov n,eax

	input out3,str1,40
	atod str1
	imul eax,10
	mov de,eax

	input out4,str1,40
	atod str1
	imul eax,25
	mov q,eax

	input out5,str1,40
	atod str1
	imul eax,50
	mov f,eax

	input out6,str1,40
	atod str1
	imul eax,100
	mov d,eax

	mov eax,d
	add eax,f
	add eax,q
	add eax,de
	add eax,n
	add eax,p

	mov edx,0
	mov ecx,100
	div ecx

	dtoa opr,eax
	output res,opr

	dtoa opr,edx
	output res1,opr

   mov eax,0
   ret
   MainProc ENDP
   END
