.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbp
push %rdi
lea addresses_WC_ht+0x1a4ef, %rbp
nop
nop
nop
sub %rdi, %rdi
mov (%rbp), %r13d
nop
sub $10273, %r12
pop %rdi
pop %rbp
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0x6d4f, %r14
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_A+0x1c946, %rcx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%rcx)
xor $26692, %r14

// Store
mov $0x14f, %rsi
nop
nop
nop
nop
xor $18435, %rax
movl $0x51525354, (%rsi)
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_PSE+0x1377c, %rax
nop
nop
nop
nop
sub $31776, %rsi
movl $0x51525354, (%rax)
nop
nop
nop
nop
sub %rax, %rax

// Load
lea addresses_WT+0x80a7, %r12
nop
cmp $10065, %r8
movb (%r12), %al
add $3603, %rax

// Store
lea addresses_WC+0x454f, %r14
nop
nop
nop
nop
nop
sub $8728, %r8
movb $0x51, (%r14)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_normal+0x1ed4f, %rsi
nop
nop
add $28189, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rsi)
nop
nop
cmp $15464, %rbx

// Store
lea addresses_A+0xab4f, %r14
nop
nop
nop
nop
nop
inc %r8
movb $0x51, (%r14)
and %r12, %r12

// Store
lea addresses_normal+0x1994f, %r12
nop
nop
nop
nop
and $32846, %rcx
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_PSE+0x6d4f, %rax
nop
and $5897, %rcx
mov (%rax), %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'58': 11}
58 58 58 58 58 58 58 58 58 58 58
*/
