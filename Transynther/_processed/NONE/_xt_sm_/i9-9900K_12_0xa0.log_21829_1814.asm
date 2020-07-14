.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x19ef0, %rsi
lea addresses_A_ht+0x1edc0, %rdi
nop
nop
nop
nop
inc %r14
mov $97, %rcx
rep movsw
nop
nop
nop
nop
inc %r11
lea addresses_A_ht+0x2000, %rbx
nop
nop
nop
nop
nop
sub %rdx, %rdx
movb (%rbx), %r11b
nop
nop
nop
nop
xor $33319, %r11
lea addresses_A_ht+0xee00, %rdx
nop
nop
nop
inc %rbx
mov (%rdx), %esi
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x1d800, %r14
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r14)
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x11400, %r14
nop
nop
nop
xor $3183, %rbx
movl $0x61626364, (%r14)
nop
nop
nop
sub $11481, %r11
lea addresses_WT_ht+0x9940, %rdi
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rdi)
nop
add %r14, %r14
lea addresses_normal_ht+0x9980, %r11
nop
dec %rbx
mov (%r11), %rdx
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x12200, %rsi
lea addresses_WT_ht+0x1c2c0, %rdi
nop
nop
nop
nop
sub $59853, %r14
mov $84, %rcx
rep movsq
and %r11, %r11
lea addresses_A_ht+0xac00, %rsi
lea addresses_UC_ht+0x19000, %rdi
nop
nop
nop
sub $41673, %r12
mov $8, %rcx
rep movsb
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x13a59, %rsi
lea addresses_A_ht+0x1c900, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $123, %rcx
rep movsq
nop
nop
and $44430, %r14
lea addresses_A_ht+0x17d00, %rdx
sub $11444, %r12
mov $0x6162636465666768, %r14
movq %r14, (%rdx)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x4c00, %rdi
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rdi)
nop
add $21249, %r12
lea addresses_A_ht+0xa800, %rdx
nop
xor %r12, %r12
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
xor %r11, %r11
lea addresses_WT_ht+0x19840, %rdi
nop
nop
nop
dec %r14
movl $0x61626364, (%rdi)
cmp $44727, %rdx
lea addresses_UC_ht+0x1a400, %rdx
nop
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
inc %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rbx
push %rdx

// Load
lea addresses_UC+0x19129, %r11
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r11), %r10d
nop
add %r9, %r9

// Load
lea addresses_WC+0x4400, %rdx
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rdx), %r11d
nop
nop
sub $46943, %r11

// Store
lea addresses_A+0xca00, %rdx
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
cmp $41084, %rbp

// Store
mov $0x750, %r11
nop
nop
nop
nop
sub $56889, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
and %r11, %r11

// Store
lea addresses_RW+0x1e400, %r10
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%r10)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_RW+0x1e400, %rbp
nop
xor %rdx, %rdx
mov (%rbp), %r10d
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
