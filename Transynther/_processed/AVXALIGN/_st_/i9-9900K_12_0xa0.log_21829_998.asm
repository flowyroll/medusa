.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x69b8, %rsi
lea addresses_D_ht+0x1419c, %rdi
nop
cmp %r14, %r14
mov $45, %rcx
rep movsq
nop
nop
add $37838, %r8
lea addresses_A_ht+0x17f58, %r9
clflush (%r9)
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%r9)
nop
sub $59153, %rdi
lea addresses_normal_ht+0xed58, %rsi
lea addresses_A_ht+0x14958, %rdi
nop
nop
xor $11243, %r13
mov $36, %rcx
rep movsq
nop
and $23925, %rsi
lea addresses_WT_ht+0x1ce98, %rcx
add %r8, %r8
mov (%rcx), %esi
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0xed58, %rsi
and $37779, %rdi
movb (%rsi), %r13b
sub %rbp, %rbp
lea addresses_normal_ht+0x6158, %rsi
lea addresses_A_ht+0xf758, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
lfence
mov $75, %rcx
rep movsb
nop
add $35877, %rbp
lea addresses_D_ht+0xd4d8, %rsi
lea addresses_WC_ht+0x820, %rdi
clflush (%rsi)
clflush (%rdi)
nop
inc %r8
mov $79, %rcx
rep movsw
nop
and $15344, %r13
lea addresses_UC_ht+0xa6d8, %rsi
lea addresses_WC_ht+0x2d58, %rdi
nop
nop
nop
nop
nop
and $34391, %r14
mov $118, %rcx
rep movsw
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1ad58, %rsi
lea addresses_WC_ht+0x7acc, %rdi
nop
nop
nop
add $39202, %rbp
mov $0, %rcx
rep movsq
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x3128, %rsi
lea addresses_WC_ht+0x12ad8, %rdi
nop
nop
sub $48695, %r9
mov $9, %rcx
rep movsq
cmp $20241, %rbp
lea addresses_UC_ht+0x5608, %rsi
lea addresses_A_ht+0x11258, %rdi
nop
nop
cmp %r9, %r9
mov $85, %rcx
rep movsb
nop
nop
nop
nop
xor $25601, %r8
lea addresses_WT_ht+0x1138, %rsi
lea addresses_normal_ht+0x16e98, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $30113, %r13
mov $3, %rcx
rep movsb
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x1cbcc, %rsi
lea addresses_A_ht+0xc158, %rdi
nop
nop
add $63551, %r13
mov $41, %rcx
rep movsl
nop
nop
nop
and $49880, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rsi

// Store
lea addresses_US+0x6018, %r12
nop
nop
nop
nop
sub %r13, %r13
movb $0x51, (%r12)
xor $46512, %rcx

// Store
mov $0x35a39b0000000d58, %rcx
nop
nop
nop
nop
sub %r10, %r10
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor $19164, %rsi

// Store
lea addresses_RW+0x14cf8, %r13
nop
nop
nop
nop
nop
sub %r9, %r9
movb $0x51, (%r13)
nop
nop
nop
nop
nop
and %r10, %r10

// Load
lea addresses_UC+0xd58, %r9
nop
nop
xor %rsi, %rsi
movb (%r9), %cl
nop
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_UC+0xd58, %rcx
nop
nop
nop
nop
nop
sub $50975, %r13
mov (%rcx), %r10w
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_NC', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'same': True, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
