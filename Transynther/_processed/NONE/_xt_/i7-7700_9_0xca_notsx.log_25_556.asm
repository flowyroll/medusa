.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x74b8, %rdi
nop
nop
inc %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0xc938, %rsi
lea addresses_WT_ht+0xdd38, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $70, %rcx
rep movsw
cmp %r13, %r13
lea addresses_UC_ht+0x102b8, %rsi
add %r14, %r14
mov (%rsi), %r13w
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x5838, %rsi
nop
cmp %r14, %r14
mov (%rsi), %r13
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0xa6c, %r14
nop
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x61626364, (%r14)
xor %r13, %r13
lea addresses_A_ht+0xd91c, %rsi
lea addresses_D_ht+0x1c9f8, %rdi
nop
nop
sub %rdx, %rdx
mov $96, %rcx
rep movsl
nop
nop
add $2831, %r14
lea addresses_WT_ht+0x14138, %rsi
lea addresses_UC_ht+0x1a09a, %rdi
nop
and %r9, %r9
mov $107, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1b038, %rcx
nop
nop
nop
cmp $8341, %rbx
movw $0x6162, (%rcx)
nop
dec %rbx
lea addresses_normal_ht+0x11bd8, %r13
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
and $0xffffffffffffffc0, %r13
movaps %xmm2, (%r13)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x1d6ec, %r9
add %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
dec %rbx
lea addresses_WC_ht+0x6cdc, %rdi
add %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x3618, %rsi
lea addresses_D_ht+0x1538, %rdi
nop
inc %rbx
mov $121, %rcx
rep movsb
add %r13, %r13
lea addresses_WT_ht+0x1c138, %r9
nop
nop
nop
nop
nop
cmp $54467, %rbx
movl $0x61626364, (%r9)
nop
nop
nop
nop
and $46335, %rcx
lea addresses_normal_ht+0x1cd38, %r13
clflush (%r13)
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r13)
nop
nop
sub $54242, %r9
lea addresses_normal_ht+0xdd58, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r13
movl $0x61626364, (%rdi)
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x690a0c0000000538, %r15
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_RW+0x12038, %rdi
nop
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%rdi)
nop
dec %rdi

// Store
lea addresses_normal+0x2b38, %r12
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
inc %rbx

// Faulty Load
lea addresses_RW+0xd38, %rdx
nop
and %r10, %r10
mov (%rdx), %r15w
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'32': 25}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
