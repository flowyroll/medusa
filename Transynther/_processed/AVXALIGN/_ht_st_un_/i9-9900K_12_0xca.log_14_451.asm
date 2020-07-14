.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
lea addresses_UC_ht+0x10e49, %rax
clflush (%rax)
nop
nop
nop
nop
nop
dec %rbx
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
dec %rcx
lea addresses_D_ht+0x1e649, %r8
nop
nop
nop
and %r9, %r9
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
add %rax, %rax
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x10a45, %r10
nop
nop
nop
nop
mfence
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
cmp $45541, %rdx

// REPMOV
lea addresses_PSE+0x10a09, %rsi
lea addresses_WT+0x4a49, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $24, %rcx
rep movsb
nop
nop
cmp $51005, %rsi

// Faulty Load
lea addresses_WT+0x4a49, %rsi
add $15448, %rdx
movb (%rsi), %cl
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 2}, 'dst': {'same': True, 'type': 'addresses_WT', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': True, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'d6': 1, '5c': 1, '33': 10, 'ce': 1, '64': 1}
64 ce 33 33 33 33 5c 33 33 33 33 33 33 d6
*/
