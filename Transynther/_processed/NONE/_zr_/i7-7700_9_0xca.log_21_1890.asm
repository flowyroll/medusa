.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x178fb, %r8
nop
inc %rbp
movw $0x6162, (%r8)
nop
nop
nop
cmp $54457, %r9
lea addresses_UC_ht+0xccb3, %rsi
lea addresses_UC_ht+0x67d3, %rdi
add $46505, %r13
mov $35, %rcx
rep movsw
dec %r13
lea addresses_A_ht+0x1e93, %rcx
nop
nop
xor $8450, %r9
movb (%rcx), %r8b
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x11565, %rcx
nop
nop
nop
cmp %r8, %r8
mov (%rcx), %di
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x14a93, %rdi
nop
nop
nop
nop
xor %r9, %r9
movw $0x6162, (%rdi)
xor $65365, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_RW+0x125d9, %r10
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r10)
xor $23961, %rax

// Store
lea addresses_WT+0x3bf3, %r14
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%r14)
xor $39573, %r14

// Store
lea addresses_WC+0xd77b, %rcx
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_PSE+0xef53, %rbp
nop
nop
dec %r14
movw $0x5152, (%rbp)
nop
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_WC+0x19353, %r14
nop
nop
nop
nop
cmp %r13, %r13
mov (%r14), %r9w
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'00': 21}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
