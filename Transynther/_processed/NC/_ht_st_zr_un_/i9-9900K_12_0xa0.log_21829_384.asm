.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x8ee4, %r14
xor %rcx, %rcx
mov (%r14), %esi
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x5224, %rsi
lea addresses_normal_ht+0x1d6e4, %rdi
nop
sub %rbp, %rbp
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0xa784, %rsi
nop
nop
nop
and $19361, %r13
movb (%rsi), %r14b
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1762a, %rsi
lea addresses_UC_ht+0xf424, %rdi
clflush (%rsi)
nop
nop
nop
inc %rdx
mov $37, %rcx
rep movsl
nop
nop
dec %rbp
lea addresses_A_ht+0x15134, %r13
clflush (%r13)
xor %rdx, %rdx
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0xc564, %r14
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r14), %r13
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xd964, %rsi
lea addresses_WC_ht+0x5564, %rdi
clflush (%rdi)
nop
nop
dec %r9
mov $123, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $18535, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Load
mov $0x9a4, %r8
nop
nop
nop
nop
nop
cmp $63874, %rsi
movups (%r8), %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
mov $0x52eaed0000000d64, %rbp
nop
nop
nop
nop
nop
sub %r9, %r9
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'46': 11, '00': 4068, '34': 1, '47': 13674, '45': 4066, '20': 2, 'ff': 1, '1e': 6}
45 47 47 47 45 47 45 47 00 45 34 47 45 47 47 45 00 47 47 47 47 45 47 47 47 47 47 45 47 45 47 47 47 47 47 47 00 45 47 47 45 00 45 47 00 00 47 47 47 47 00 47 00 47 00 45 47 47 47 45 47 47 47 47 45 45 45 47 45 47 45 47 00 00 47 47 45 47 47 00 47 47 47 47 45 47 47 47 47 47 47 00 00 00 45 47 00 45 47 45 47 47 00 47 00 47 45 45 47 45 47 47 47 47 47 47 00 00 45 47 47 47 47 47 47 47 47 45 47 45 47 00 45 47 47 47 47 47 45 47 47 00 45 47 47 47 00 47 00 47 47 47 45 47 47 47 47 47 47 47 47 00 00 47 47 47 47 00 00 47 45 47 00 00 45 00 47 47 00 45 00 45 45 47 45 47 47 47 47 47 47 47 00 45 00 00 47 45 47 45 00 47 45 47 45 47 45 47 47 00 47 47 00 00 45 47 45 47 47 00 45 47 45 45 00 45 47 47 47 47 47 47 47 47 00 47 45 47 47 00 00 47 47 47 00 00 47 47 47 00 00 47 45 47 45 47 45 47 00 47 00 00 47 47 47 47 47 47 47 47 00 47 47 45 00 45 45 47 45 47 47 47 47 45 47 47 47 00 47 00 47 47 47 47 00 47 00 00 47 00 00 47 47 45 47 00 45 47 45 47 00 47 45 47 45 47 47 45 47 47 47 45 47 45 47 45 47 00 45 00 45 47 00 47 47 45 47 45 47 45 00 47 47 47 47 45 00 47 45 00 47 47 45 45 00 00 47 00 47 47 47 47 47 47 47 00 47 00 47 47 47 47 47 47 47 47 45 47 47 47 47 45 00 47 47 47 45 47 47 47 47 47 47 00 45 47 45 47 45 47 45 45 00 45 00 47 00 47 47 47 47 47 00 45 47 45 47 47 45 47 47 45 47 47 47 47 45 47 47 00 47 47 00 47 00 45 00 47 47 47 47 47 47 47 45 47 47 47 00 47 47 47 47 00 47 45 47 45 47 47 47 47 47 47 47 47 45 47 47 45 45 00 47 47 47 45 00 47 00 45 45 47 45 47 45 47 00 47 47 45 47 47 45 47 45 47 45 47 47 45 47 45 00 47 47 00 47 47 47 47 00 47 47 47 47 00 00 00 45 47 45 47 00 47 47 47 45 47 47 00 45 00 47 45 00 45 45 47 00 45 47 45 00 47 47 47 45 47 47 47 45 47 00 45 00 00 45 47 00 45 47 45 47 00 47 47 45 47 45 47 47 45 47 47 00 47 47 45 00 47 47 00 45 47 47 00 45 00 45 00 45 00 47 47 47 47 47 47 47 00 47 47 47 47 47 47 00 47 47 47 00 47 47 47 45 47 47 45 47 45 47 00 47 47 47 45 47 45 47 47 47 47 47 47 47 00 47 47 45 00 45 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 47 47 00 47 00 47 45 47 47 45 47 47 47 47 00 45 00 45 47 47 00 00 47 47 47 47 47 45 47 45 47 47 45 00 00 45 47 47 45 47 45 47 47 45 47 45 45 47 47 45 00 47 47 47 45 00 47 47 47 45 47 00 00 47 45 47 45 47 47 45 47 47 47 47 47 47 00 45 47 47 45 47 47 00 47 47 47 47 47 45 47 00 45 00 47 47 47 00 47 45 47 00 47 00 47 00 47 47 00 47 47 47 47 47 47 47 47 47 47 45 00 45 47 00 47 00 47 47 47 45 47 47 00 47 45 47 45 00 47 45 00 47 47 45 47 45 00 47 45 45 47 47 45 47 47 47 00 47 47 47 47 47 00 00 47 47 47 47 47 47 47 47 47 47 47 47 00 47 00 47 47 47 45 00 47 47 47 00 47 00 47 45 47 47 47 00 00 47 00 47 47 47 47 45 47 45 47 47 45 00 47 00 47 00 45 47 45 00 47 45 47 47 47 45 47 45 00 47 45 47 45 47 47 47 47 45 47 47 47 47 00 45 47 47 47 00 47 47 47 47 00 47 47 47 47 47 47 00 00 47 00 47 45 47 00 47 47 47 47 47 47 00 00 00 00 47 47 47 47 45 00 47 45 45 47 45 47 47 45 00 47 47 47 45 47 45 47 47 45 47 47 47 47 00 47 00 47 47 00 45 47 45 00 47 47 00 45 47 45 47 00 00 47 00 47 45 00 45 00 47 45 47 00 00 45 47 47 47 47 45 47 00 47 00
*/
