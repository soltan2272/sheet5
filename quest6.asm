.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   g1 BYTE "grade 1?",0
   w1 BYTE "weight 1? ",0

   g2 BYTE "grade 2?",0
   w2 BYTE "weight 2? ",0

   g3 BYTE "grade 3?",0
   w3 BYTE "weight 3? ",0

   g4 BYTE "grade 4?",0
   w4 BYTE "weight 4? ",0
   
   a DWORD ?
   b DWORD ?
   s1 DWORD ?
   c1 DWORD ?
   d DWORD ?
   s2 DWORD ?
   e DWORD ?
   f DWORD ?
   s3 DWORD ?
   g DWORD ?
   h DWORD ?
   av DWORD ?
   av1 DWORD ?
   str1 BYTE 40 DUP (?)
   opr BYTE 11 DUP (?),0
   res BYTE "weighted sum: ",0
   res1 BYTE "sum of weights: ",0
   res2 BYTE "weighted average: ",0
.CODE
  MainProc PROC
    input g1,str1,40
	atod str1
	mov a,eax
	input w1,str1,40
	atod str1
	mov b,eax

	input g2,str1,40
	atod str1
	mov c1,eax
	input w2,str1,40
	atod str1
	mov d,eax

	input g3,str1,40
	atod str1
	mov e,eax
	input w3,str1,40
	atod str1
	mov f,eax

	input g4,str1,40
	atod str1
	mov g,eax
	input w4,str1,40
	atod str1
	mov h,eax

	mov eax,a
	mul b
	mov s1,eax

	mov eax,c1
	mul d
	mov s2,eax

	mov eax,e
	mul f
	mov s3,eax

	mov eax,g
	mul h

	add eax,s3
	add eax,s2
	add eax,s1
	mov av,eax
	dtoa opr,eax
	output res,opr

	mov eax,b
	add eax,d
	add eax,f
	add eax,h
	mov av1,eax
	dtoa opr,eax
	output res1,opr

	mov eax,av
	mov ecx,av1
	div ecx
	dtoa opr,eax
	output res2,opr

   mov eax,0
   ret
   MainProc ENDP
   END
