.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10008, %rsi
lea addresses_WT_ht+0x9018, %rdi
sub %r14, %r14
mov $59, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_normal_ht+0xdca6, %r11
nop
nop
nop
add $57703, %r9
mov (%r11), %di
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1eaac, %r11
nop
nop
nop
nop
mfence
movups (%r11), %xmm1
vpextrq $0, %xmm1, %rsi
and %r9, %r9
lea addresses_normal_ht+0x9558, %r11
nop
sub %r9, %r9
movb (%r11), %cl
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x1c9dc, %r9
nop
nop
and $15574, %r12
movw $0x6162, (%r9)
nop
nop
nop
nop
xor $9588, %rsi
lea addresses_A_ht+0x12ed4, %r14
nop
nop
nop
nop
nop
add $36337, %r11
mov (%r14), %ecx
nop
nop
and %r12, %r12
lea addresses_A_ht+0x16998, %rsi
lea addresses_UC_ht+0xd438, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x10fdc, %r15
nop
nop
nop
nop
add $19969, %rsi
mov (%r15), %r14d
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rdi
push %rsi

// Store
lea addresses_A+0x8df8, %rsi
nop
nop
nop
nop
add $16143, %r8
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_UC+0x1b198, %rdi
dec %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
and $25, %r13

// Store
lea addresses_UC+0x5018, %r8
nop
nop
xor $13686, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r8)
nop
add $5066, %r15

// Store
lea addresses_US+0x16218, %r14
nop
xor $9064, %r8
movl $0x51525354, (%r14)
nop
nop
cmp %r14, %r14

// Store
lea addresses_WC+0xeccb, %r12
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%r12)
nop
dec %r15

// Faulty Load
lea addresses_normal+0x13818, %r8
nop
nop
nop
nop
inc %r15
movups (%r8), %xmm7
vpextrq $0, %xmm7, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'34': 35}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
