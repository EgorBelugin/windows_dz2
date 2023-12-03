IFDEF RAX

.code

extern func_c : proto

func_asm PROC
    
    push rbp
    mov rbp, rsp

    push rax
    push rbx

    mov rax, [rbp + 48]
    mov rbx, [rbp + 56]

    push rbx
    push rax
    push r9
    
    push r8
    push rdx
    push rcx
    call func_c

    pop rbx
    pop rax

    
    pop rbp
    ret
func_asm ENDP

ELSE

.386
.MODEL FLAT

.CODE

extern _func_c@24 : proto
; fastcall function -> stdcall function
@func_asm@24 PROC
    
    push ebp
    mov ebp, esp

    push eax
    push ebx
    push edi
    push esi

    mov eax, [ebp + 8 ]
    mov ebx, [ebp + 12]
    mov edi, [ebp + 16]
    mov esi, [ebp + 20]

    push esi
    push edi
    push ebx
    push eax
    push edx
    push ecx
    call _func_c@24
    
    pop esi
    pop edi
    pop ebx
    pop eax
    
    pop ebp
    ret
@func_asm@24 ENDP

ENDIF

END