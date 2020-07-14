.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1da66, %rdx
nop
nop
nop
cmp $26985, %r14
movw $0x6162, (%rdx)
cmp $36151, %rax
lea addresses_UC_ht+0x9496, %rsi
inc %r12
mov (%rsi), %r9w
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x4966, %rsi
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
and %r12, %r12
lea addresses_normal_ht+0x1eaf6, %r14
nop
cmp $16448, %rdi
movw $0x6162, (%r14)
nop
add %r9, %r9
lea addresses_normal_ht+0x11666, %rsi
lea addresses_A_ht+0x1e666, %rdi
nop
nop
nop
nop
lfence
mov $104, %rcx
rep movsq
nop
xor %r14, %r14
lea addresses_A_ht+0x4da6, %rsi
nop
nop
nop
cmp %r14, %r14
mov (%rsi), %r12w
nop
cmp $25238, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rbx
push %rcx

// Faulty Load
lea addresses_US+0x1fe66, %rcx
nop
nop
and %rbx, %rbx
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'44': 1}
44
*/
