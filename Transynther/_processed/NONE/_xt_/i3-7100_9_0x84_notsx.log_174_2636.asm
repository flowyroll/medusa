.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x162f0, %rsi
lea addresses_A_ht+0x9af0, %rdi
clflush (%rdi)
and %r14, %r14
mov $98, %rcx
rep movsb
nop
nop
nop
sub $53946, %r13
lea addresses_normal_ht+0x104f0, %rsi
lea addresses_UC_ht+0x12fb0, %rdi
nop
nop
and $32881, %rbp
mov $4, %rcx
rep movsb
cmp %r13, %r13
lea addresses_UC_ht+0x10af0, %rsi
lea addresses_WC_ht+0xdf52, %rdi
nop
nop
nop
nop
nop
sub $1880, %r10
mov $125, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x15758, %rsi
lea addresses_UC_ht+0x1b2f0, %rdi
nop
nop
nop
nop
add $42498, %r14
mov $56, %rcx
rep movsq
xor %rsi, %rsi
lea addresses_A_ht+0x1ef0, %r14
clflush (%r14)
cmp %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%r14)
nop
dec %r13
lea addresses_WT_ht+0xe770, %rcx
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x1d948, %rdi
nop
nop
nop
nop
nop
sub $24514, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%rdi)
add $38796, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Store
lea addresses_UC+0x14af0, %rbp
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovntdq %ymm5, (%rbp)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_WT+0x1e2f0, %r15
inc %r12
movups (%r15), %xmm2
vpextrq $0, %xmm2, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'39': 174}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
