.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb0a, %r12
nop
nop
and %r10, %r10
movb $0x61, (%r12)
nop
nop
nop
nop
nop
and $61834, %rbx
lea addresses_normal_ht+0x932, %rsi
lea addresses_UC_ht+0xa236, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $90, %rcx
rep movsl
nop
nop
nop
nop
and $4659, %r12
lea addresses_D_ht+0x1584a, %rcx
and %rdi, %rdi
movw $0x6162, (%rcx)
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x224a, %r10
add %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1cd07, %r10
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r10), %r11w
nop
xor $2623, %rax
lea addresses_UC_ht+0xdc4a, %rsi
lea addresses_normal_ht+0x32ba, %rdi
cmp %rax, %rax
mov $82, %rcx
rep movsq
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x2c4a, %rcx
xor %rax, %rax
mov (%rcx), %r10w
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x1b44a, %r12
cmp %rsi, %rsi
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm3
vpextrq $1, %xmm3, %rax
xor %r12, %r12
lea addresses_WC_ht+0xc16, %r10
nop
nop
nop
sub $7407, %r12
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x1944a, %rcx
nop
nop
nop
xor %rdi, %rdi
mov (%rcx), %r12d
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdx

// Store
lea addresses_WT+0x2c4a, %r8
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%r8)
nop
inc %r15

// Store
lea addresses_RW+0xa87a, %rax
cmp %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_WT+0x2c4a, %rdx
dec %r12
mov (%rdx), %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 210}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
