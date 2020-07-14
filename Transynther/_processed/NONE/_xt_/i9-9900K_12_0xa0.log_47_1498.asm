.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x5d93, %rsi
lea addresses_D_ht+0x6593, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $118, %rcx
rep movsb
nop
sub %r12, %r12
lea addresses_WC_ht+0xde93, %rsi
lea addresses_D_ht+0x1b273, %rdi
nop
nop
nop
nop
cmp $48046, %rbp
mov $11, %rcx
rep movsl
nop
nop
nop
nop
cmp $18184, %rdi
lea addresses_D_ht+0x18c93, %r12
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r12), %ebp
and %r12, %r12
lea addresses_UC_ht+0xf713, %rsi
lea addresses_normal_ht+0x10793, %rdi
nop
nop
and %rdx, %rdx
mov $7, %rcx
rep movsw
nop
nop
nop
sub $52344, %rsi
lea addresses_normal_ht+0x17493, %rsi
lea addresses_A_ht+0xc553, %rdi
nop
nop
nop
nop
nop
cmp $65510, %rdx
mov $62, %rcx
rep movsl
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x13e39, %r12
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r12), %r13d
nop
sub %rdi, %rdi
lea addresses_D_ht+0x8693, %rsi
lea addresses_WT_ht+0x12b93, %rdi
sub $19093, %rax
mov $106, %rcx
rep movsw
nop
nop
nop
nop
and $39146, %r13
lea addresses_WC_ht+0xba93, %rsi
add %rcx, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
sub $49245, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x111e5, %rsi
lea addresses_WC+0x13c93, %rdi
nop
nop
nop
dec %rdx
mov $66, %rcx
rep movsw
nop
nop
nop
nop
add $63854, %rdi

// Faulty Load
lea addresses_normal+0x11e93, %rbx
nop
nop
nop
nop
add $46875, %r13
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'34': 47}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
