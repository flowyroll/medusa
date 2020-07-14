.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x10673, %r11
clflush (%r11)
nop
nop
nop
nop
and %r13, %r13
movups (%r11), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
and %r13, %r13

// REPMOV
lea addresses_normal+0x19154, %rsi
lea addresses_normal+0x1ced4, %rdi
nop
nop
nop
add %rdx, %rdx
mov $50, %rcx
rep movsb
cmp $45660, %rcx

// Load
lea addresses_PSE+0x134e4, %rbx
nop
and %rdx, %rdx
mov (%rbx), %r13d
nop
nop
nop
nop
nop
inc %rcx

// Store
mov $0x2e9c6e00000002b4, %rdx
nop
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// REPMOV
lea addresses_WC+0x17454, %rsi
lea addresses_RW+0x1e454, %rdi
clflush (%rsi)
nop
nop
nop
add $9667, %r13
mov $109, %rcx
rep movsl
nop
add %rdi, %rdi

// REPMOV
lea addresses_WT+0x10b54, %rsi
mov $0x6d89a20000000654, %rdi
xor $4698, %r11
mov $89, %rcx
rep movsq
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_A+0x773, %rcx
nop
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%rcx)

// Exception!!!
xor %rdi, %rdi
div %rdi
nop
nop
add %rdx, %rdx

// Store
mov $0xc54, %rsi
nop
nop
nop
sub $14739, %rcx
movl $0x51525354, (%rsi)
xor %r13, %r13

// Store
lea addresses_US+0x15a54, %rcx
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rcx)
nop
xor $47237, %r13

// REPMOV
lea addresses_UC+0x1c454, %rsi
lea addresses_A+0x22f4, %rdi
nop
nop
inc %r11
mov $27, %rcx
rep movsb
cmp %rbx, %rbx

// Store
lea addresses_WC+0x1eef4, %r11
nop
nop
nop
nop
inc %r13
movb $0x51, (%r11)
nop
nop
add $22488, %rdx

// Store
lea addresses_D+0xdc54, %r13
nop
inc %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
dec %r11

// Faulty Load
lea addresses_RW+0x1e454, %rdi
nop
sub $54471, %r14
mov (%rdi), %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_RW'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'8b': 1}
8b
*/
