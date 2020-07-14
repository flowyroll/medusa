.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rdi
push %rdx
lea addresses_A_ht+0x1ba16, %r14
nop
nop
nop
dec %rdx
mov (%r14), %rdi
add %r8, %r8
lea addresses_WT_ht+0x59ad, %rbp
nop
nop
nop
nop
nop
add $53554, %r10
movb (%rbp), %r12b
nop
nop
nop
cmp $39329, %r8
lea addresses_D_ht+0x15659, %r10
nop
nop
nop
cmp %r12, %r12
movl $0x61626364, (%r10)
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x1a4ed, %rdi
nop
nop
nop
nop
xor $51827, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
and $48221, %rdx
lea addresses_normal_ht+0x193ad, %r8
nop
nop
nop
nop
sub %r12, %r12
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
cmp $7945, %r14
lea addresses_WT_ht+0x1af1, %rbp
xor $5369, %r12
movb (%rbp), %r14b
nop
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x101ad, %rbp
nop
nop
nop
nop
cmp %r14, %r14
mov (%rbp), %r10w
nop
and $16707, %r14
lea addresses_normal_ht+0x18c6d, %rdx
nop
nop
nop
nop
cmp %r12, %r12
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
inc %rdi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
mov $0x1bea5000000008ad, %r8
nop
nop
nop
nop
and $31839, %r14
movl $0x51525354, (%r8)
nop
sub %rax, %rax

// Store
lea addresses_A+0x18a6d, %rcx
nop
nop
sub %rax, %rax
movl $0x51525354, (%rcx)
nop
nop
nop
nop
inc %rdx

// Store
mov $0xebd, %rcx
nop
xor %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovntdq %ymm4, (%rcx)
nop
nop
nop
add $18309, %rdi

// Faulty Load
lea addresses_normal+0x149ad, %r8
nop
nop
nop
nop
nop
cmp $3710, %r14
mov (%r8), %ecx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'34': 56}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
