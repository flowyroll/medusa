.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x8c7a, %r15
nop
and %r13, %r13
mov (%r15), %bx
add %r13, %r13
lea addresses_D_ht+0xcbfa, %r12
nop
nop
add $7072, %r9
movb $0x61, (%r12)
nop
nop
nop
dec %r15
lea addresses_WC_ht+0x4c7a, %rsi
lea addresses_A_ht+0xcc7a, %rdi
clflush (%rsi)
nop
nop
nop
add $25088, %rbx
mov $0, %rcx
rep movsw
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x18dfa, %rsi
lea addresses_WT_ht+0x8f7a, %rdi
nop
nop
nop
sub %r15, %r15
mov $62, %rcx
rep movsq
nop
add $62795, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_US+0x1cfec, %rsi
lea addresses_US+0x1e6fa, %rdi
nop
nop
nop
nop
nop
sub $3477, %rdx
mov $0, %rcx
rep movsb
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_UC+0x5fca, %r15
clflush (%r15)
nop
nop
add $17002, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x1dcc0, %rcx
xor $37361, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
add %rsi, %rsi

// Store
lea addresses_normal+0x5bd2, %rsi
nop
sub $28792, %rdi
movl $0x51525354, (%rsi)
sub %rcx, %rcx

// Store
lea addresses_PSE+0x13bb6, %rcx
nop
nop
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%rcx)
add $13542, %rdi

// Faulty Load
lea addresses_normal+0x15c7a, %rcx
nop
nop
nop
nop
nop
inc %rdx
movb (%rcx), %r13b
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_US', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_US', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'34': 1}
34
*/
