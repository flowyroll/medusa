.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16e8a, %rbx
nop
nop
nop
nop
nop
xor $49320, %r15
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
nop
add $727, %r13
lea addresses_A_ht+0x8e8a, %r12
nop
nop
nop
nop
and %r9, %r9
mov (%r12), %r14d
add %r13, %r13
lea addresses_WC_ht+0x19e0a, %rbx
nop
nop
add %r11, %r11
mov (%rbx), %r15w
nop
nop
xor $63195, %r14
lea addresses_WT_ht+0x1928a, %rsi
lea addresses_WC_ht+0x19ada, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $52293, %r14
mov $117, %rcx
rep movsw
dec %rcx
lea addresses_normal_ht+0x19aca, %rbx
nop
add %r15, %r15
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
nop
inc %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x1640a, %r9
and $46564, %r12
mov (%r9), %rsi
nop
sub $19112, %r9

// REPMOV
lea addresses_RW+0x6e0a, %rsi
lea addresses_PSE+0x1e30a, %rdi
xor %r8, %r8
mov $68, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi

// REPMOV
lea addresses_US+0x1d6c4, %rsi
lea addresses_RW+0x1e00a, %rdi
and %r12, %r12
mov $53, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rsi, %rsi

// REPMOV
lea addresses_A+0x1ebea, %rsi
lea addresses_UC+0x1cfda, %rdi
nop
nop
and %r9, %r9
mov $100, %rcx
rep movsq
nop
nop
and %rbp, %rbp

// REPMOV
mov $0x24a, %rsi
lea addresses_A+0xb00a, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %rbp, %rbp
mov $91, %rcx
rep movsb
nop
nop
nop
nop
nop
add $10408, %rsi

// Store
lea addresses_WC+0x1380a, %r9
xor $60831, %r15
mov $0x5152535455565758, %r12
movq %r12, (%r9)
nop
xor $63760, %rcx

// Store
lea addresses_WC+0x1900a, %r8
nop
nop
nop
nop
xor $26059, %r9
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_PSE+0x2b02, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor $35105, %rbp

// REPMOV
lea addresses_D+0xc00a, %rsi
lea addresses_WC+0x570a, %rdi
nop
and $28389, %rbp
mov $16, %rcx
rep movsq
nop
nop
nop
nop
nop
add $12203, %r15

// REPMOV
lea addresses_normal+0x180a, %rsi
lea addresses_RW+0x16b0a, %rdi
nop
nop
nop
nop
nop
add $39697, %r9
mov $35, %rcx
rep movsq
nop
nop
nop
add %r9, %r9

// Load
lea addresses_normal+0xe56a, %rdi
xor %r8, %r8
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_US+0xb9c6, %rdi
nop
xor $29956, %r12
movl $0x51525354, (%rdi)
add %rcx, %rcx

// REPMOV
lea addresses_WC+0x1900a, %rsi
mov $0x68a, %rdi
nop
nop
nop
nop
nop
add $22102, %r9
mov $45, %rcx
rep movsq
nop
nop
add $28481, %r8

// Faulty Load
lea addresses_WC+0x1900a, %r12
nop
nop
nop
nop
nop
sub %r8, %r8
movb (%r12), %cl
lea oracles, %rcx
and $0xff, %rcx
shlq $12, %rcx
mov (%rcx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_PSE'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_US'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_RW'}}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 2}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_RW'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'ab': 1}
ab
*/
