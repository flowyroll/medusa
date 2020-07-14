.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1b49, %rsi
lea addresses_normal_ht+0x1a7ba, %rdi
nop
nop
nop
and $10719, %rbp
mov $100, %rcx
rep movsb
nop
nop
sub %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp

// Store
lea addresses_WC+0x1fc8a, %rbp
nop
inc %r13
movl $0x51525354, (%rbp)
nop
nop
nop
nop
inc %r13

// Store
lea addresses_normal+0x5dba, %r12
clflush (%r12)
nop
cmp %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r12)
cmp %rax, %rax

// Store
mov $0x4ae2ef00000001ba, %r9
clflush (%r9)
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%r9)
and $44677, %r12

// Store
lea addresses_UC+0x22e2, %r9
cmp $6353, %r14
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
dec %r12

// Load
lea addresses_US+0x45ba, %rbp
nop
nop
nop
add %r12, %r12
movb (%rbp), %r15b
nop
nop
nop
nop
nop
inc %r15

// Faulty Load
mov $0x4ae2ef00000001ba, %r14
nop
and %r9, %r9
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'54': 55}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
