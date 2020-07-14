.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x781b, %rsi
lea addresses_A_ht+0x157e0, %rdi
nop
and %rdx, %rdx
mov $44, %rcx
rep movsq
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1c5b3, %rsi
lea addresses_D_ht+0xf523, %rdi
nop
nop
nop
xor %r8, %r8
mov $105, %rcx
rep movsw
nop
and %r8, %r8
lea addresses_UC_ht+0x72bf, %r14
nop
inc %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r14)
nop
nop
nop
nop
nop
add $6566, %r10
lea addresses_WC_ht+0x18ca3, %r14
nop
nop
nop
nop
nop
add %r8, %r8
movb (%r14), %dl
nop
add $61594, %rdx
lea addresses_normal_ht+0x141e6, %r10
nop
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x1d843, %rdi
nop
nop
nop
inc %r8
movl $0x61626364, (%rdi)
add %r10, %r10
lea addresses_WC_ht+0xac23, %rdx
nop
cmp %r10, %r10
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
xor $54407, %r8
lea addresses_D_ht+0x1a96f, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0xbf23, %rsi
nop
nop
cmp %r8, %r8
movb (%rsi), %r10b
nop
nop
inc %rdi
lea addresses_A_ht+0xed23, %rdx
nop
nop
add %r14, %r14
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x63c5, %r10
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
xor $7698, %r14
lea addresses_D_ht+0xf523, %rsi
lea addresses_D_ht+0x1a0a3, %rdi
nop
nop
nop
xor %r8, %r8
mov $72, %rcx
rep movsq
nop
sub %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x10123, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
and %rbx, %rbx

// Store
lea addresses_D+0x12790, %rcx
nop
nop
xor $18689, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rcx)
sub $49268, %r9

// Store
lea addresses_WC+0x14123, %rbp
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
xor %rdi, %rdi

// Store
lea addresses_UC+0x1cd23, %rbp
clflush (%rbp)
nop
and $56626, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%rbp)
nop
nop
add $8032, %rbx

// REPMOV
lea addresses_PSE+0xdd23, %rsi
lea addresses_normal+0x19eb1, %rdi
add %rbx, %rbx
mov $31, %rcx
rep movsq
nop
add %rax, %rax

// Store
lea addresses_normal+0x6323, %rcx
nop
and %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
xor $1761, %rcx

// Faulty Load
lea addresses_PSE+0xdd23, %rbx
nop
nop
nop
nop
nop
cmp $41467, %r9
mov (%rbx), %edi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
