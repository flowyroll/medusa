.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4879, %rsi
lea addresses_WT_ht+0x17ad9, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $76, %rcx
rep movsq
and %r11, %r11
lea addresses_A_ht+0x18171, %rsi
lea addresses_D_ht+0x124d9, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $105, %rcx
rep movsl
nop
nop
xor $61411, %rsi
lea addresses_normal_ht+0x9f05, %rcx
nop
nop
xor $2972, %r13
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r12
nop
and $58979, %r12
lea addresses_D_ht+0x19c29, %rsi
lea addresses_D_ht+0x118d9, %rdi
nop
nop
inc %r10
mov $55, %rcx
rep movsl
nop
inc %r15
lea addresses_D_ht+0xa0d9, %rsi
lea addresses_normal_ht+0x26d9, %rdi
nop
add %r11, %r11
mov $22, %rcx
rep movsl
add %r15, %r15
lea addresses_UC_ht+0x29c9, %rsi
lea addresses_D_ht+0xe4d9, %rdi
nop
nop
nop
nop
nop
sub $17489, %r13
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x10849, %rdi
and $62132, %r10
movw $0x6162, (%rdi)
nop
inc %rcx
lea addresses_D_ht+0x1bad9, %rcx
nop
and $33033, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
xor $38393, %rcx
lea addresses_D_ht+0xd9, %r11
nop
nop
nop
nop
and $34725, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_normal+0xa599, %r13
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x51, (%r13)
nop
nop
inc %r15

// Store
lea addresses_PSE+0x80d9, %rbx
nop
xor $32329, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movaps %xmm7, (%rbx)
nop
nop
nop
nop
nop
and $48519, %rbp

// Store
lea addresses_UC+0x1e4d9, %rbp
nop
nop
nop
nop
inc %r9
movb $0x51, (%rbp)
nop
xor %r9, %r9

// Store
lea addresses_RW+0xccc9, %r13
nop
nop
nop
cmp $60244, %r9
movl $0x51525354, (%r13)
nop
add $47945, %rbp

// Faulty Load
lea addresses_PSE+0x80d9, %rbx
nop
add $23377, %r14
mov (%rbx), %ecx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
