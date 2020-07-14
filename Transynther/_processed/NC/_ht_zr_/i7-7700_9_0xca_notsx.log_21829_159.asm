.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x14a02, %r8
nop
nop
nop
and %rbx, %rbx
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x15262, %r12
clflush (%r12)
nop
nop
nop
cmp $35584, %rdx
mov (%r12), %r13
dec %rbx
lea addresses_WC_ht+0x8b62, %rbx
nop
nop
nop
nop
add $37908, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1e62, %rsi
lea addresses_UC_ht+0x17634, %rdi
xor $38682, %rbx
mov $81, %rcx
rep movsq
cmp $52743, %rbx
lea addresses_WT_ht+0x1936a, %r13
nop
nop
nop
nop
nop
xor $63577, %rbx
mov $0x6162636465666768, %r12
movq %r12, (%r13)
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x1c462, %rsi
lea addresses_WC_ht+0x19962, %rdi
nop
nop
nop
add %rbx, %rbx
mov $113, %rcx
rep movsq
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x16562, %rdx
nop
dec %r12
movl $0x61626364, (%rdx)
nop
and %rdi, %rdi
lea addresses_WT_ht+0xc062, %rsi
lea addresses_WC_ht+0x4c72, %rdi
lfence
mov $118, %rcx
rep movsq
nop
nop
cmp $36834, %r8
lea addresses_WC_ht+0xd362, %rsi
lea addresses_WT_ht+0x1d3c2, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $2, %rcx
rep movsq
nop
xor $58438, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rbx

// Load
mov $0xe82, %rbp
clflush (%rbp)
nop
nop
nop
xor $25802, %r8
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_RW+0x9b62, %rbx
nop
nop
nop
add %r15, %r15
mov (%rbx), %r12w
nop
cmp %r8, %r8

// Store
lea addresses_US+0x15662, %r10
nop
nop
nop
nop
nop
and $16380, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
mov $0x63a6f30000000b62, %r15
nop
nop
nop
nop
nop
xor %r12, %r12
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 18367, '49': 3462}
49 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 49 00 49 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 49 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 49 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 49 00 49 00 49 00 00 00 00 49 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 49 00 00 49 00 49 00 00 00 00 49 00 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 49 00 49 00 00 49 00 49 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 49 00 00 00 00 49 49 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 49 00 00 49 00 00 00 00 49 00 00 00 00 49 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 49 00 49 00 00 49 00 49 00 00 49 00 00 49 00 49 00 00 00 00 49 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00
*/
