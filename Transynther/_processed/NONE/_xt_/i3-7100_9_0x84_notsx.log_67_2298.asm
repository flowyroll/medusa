.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16a31, %r12
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
cmp $49798, %rcx
lea addresses_A_ht+0xae39, %rsi
lea addresses_WT_ht+0x11cf1, %rdi
nop
nop
cmp %rbx, %rbx
mov $29, %rcx
rep movsq
dec %rsi
lea addresses_A_ht+0x13b41, %rsi
lea addresses_D_ht+0x7ad1, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $12840, %rax
mov $65, %rcx
rep movsl
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rdx

// Store
mov $0x331, %r14
nop
nop
inc %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovntdq %ymm1, (%r14)
nop
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_D+0x1e631, %r9
nop
and $48705, %r10
movups (%r9), %xmm2
vpextrq $0, %xmm2, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rdx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'36': 67}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
