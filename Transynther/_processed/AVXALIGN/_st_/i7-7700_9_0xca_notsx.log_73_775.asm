.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x288e, %rsi
lea addresses_A_ht+0x14155, %rdi
nop
nop
cmp %r12, %r12
mov $96, %rcx
rep movsl
nop
nop
nop
sub $56011, %rcx
lea addresses_UC_ht+0xb879, %rsi
lea addresses_D_ht+0x1dfb, %rdi
nop
nop
nop
add %rdx, %rdx
mov $112, %rcx
rep movsb
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x4bd5, %rbp
nop
nop
nop
nop
nop
cmp $63292, %rdx
mov (%rbp), %cx
nop
nop
dec %rdi
lea addresses_WT_ht+0x182f9, %rsi
lea addresses_WT_ht+0x7db9, %rdi
clflush (%rdi)
nop
nop
xor $53049, %r13
mov $33, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x187f9, %rdi
clflush (%rdi)
and $38179, %rbp
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
and $36102, %r13
lea addresses_UC_ht+0x48f9, %r12
add %rbp, %rbp
movw $0x6162, (%r12)
nop
cmp %r12, %r12
lea addresses_UC_ht+0x192f9, %rsi
nop
nop
inc %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rsi)
and $26814, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_PSE+0xc3f9, %r9
xor %rbp, %rbp
movl $0x51525354, (%r9)
nop
nop
nop
and $22403, %r13

// Store
lea addresses_normal+0x6cb9, %rdx
nop
nop
and $20864, %r15
movb $0x51, (%rdx)
nop
cmp %r13, %r13

// Store
lea addresses_PSE+0x180f9, %r15
nop
nop
dec %rdx
movw $0x5152, (%r15)
cmp %r9, %r9

// Load
lea addresses_PSE+0xba39, %rsi
nop
nop
nop
nop
xor $41386, %rbp
movb (%rsi), %dl
sub %r13, %r13

// Store
lea addresses_WT+0x9eb9, %r10
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovntdq %ymm6, (%r10)
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_RW+0x1d1f9, %r13
nop
nop
nop
nop
nop
and %r9, %r9
mov (%r13), %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'32': 73}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
