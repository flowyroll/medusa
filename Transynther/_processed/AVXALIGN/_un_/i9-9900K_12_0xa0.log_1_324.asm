.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbx
lea addresses_A_ht+0x5a41, %r15
add $58999, %r14
mov (%r15), %r11w
nop
nop
nop
nop
xor %rbx, %rbx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0x180ea, %rbp
nop
nop
nop
nop
cmp $57782, %rcx
movw $0x5152, (%rbp)
xor $53357, %r10

// Store
lea addresses_D+0x7a2a, %rax
add $60675, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
and $23575, %rsi

// Store
lea addresses_normal+0x1470a, %rsi
nop
nop
nop
nop
nop
and $63857, %rax
movb $0x51, (%rsi)
nop
nop
nop
sub $870, %rsi

// Store
lea addresses_WT+0x193c, %rax
nop
nop
xor $33372, %r11
movl $0x51525354, (%rax)
nop
nop
nop
nop
sub %rsi, %rsi

// REPMOV
lea addresses_D+0x1d2, %rsi
lea addresses_WT+0x1ab2a, %rdi
nop
cmp $19451, %r10
mov $104, %rcx
rep movsq
nop
nop
sub $46011, %rsi

// Store
lea addresses_RW+0x10d2a, %rsi
nop
and $3841, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rsi)
nop
add %rbp, %rbp

// Store
lea addresses_US+0x14124, %rdi
nop
nop
nop
nop
add $12236, %r11
movl $0x51525354, (%rdi)
nop
dec %rdi

// Store
lea addresses_normal+0x192e8, %rdi
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%rdi)
nop
nop
nop
dec %r10

// Store
lea addresses_US+0xa2e5, %rax
nop
inc %rdi
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
nop
sub $35031, %rbp

// REPMOV
lea addresses_PSE+0x17d2a, %rsi
lea addresses_WC+0x1612a, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $124, %rcx
rep movsb
xor $56603, %rcx

// Store
lea addresses_UC+0xbc4e, %rdi
nop
nop
nop
and %rax, %rax
movb $0x51, (%rdi)
nop
and %rbp, %rbp

// Load
mov $0x5ba, %rbp
xor %rax, %rax
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
and %r11, %r11

// Load
lea addresses_D+0x15b2a, %r12
nop
sub %rbp, %rbp
movaps (%r12), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
sub $43835, %rsi

// Faulty Load
lea addresses_RW+0x352a, %r10
nop
nop
nop
add %rsi, %rsi
mov (%r10), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': True, 'size': 8}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'c2': 1}
c2
*/
