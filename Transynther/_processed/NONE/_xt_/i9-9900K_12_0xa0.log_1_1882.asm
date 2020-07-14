.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1c966, %rsi
lea addresses_WT_ht+0x42f6, %rdi
sub %rdx, %rdx
mov $56, %rcx
rep movsw
cmp $28123, %r13
lea addresses_WC_ht+0x1226, %r13
nop
xor %rdx, %rdx
movl $0x61626364, (%r13)
nop
nop
nop
nop
and $20811, %rdi
lea addresses_D_ht+0x9e26, %rcx
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
and $36466, %rdx
lea addresses_D_ht+0x1d0e6, %rsi
lea addresses_WC_ht+0x13392, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $75, %rcx
rep movsw
nop
nop
nop
nop
nop
add $49325, %r13
lea addresses_WC_ht+0x1bde6, %rsi
lea addresses_WC_ht+0x4e26, %rdi
nop
nop
nop
nop
add $21003, %r10
mov $56, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x5592, %rsi
lea addresses_WC+0xe626, %rdi
add $6437, %rbx
mov $4, %rcx
rep movsl
nop
nop
cmp $23699, %rdi

// Load
lea addresses_US+0x11af6, %rdi
nop
and %r9, %r9
movb (%rdi), %r13b
nop
nop
nop
xor $47001, %rcx

// Store
mov $0x5ad5090000000626, %rcx
clflush (%rcx)
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
and $18248, %rsi

// Load
lea addresses_normal+0xea26, %r9
nop
nop
nop
nop
nop
dec %r12
movntdqa (%r9), %xmm5
vpextrq $1, %xmm5, %rdi
nop
sub $8997, %rcx

// Faulty Load
lea addresses_normal+0xea26, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov (%rdi), %r13d
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WC'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'34': 1}
34
*/
