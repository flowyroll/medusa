.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1633e, %rdx
add $7314, %r15
movl $0x61626364, (%rdx)
nop
nop
xor $3813, %rbx
lea addresses_WT_ht+0x1ad68, %rdx
nop
nop
nop
nop
and $22617, %rsi
mov (%rdx), %rbp
nop
nop
nop
add $59683, %rbp
lea addresses_normal_ht+0x141c0, %rsi
lea addresses_D_ht+0x10a4c, %rdi
nop
nop
nop
cmp $8289, %rdx
mov $10, %rcx
rep movsl
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1dea1, %rsi
lea addresses_A_ht+0x7f68, %rdi
clflush (%rdi)
nop
xor $62778, %rbx
mov $70, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $27810, %rbx
lea addresses_normal_ht+0xe568, %rsi
lea addresses_WC_ht+0x1c568, %rdi
nop
cmp %r12, %r12
mov $0, %rcx
rep movsq
nop
nop
nop
xor $64176, %r15
lea addresses_A_ht+0x141e8, %r12
nop
nop
cmp $37473, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
cmp $41713, %rcx
lea addresses_D_ht+0x142f8, %rdi
nop
nop
nop
sub $3957, %rbx
mov (%rdi), %esi
nop
sub %rbp, %rbp
lea addresses_D_ht+0xb968, %rsi
lea addresses_WC_ht+0xb776, %rdi
cmp %rbp, %rbp
mov $109, %rcx
rep movsl
nop
nop
add $50234, %rbx
lea addresses_WT_ht+0x42e8, %rbx
nop
nop
nop
nop
nop
and %rdx, %rdx
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x14568, %r15
nop
nop
sub %rbp, %rbp
mov (%r15), %cx
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x18d68, %r15
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x61, (%r15)
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0xd968, %rsi
and %r15, %r15
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
and $2153, %rdx
lea addresses_D_ht+0xecd8, %rsi
lea addresses_A_ht+0xad68, %rdi
clflush (%rdi)
nop
nop
nop
sub $53881, %r12
mov $68, %rcx
rep movsq
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x11c49, %rdx
sub $14569, %rsi
movb $0x61, (%rdx)
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rdx

// Store
lea addresses_UC+0x17568, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
sub $17295, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
add $53118, %r13

// Load
lea addresses_A+0xb568, %r12
nop
nop
nop
nop
nop
add %r14, %r14
movb (%r12), %bl
nop
cmp %rbx, %rbx

// Store
mov $0x368, %r12
and $37069, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovntdq %ymm5, (%r12)
nop
nop
nop
nop
nop
inc %r14

// Load
lea addresses_WT+0x1a948, %r12
cmp %r11, %r11
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_A+0xb568, %r11
nop
nop
nop
nop
sub $63572, %rdx
movups (%r11), %xmm5
vpextrq $0, %xmm5, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'35': 525}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
