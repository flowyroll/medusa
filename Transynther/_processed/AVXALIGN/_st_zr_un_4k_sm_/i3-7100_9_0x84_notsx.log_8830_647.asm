.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x16d75, %rcx
nop
cmp $21666, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0xe12, %rsi
lea addresses_UC_ht+0xee05, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r9, %r9
mov $75, %rcx
rep movsb
nop
and $27791, %rbp
lea addresses_D_ht+0x17ed5, %r9
nop
and $30660, %r15
mov (%r9), %dx
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x4e0d, %rbp
nop
nop
nop
nop
xor %r9, %r9
movb (%rbp), %dl
nop
nop
and $32253, %rdx
lea addresses_D_ht+0x12a0d, %rsi
lea addresses_normal_ht+0x520d, %rdi
nop
nop
xor %rdx, %rdx
mov $31, %rcx
rep movsl
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x5cad, %rsi
lea addresses_WT_ht+0xe0bd, %rdi
nop
nop
nop
nop
add $39468, %rdx
mov $48, %rcx
rep movsl
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
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
lea addresses_WT+0x1578d, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
and $34706, %r14
movw $0x5152, (%rdx)
nop
xor $21608, %r15

// Store
lea addresses_WT+0x1560d, %r8
nop
cmp $14995, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r8)
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x143ad, %rdx
mfence
movl $0x51525354, (%rdx)
nop
xor $59398, %rdx

// Store
lea addresses_WC+0x1ee0d, %r14
nop
sub $30442, %rax
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_A+0x1188c, %rsi
nop
nop
nop
nop
xor %r15, %r15
movl $0x51525354, (%rsi)
nop
nop
nop
nop
add $62448, %r14

// Store
lea addresses_UC+0xaa1, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor %r15, %r15
movw $0x5152, (%r8)
nop
nop
nop
nop
sub $53203, %rax

// Store
lea addresses_US+0x1d20d, %r12
clflush (%r12)
xor %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r12)
add $20193, %rsi

// Store
lea addresses_D+0xf60d, %r15
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
add $19221, %r8

// Load
lea addresses_WC+0x5a0d, %r12
nop
nop
nop
nop
sub %r14, %r14
vmovups (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
sub %r12, %r12

// Store
lea addresses_WT+0xc60d, %r12
nop
nop
xor $13651, %rsi
movb $0x51, (%r12)
and $29541, %rsi

// Faulty Load
lea addresses_WT+0x1560d, %rsi
dec %rdx
vmovntdqa (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
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
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'00': 276, '51': 684, '58': 7868, 'd0': 2}
51 58 58 58 58 58 58 58 51 58 58 58 51 58 58 51 51 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 51 58 58 58 58 58 58 51 00 58 58 58 58 51 58 51 51 58 58 58 58 58 58 51 58 58 00 58 51 58 51 00 58 51 58 58 58 58 58 58 58 51 58 58 58 58 58 51 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 51 51 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 00 00 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 51 58 58 58 58 58 51 51 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 51 00 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 51 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 00 58 58 51 58 58 58 00 58 58 58 58 00 51 58 51 51 00 58 58 51 58 58 58 58 58 51 58 58 51 58 51 58 58 58 51 51 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 51 58 58 58 58 58 58 00 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 51 58 58 58 58 58 58 00 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 51 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 51 58 58 58 58 58 51 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 00 58 51 58 58 58 58 58 58 58 51 58 58 00 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 51 58 58 51 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 51 58 51 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 51 58 58 00 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 00 58 51 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 51 51 58 58 00 58 58 58 58 58 51 51 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 51 58 58 58 58 58 00 51 58 51 58 58 58 58 58 58 58 58 51 58 58 51 58 58 58 58 00 58 58 58 58 58 58 58 51 58 58 00 58 58 51 58 58 58 58 58 00 58 58 58 51 51 58 58 51 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 51 58 51 58 58 58 58 58 58 58 58 58 58 00 58 51 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 51 58 58 58 58 58 58 51 58 51 58 58
*/
