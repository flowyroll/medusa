.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1d58f, %r12
nop
nop
nop
nop
nop
cmp $6985, %r10
movb $0x51, (%r12)
nop
and %rax, %rax

// REPMOV
lea addresses_A+0x1be4f, %rsi
lea addresses_WT+0x650f, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r10, %r10
mov $104, %rcx
rep movsw
nop
nop
nop
cmp $35269, %rcx

// Store
lea addresses_US+0xe1df, %r10
clflush (%r10)
nop
nop
nop
cmp $9129, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r10)
and $28413, %r12

// Store
lea addresses_RW+0xe5f, %rdi
nop
nop
sub %rcx, %rcx
movw $0x5152, (%rdi)
add $46299, %rdi

// Store
lea addresses_D+0xaddf, %r10
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r10)
nop
nop
and %rdi, %rdi

// Store
lea addresses_A+0x147df, %rcx
nop
nop
nop
nop
nop
dec %r12
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
inc %rax

// Load
lea addresses_WT+0x17ddf, %rsi
clflush (%rsi)
nop
cmp %rcx, %rcx
mov (%rsi), %r12d
nop
nop
nop
cmp $30843, %rcx

// Faulty Load
lea addresses_US+0xe1df, %r12
nop
dec %rbp
movb (%r12), %r10b
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': True}}
{'src': {'type': 'addresses_A', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 2}
58 58
*/
