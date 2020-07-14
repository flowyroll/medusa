.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xd1a2, %rdx
nop
add $12629, %r9
mov (%rdx), %rdi
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x6e5c, %r11
add $40507, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
inc %rcx
lea addresses_WT_ht+0x12d5c, %rsi
lea addresses_WT_ht+0x16cc, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $83, %rcx
rep movsb
nop
nop
nop
and $50249, %r10
lea addresses_UC_ht+0x1b15c, %r10
nop
nop
add $21227, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x48fe, %r9
nop
nop
and %rsi, %rsi
movw $0x6162, (%r9)
inc %rsi
lea addresses_WT_ht+0x1905c, %rsi
nop
nop
nop
nop
xor $9647, %r10
mov (%rsi), %r9
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1aa9c, %rsi
nop
nop
nop
and $33292, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
sub $59011, %rdx
lea addresses_WC_ht+0x17f44, %r11
nop
nop
nop
nop
nop
dec %rdx
movb (%r11), %r10b
nop
nop
nop
nop
nop
and $55387, %rdx
lea addresses_D_ht+0x1bc5c, %rdx
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
xor $34008, %r11
lea addresses_A_ht+0xa7dc, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
xor $16954, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rdx
push %rsi

// Store
lea addresses_RW+0xf85c, %rsi
xor %r15, %r15
movl $0x51525354, (%rsi)
nop
sub %r8, %r8

// Store
lea addresses_normal+0xf21c, %r14
nop
nop
nop
nop
nop
sub $35934, %r12
movw $0x5152, (%r14)
nop
and $24804, %rax

// Store
lea addresses_WT+0x1226, %r8
nop
add $27374, %rax
movb $0x51, (%r8)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_UC+0xdd5c, %r8
clflush (%r8)
cmp $28408, %rax
movb $0x51, (%r8)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_A+0x18e9c, %rdx
nop
nop
nop
nop
add $50021, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
xor $55716, %rdx

// Faulty Load
lea addresses_A+0x8d5c, %rsi
nop
nop
and $17527, %r14
mov (%rsi), %r8d
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'51': 324}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
