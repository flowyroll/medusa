.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13797, %rsi
lea addresses_D_ht+0x17597, %rdi
nop
nop
nop
dec %r8
mov $40, %rcx
rep movsq
nop
xor $29966, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rax
push %rdi

// Store
lea addresses_D+0x17507, %rax
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movaps %xmm7, (%rax)
nop
nop
nop
inc %r13

// Load
lea addresses_RW+0xcf97, %rax
nop
nop
nop
nop
nop
xor %r11, %r11
mov (%rax), %r14d
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_D+0x1f20b, %r13
nop
nop
cmp $59853, %r9
movl $0x51525354, (%r13)
nop
nop
add $15067, %r14

// Load
lea addresses_WC+0x15b97, %r13
nop
nop
and %r9, %r9
mov (%r13), %r11w
nop
xor %rax, %rax

// Store
lea addresses_WT+0x17377, %rdi
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_PSE+0x1d497, %rax
nop
nop
dec %r14
movw $0x5152, (%rax)
cmp %rax, %rax

// Faulty Load
lea addresses_RW+0xcf97, %rdi
nop
nop
nop
add %r10, %r10
mov (%rdi), %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'32': 86}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
