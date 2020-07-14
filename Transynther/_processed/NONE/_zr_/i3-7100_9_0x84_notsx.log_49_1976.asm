.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1736e, %rsi
lea addresses_UC_ht+0x15c1e, %rdi
nop
nop
nop
sub %r11, %r11
mov $30, %rcx
rep movsl
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x34de, %r13
nop
nop
nop
nop
nop
cmp %r10, %r10
movb (%r13), %cl
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x13f5e, %rsi
nop
nop
and $8784, %r9
movb (%rsi), %r11b
nop
nop
nop
cmp $3292, %r13
lea addresses_UC_ht+0x1d5be, %r10
nop
nop
nop
cmp %r13, %r13
movb $0x61, (%r10)
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0xb7de, %r9
nop
nop
nop
cmp %r11, %r11
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
and $53528, %r9
lea addresses_D_ht+0x13de, %r13
add %r9, %r9
movw $0x6162, (%r13)
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x1d5de, %rsi
lea addresses_WC_ht+0xa94e, %rdi
clflush (%rdi)
add %rax, %rax
mov $67, %rcx
rep movsl
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xef5e, %rdi
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0xdbde, %r11
nop
cmp $8954, %rsi
movb (%r11), %al
nop
nop
and $1710, %r13
lea addresses_WT_ht+0x4e82, %r11
nop
nop
nop
nop
nop
dec %rdi
movw $0x6162, (%r11)
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x143de, %r13
nop
nop
nop
nop
and %rcx, %rcx
mov (%r13), %r9d
nop
nop
nop
nop
sub $17792, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_WT+0x135de, %r12
nop
inc %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movaps %xmm4, (%r12)
nop
nop
nop
xor $27608, %rdx

// Store
mov $0xc0c5f00000003de, %r13
clflush (%r13)
nop
nop
sub $51537, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movaps %xmm7, (%r13)
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_WC+0xd176, %rbx
xor %rbp, %rbp
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
add $17414, %r13

// Faulty Load
lea addresses_A+0x157de, %rbx
nop
nop
sub $60259, %rax
movb (%rbx), %r13b
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 1, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
