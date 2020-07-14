.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x8096, %rsi
lea addresses_normal_ht+0x1a8b6, %rdi
nop
nop
nop
nop
sub $54714, %r10
mov $63, %rcx
rep movsl
nop
nop
xor $19376, %rcx
lea addresses_UC_ht+0xc0b6, %rcx
dec %r13
movl $0x61626364, (%rcx)
xor %rdi, %rdi
lea addresses_normal_ht+0x1064e, %rdi
clflush (%rdi)
nop
nop
nop
add $6952, %r10
movb (%rdi), %r13b
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0xf15f, %rsi
nop
sub $45571, %r8
movl $0x61626364, (%rsi)
cmp %rbp, %rbp
lea addresses_A_ht+0x153a5, %rsi
nop
nop
nop
sub %rdi, %rdi
mov (%rsi), %r10w
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x13867, %rsi
lea addresses_D_ht+0xfd56, %rdi
and %r15, %r15
mov $85, %rcx
rep movsw
nop
nop
nop
add $51801, %rdi
lea addresses_A_ht+0xa676, %rsi
lea addresses_A_ht+0x154b6, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $76, %rcx
rep movsw
xor $18567, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rdi

// Store
lea addresses_RW+0x1f45e, %r15
nop
nop
nop
add %r8, %r8
movb $0x51, (%r15)
nop
add $33864, %rdi

// Faulty Load
lea addresses_D+0x2cb6, %r10
nop
nop
nop
dec %r12
movntdqa (%r10), %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'45': 9512, '81': 4, 'db': 3, '08': 4, '00': 12306}
45 00 45 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 45 00 00 00 45 00 00 45 00 45 00 45 00 45 00 45 00 00 00 00 45 00 45 45 00 00 45 00 45 00 00 00 00 45 00 45 00 45 45 00 45 45 45 00 00 00 00 45 00 45 00 00 45 45 00 00 45 00 45 00 00 45 45 45 00 00 00 45 45 00 45 45 00 00 45 45 45 45 45 00 45 00 45 00 00 00 45 00 45 00 00 45 00 45 45 00 00 45 00 00 00 45 00 45 00 45 00 45 45 00 00 45 45 45 00 00 00 00 45 00 81 00 45 45 00 45 45 00 45 00 45 00 00 00 00 00 00 45 00 45 00 45 00 00 45 45 00 00 45 45 45 45 00 45 00 45 00 45 45 00 45 00 00 00 45 45 45 00 45 45 45 00 00 45 45 00 45 00 45 45 45 00 00 00 45 45 00 00 00 00 00 45 00 45 45 00 45 45 45 45 00 00 45 00 45 00 00 45 00 00 00 45 45 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 45 45 45 45 45 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 00 00 45 00 00 45 00 45 00 00 00 00 00 45 00 45 00 00 45 45 45 00 45 45 00 45 00 00 45 45 45 00 00 00 45 45 45 00 45 45 45 00 00 00 45 00 00 00 45 45 00 45 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 45 00 00 00 45 45 00 00 00 45 45 00 00 45 45 45 00 45 45 00 45 45 00 45 45 45 00 45 00 00 00 00 00 00 00 00 45 45 45 00 45 00 45 45 00 45 00 00 45 45 00 45 45 45 45 00 45 45 45 00 45 00 00 45 00 00 00 00 45 00 45 45 45 00 00 45 00 45 00 45 00 45 00 45 00 00 00 45 00 45 00 45 00 45 45 00 45 45 45 00 45 45 00 00 00 00 45 00 00 00 45 00 00 00 45 45 00 45 00 45 45 45 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 45 45 00 00 00 45 00 00 00 00 00 45 00 00 45 45 00 45 45 45 00 00 45 45 45 00 00 45 00 45 45 45 45 45 00 00 45 00 45 45 00 00 00 45 00 00 45 00 45 00 00 45 45 45 45 45 45 45 45 45 00 45 00 00 00 45 00 45 45 00 45 45 00 00 45 45 00 00 45 00 00 00 45 00 45 00 00 45 81 45 45 00 45 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 45 45 45 00 00 00 45 45 00 00 45 00 45 00 00 45 00 00 00 00 45 00 45 00 00 00 00 45 45 00 00 45 45 45 00 45 45 45 45 45 00 45 45 00 45 00 45 45 45 00 45 00 45 45 00 45 00 45 00 45 81 00 00 00 00 00 45 00 45 45 00 00 45 00 45 00 00 00 00 00 45 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 45 00 45 00 00 00 45 45 45 00 00 45 00 00 00 45 00 45 00 45 45 00 45 00 00 00 00 00 45 45 00 00 00 00 45 00 45 00 45 00 45 45 00 45 45 00 00 00 00 45 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 45 45 00 00 00 45 45 45 45 45 00 45 00 00 00 00 45 45 45 00 00 45 00 00 00 00 00 00 45 00 45 00 00 00 45 45 00 00 45 00 00 45 00 45 00 00 45 00 00 45 45 00 00 00 45 45 45 00 00 00 45 00 45 45 45 00 45 00 00 45 45 45 00 00 00 45 45 00 00 45 00 45 00 00 45 45 45 45 00 45 00 45 00 45 00 45 00 00 00 00 00 45 00 00 45 45 00 00 00 45 45 45 00 00 45 00 45 45 45 00 00 45 00 45 00 00 45 45 45 00 00 45 00 00 00 00 00 45 45 00 45 45 00 00 00 45 45 45 00 45 45 45 00 45 45 00 00 00 45 45 00 45 00 45 45 00 45 00 45 00 00 45 45 45 00 00 00 45 45 00 00 45 00 45 00 00 45 45 45 45 00 45 45 00 00 45 00 00 45 45 45 00 00 45 00 45 45 00 45 00
*/
