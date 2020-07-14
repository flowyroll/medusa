.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5e0a, %rbp
nop
sub $4797, %rbx
mov (%rbp), %r10d
nop
dec %r15
lea addresses_WT_ht+0x1c4be, %rax
nop
nop
xor %r9, %r9
movw $0x6162, (%rax)
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0xd10e, %rax
nop
nop
nop
nop
and %r14, %r14
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0xb59e, %r10
nop
nop
nop
nop
inc %rax
movups (%r10), %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
add $32902, %rbx
lea addresses_D_ht+0xad99, %rbp
inc %r10
movw $0x6162, (%rbp)
nop
nop
nop
add $59905, %rbx
lea addresses_WT_ht+0x162df, %rsi
lea addresses_UC_ht+0x182ba, %rdi
nop
nop
and %r14, %r14
mov $95, %rcx
rep movsl
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x1c0c6, %rsi
nop
nop
nop
cmp $34106, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rsi
movntdq %xmm2, (%rsi)
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x18a1e, %rsi
lea addresses_A_ht+0x847e, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $110, %rcx
rep movsq
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x1161e, %rsi
lea addresses_WC_ht+0xa91e, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $55, %rcx
rep movsq
nop
nop
nop
xor %r15, %r15
lea addresses_D_ht+0x531e, %rdi
nop
nop
nop
nop
dec %rax
mov (%rdi), %bp
nop
nop
nop
nop
and $38651, %r9
lea addresses_WT_ht+0x5476, %r9
nop
nop
nop
nop
xor $53638, %rbx
movups (%r9), %xmm2
vpextrq $0, %xmm2, %r14
nop
add %rbp, %rbp
lea addresses_normal_ht+0xa1e, %rcx
clflush (%rcx)
xor $15052, %rbp
mov (%rcx), %r10d
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x1281e, %rsi
lea addresses_D_ht+0x1221e, %rdi
nop
xor %r14, %r14
mov $17, %rcx
rep movsl
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rcx

// Faulty Load
mov $0xa1e, %r14
nop
nop
mfence
movntdqa (%r14), %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'49': 17, '45': 1, '00': 1}
49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 00 49
*/
