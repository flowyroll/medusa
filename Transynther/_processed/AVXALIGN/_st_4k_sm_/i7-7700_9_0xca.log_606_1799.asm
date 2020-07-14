.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rdx
push %rsi
lea addresses_WC_ht+0xc7f9, %rbp
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rbp), %r12d
nop
nop
nop
nop
nop
and $56364, %r8
lea addresses_A_ht+0x4461, %rbx
nop
nop
nop
nop
nop
cmp %rax, %rax
movb $0x61, (%rbx)
xor $14639, %rdx
lea addresses_normal_ht+0xcc79, %rax
nop
nop
nop
nop
nop
and $1768, %rdx
mov (%rax), %rbx
add $60149, %rbx
lea addresses_UC_ht+0x15761, %rdx
xor $37088, %rax
vmovups (%rdx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
nop
nop
xor $15515, %r8
lea addresses_UC_ht+0xe569, %rbx
nop
add %r12, %r12
movb (%rbx), %al
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x156e1, %rbp
nop
nop
nop
cmp $42975, %rdx
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x18f21, %rax
nop
nop
and %rbx, %rbx
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
and %rbx, %rbx
lea addresses_UC_ht+0x11886, %rax
clflush (%rax)
nop
nop
cmp $26306, %rbx
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0xe861, %rsi
nop
nop
nop
nop
dec %rbx
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0xaeff, %r8
nop
nop
nop
cmp $20474, %r12
mov (%r8), %ebp
xor $27510, %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_A+0x18161, %rcx
and %rbp, %rbp
movl $0x51525354, (%rcx)
sub $12695, %r13

// Load
lea addresses_WC+0x1e261, %r9
nop
nop
nop
nop
and %r14, %r14
mov (%r9), %cx
nop
sub $21661, %r13

// Store
lea addresses_UC+0x1b91, %rbp
nop
nop
nop
inc %r14
movb $0x51, (%rbp)
nop
nop
nop
nop
and $60304, %rcx

// Store
lea addresses_WT+0x6161, %rcx
nop
nop
xor $16793, %r13
movb $0x51, (%rcx)
nop
nop
inc %rcx

// Store
lea addresses_A+0x18161, %rcx
nop
nop
nop
nop
nop
sub $25493, %r10
movl $0x51525354, (%rcx)
nop
nop
nop
nop
add $24002, %r14

// Store
mov $0x7ca0660000000fe1, %rdi
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
nop
dec %r9

// Store
lea addresses_A+0x18161, %r13
nop
nop
nop
sub $7253, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_A+0x18161, %r14
cmp %rbp, %rbp
mov (%r14), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 4, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'58': 606}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
