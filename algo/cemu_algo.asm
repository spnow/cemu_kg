

PUBLIC keygen_code
_DATA SEGMENT
hd_letter  db "C:","\", 0
_DATA ENDS	
_TEXT	SEGMENT
EXTERN GetVolumeInformationA: PROC
;returns in EAX the harddrive serial number
keygen_code PROC
push rbp
mov rbp,rsp
sub rsp,50h
xor eax,eax
xor ecx,ecx
lea r9,qword ptr [rbp+10h]
mov qword ptr [rbp-10h],rax
mov qword ptr [rbp-8h],rax
cpuid 
mov dword ptr [rbp-10h],eax
rol al,3
mov dword ptr [rbp-8h],ecx
xor al,bl
mov dword ptr [rbp-0Ch],ebx
rol al,3
xor al,cl
xor ecx,ecx
rol al,3
movzx r8d,al
xor eax,eax
xor r8d,edx
mov qword ptr [rbp-10h],rax
mov qword ptr [rbp-8h],rax
mov eax,1
rol r8b,3
cpuid 
xor r8b,al
mov dword ptr [rbp-10h],eax
xor eax,eax
mov dword ptr [rbp-8h],ecx
mov qword ptr [rbp-8h],rax
rol r8b,3
xor r8b,bl
mov dword ptr [rbp-0Ch],ebx
mov qword ptr [rbp-10h],rax
mov eax,80000001h
rol r8b,3
xor r8b,cl
xor ecx,ecx
rol r8b,3
movzx esi,r8b
xor r8d,r8d
xor esi,edx
cpuid 
mov dword ptr [rbp-10h],eax
xor eax,eax
mov dword ptr [rbp-8h],ecx
mov dword ptr [rsp+38h],eax
mov qword ptr [rsp+30h],rax
mov edi,edx
mov qword ptr [rsp+28h],rax
lea rcx,qword ptr [hd_letter]
xor edx,edx
mov qword ptr [rsp+20h],rax
mov dword ptr [rbp-0Ch],ebx
mov dword ptr [rbp+10h],eax
call GetVolumeInformationA
mov rbx,qword ptr [rsp+68h]
rol sil,3
xor sil,byte ptr [rbp-8h]
rol sil,3
movzx eax,sil
mov rsi,qword ptr [rsp+70h]
xor eax,edi
mov rdi,qword ptr [rsp+78h]
xor eax,dword ptr [rbp+10h]
add rsp,50h
pop rbp
ret 
keygen_code ENDP

_TEXT	ENDS

END

