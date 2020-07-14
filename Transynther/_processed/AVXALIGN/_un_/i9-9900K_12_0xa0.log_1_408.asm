.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbx
push %rcx
lea addresses_WT_ht+0x7b82, %rcx
nop
sub %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
dec %r11
pop %rcx
pop %rbx
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x709a, %rsi
lea addresses_US+0x1129a, %rdi
nop
xor $41821, %r9
mov $118, %rcx
rep movsl
nop
nop
nop
inc %rsi

// Store
lea addresses_WC+0x959a, %r9
nop
nop
nop
nop
add %r12, %r12
movl $0x51525354, (%r9)
nop
nop
nop
nop
cmp $30840, %r9

// Store
lea addresses_D+0x57da, %rdi
nop
nop
nop
dec %r9
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
add $42452, %r9

// Store
lea addresses_RW+0x1399a, %rdi
cmp $54661, %r12
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
cmp %rdi, %rdi

// Load
lea addresses_RW+0xf99a, %rcx
nop
nop
nop
add %r10, %r10
mov (%rcx), %esi
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_RW+0xf99a, %r10
dec %rdi
movntdqa (%r10), %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'9e': 1}
9e
*/
