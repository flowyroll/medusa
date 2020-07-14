.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1bdc6, %r13
nop
add %r11, %r11
movb $0x61, (%r13)
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x151c6, %rsi
lea addresses_A_ht+0x10036, %rdi
nop
inc %r13
mov $9, %rcx
rep movsl
nop
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0x4fe6, %rsi
lea addresses_D_ht+0x10684, %rdi
nop
inc %r13
mov $104, %rcx
rep movsl
and $55465, %r13
lea addresses_WT_ht+0xbf46, %r13
nop
nop
nop
xor $31937, %rbx
movl $0x61626364, (%r13)
nop
xor $43737, %rcx
lea addresses_WC_ht+0x13ac6, %rsi
lea addresses_UC_ht+0x1bfc6, %rdi
nop
nop
nop
cmp $40892, %r9
mov $10, %rcx
rep movsw
nop
nop
nop
nop
and $36271, %r13
lea addresses_A_ht+0x145c6, %rsi
lea addresses_normal_ht+0xaef6, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $100, %rcx
rep movsl
nop
sub $50253, %r11
lea addresses_normal_ht+0x4f26, %r13
nop
nop
xor $13038, %r9
movb (%r13), %r15b
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x1df3e, %r9
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%r9), %rbx
nop
nop
nop
nop
sub $10110, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x16f46, %rcx
nop
sub $43370, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_WT+0xbfe6, %rbp
sub %r15, %r15
movl $0x51525354, (%rbp)
nop
xor $24041, %r12

// Store
lea addresses_RW+0x94c6, %r15
xor %rcx, %rcx
movw $0x5152, (%r15)
nop
xor %rsi, %rsi

// Store
lea addresses_D+0x12a9e, %r12
nop
nop
nop
xor $7781, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
nop
dec %r15

// Store
lea addresses_A+0xe00a, %rsi
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
nop
nop
add $912, %rcx

// Store
lea addresses_PSE+0x66c6, %rdx
clflush (%rdx)
nop
sub $20753, %rbp
movl $0x51525354, (%rdx)
and $62268, %r12

// Store
lea addresses_US+0x138c6, %r15
nop
nop
nop
nop
nop
add %rsi, %rsi
movl $0x51525354, (%r15)
nop
nop
and $39436, %rsi

// Store
lea addresses_normal+0x2e53, %r12
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%r12)
nop
nop
add %rax, %rax

// Store
lea addresses_normal+0x8ac6, %rbp
nop
nop
nop
cmp $33087, %rcx
movb $0x51, (%rbp)
nop
add $41941, %rax

// Faulty Load
lea addresses_WC+0x16ac6, %rcx
nop
inc %rdx
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'51': 12378}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
