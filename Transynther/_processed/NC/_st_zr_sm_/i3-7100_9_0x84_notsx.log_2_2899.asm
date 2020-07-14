.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xf1b2, %r13
clflush (%r13)
and %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x14132, %r12
nop
add $13444, %rdx
movb $0x61, (%r12)
nop
sub %r12, %r12
lea addresses_D_ht+0x4932, %r8
nop
nop
nop
nop
nop
sub %rdi, %rdi
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
add %rdi, %rdi
lea addresses_D_ht+0x1e332, %rsi
lea addresses_UC_ht+0x739c, %rdi
nop
nop
nop
nop
nop
xor $18646, %r8
mov $50, %rcx
rep movsb
cmp $32278, %r13
lea addresses_normal_ht+0x19c34, %r13
nop
nop
xor $8576, %rdi
movw $0x6162, (%r13)
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x1e532, %rsi
lea addresses_WC_ht+0x14332, %rdi
nop
nop
nop
and $38278, %rdx
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $47911, %rsi
lea addresses_WT_ht+0xc85a, %rsi
lea addresses_normal_ht+0x5532, %rdi
cmp $46138, %rax
mov $87, %rcx
rep movsw
add %rcx, %rcx
lea addresses_UC_ht+0x11fb2, %rax
nop
cmp $17075, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
and $0xffffffffffffffc0, %rax
vmovaps %ymm4, (%rax)
nop
nop
add %r8, %r8
lea addresses_D_ht+0x14fd2, %r12
nop
nop
nop
nop
nop
dec %rdi
movb (%r12), %r13b
nop
sub $21515, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rbx

// Store
mov $0x8e1620000000932, %r8
dec %r12
movb $0x51, (%r8)
nop
nop
add $349, %r9

// Store
lea addresses_normal+0xa6b2, %r14
nop
nop
nop
nop
and %r12, %r12
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
and $2976, %r9

// Load
lea addresses_normal+0x10532, %r14
nop
nop
nop
nop
sub $61317, %r13
mov (%r14), %r8d
xor %r14, %r14

// Load
lea addresses_D+0x15d32, %rbp
nop
nop
nop
nop
nop
and $27794, %r9
mov (%rbp), %r12w
nop
nop
nop
nop
nop
and $48972, %r8

// Store
lea addresses_WC+0x10732, %r8
nop
nop
and %r13, %r13
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WT+0x1a072, %r12
nop
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_PSE+0x1e6ca, %r8
and $3484, %r12
movw $0x5152, (%r8)
nop
nop
nop
and %r12, %r12

// Store
lea addresses_US+0x10416, %r8
nop
nop
nop
nop
nop
cmp %r9, %r9
movb $0x51, (%r8)
nop
nop
nop
nop
nop
cmp %r13, %r13

// Faulty Load
mov $0x8e1620000000932, %r8
nop
cmp $51235, %r12
mov (%r8), %r9d
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1, '51': 1}
00 51
*/
