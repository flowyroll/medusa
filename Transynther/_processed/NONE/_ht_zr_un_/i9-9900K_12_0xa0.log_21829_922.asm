.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x176d0, %rsi
lea addresses_WC_ht+0x165c6, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $66, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x18346, %r15
nop
nop
add $47412, %rbx
movups (%r15), %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
sub $36649, %rcx
lea addresses_UC_ht+0x6ec6, %rdi
nop
nop
nop
nop
nop
sub $56956, %r10
mov (%rdi), %r15d
nop
nop
inc %rsi
lea addresses_D_ht+0x5ec6, %rsi
lea addresses_A_ht+0x11856, %rdi
sub $2945, %r12
mov $81, %rcx
rep movsb
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x113c6, %rsi
lea addresses_A_ht+0x1442a, %rdi
nop
nop
nop
inc %r10
mov $34, %rcx
rep movsw
xor $29550, %r10
lea addresses_WC_ht+0x1d8c6, %rsi
lea addresses_WC_ht+0x16c6, %rdi
xor $48901, %r12
mov $20, %rcx
rep movsq
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WC+0x14812, %rdi
nop
inc %r15
movb (%rdi), %cl
nop
nop
nop
nop
nop
and $1373, %rcx

// Faulty Load
lea addresses_UC+0x26c6, %rdx
nop
nop
nop
nop
nop
add $9756, %r12
movups (%rdx), %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'48': 15077, 'ff': 1, '00': 2262, '46': 1810, '45': 2669, '0d': 4, '8a': 4, '08': 2}
48 48 48 48 48 46 48 48 46 48 48 48 48 46 48 48 00 48 48 46 48 48 46 45 48 00 48 48 48 48 48 48 48 48 48 48 48 46 48 48 46 48 48 00 48 48 48 48 48 45 48 48 00 45 48 00 48 48 46 48 48 46 48 48 46 48 00 45 48 48 46 48 48 48 48 48 46 48 48 46 48 48 46 48 48 00 48 48 00 48 48 45 48 00 48 48 00 48 48 46 48 48 48 48 00 46 48 48 45 48 48 48 48 48 46 45 48 48 48 45 48 48 00 45 48 00 45 48 48 48 46 48 48 48 45 48 48 48 45 48 48 48 46 48 48 00 48 48 48 48 00 45 48 48 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 00 46 48 48 48 48 46 48 48 46 45 48 00 48 46 48 48 00 45 48 00 48 48 45 48 45 48 48 48 48 46 48 48 46 48 48 46 48 00 00 45 48 00 48 48 48 48 48 45 48 48 00 48 48 46 48 48 48 48 46 48 48 46 45 48 48 45 48 48 45 48 48 48 46 48 48 48 48 48 48 48 48 46 48 48 46 48 48 48 48 48 00 48 48 46 48 48 45 48 48 45 48 48 48 48 48 45 00 00 45 48 48 45 48 00 48 46 45 48 48 48 48 48 48 48 48 48 48 48 45 48 48 00 48 48 48 45 48 48 00 45 48 48 48 48 45 48 48 48 48 48 46 48 48 46 48 48 46 48 48 48 48 48 48 48 48 48 00 45 48 48 48 48 48 48 48 48 45 48 00 48 00 48 45 48 00 46 48 48 00 48 48 00 48 00 48 48 46 48 48 48 45 48 48 45 48 48 48 45 48 48 45 48 48 48 48 48 45 48 48 48 48 48 48 48 48 00 48 45 48 48 00 48 48 45 48 48 46 48 48 46 48 48 48 48 48 48 00 48 48 46 48 48 46 48 48 45 48 48 48 48 00 48 00 46 48 48 46 48 48 48 48 48 00 48 48 46 48 48 48 46 48 48 45 48 48 48 00 45 48 45 48 48 00 46 48 48 48 48 48 00 48 48 00 45 48 45 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 00 45 48 00 48 45 48 00 45 48 48 45 48 48 00 45 48 00 48 48 00 45 48 48 00 45 48 48 46 48 48 48 48 48 48 48 48 48 48 00 48 48 46 48 48 45 48 48 48 48 46 48 48 00 48 48 48 48 45 48 48 46 48 48 00 48 48 46 48 48 48 48 48 48 46 48 48 48 46 48 48 48 46 48 48 46 48 48 48 48 48 48 48 48 46 48 00 46 48 48 48 48 46 48 48 48 48 48 48 48 00 46 48 48 48 45 48 48 48 48 48 48 48 48 48 48 00 48 00 46 48 48 46 48 48 46 48 48 45 48 48 48 48 46 48 48 48 48 48 48 45 48 48 48 46 48 48 48 48 00 48 48 45 48 48 46 48 48 48 00 45 48 48 45 48 48 48 45 48 48 46 45 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 46 48 48 46 48 48 00 48 48 45 48 48 46 48 48 45 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 46 48 48 48 48 48 00 48 48 46 45 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 45 48 48 48 45 48 48 46 48 48 46 48 48 00 45 48 46 48 48 00 45 48 45 48 48 00 45 48 48 48 48 48 45 48 48 45 48 48 45 48 46 48 48 48 48 48 46 48 48 45 48 48 48 48 00 48 48 08 48 48 48 48 48 48 48 48 45 48 48 48 48 48 45 48 48 48 48 46 48 48 48 48 48 48 48 45 48 00 45 48 48 45 48 48 00 46 48 48 48 45 48 48 48 46 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 46 48 48 00 45 48 48 48 48 48 00 45 48 48 46 48 48 00 48 48 00 45 48 00 45 48 48 45 48 48 45 48 48 45 48 48 48 48 48 46 48 45 48 00 48 48 48 46 48 48 46 48 48 48 45 48 45 48 48 00 48 00 45 48 00 48 48 48 48 46 48 48 48 48 00 48 48 46 48 48 48 00 48 48 46 48 48 46 48 00 46 48 48 46 48 48 46 48 48 00 45 48 48 00 48 48 46 48 48 48 48 00 46 48 48 48 48 45 48 46 48 48 48 48 48 46 48 48 45
*/
