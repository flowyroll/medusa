.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1d5ee, %r11
nop
nop
add %r13, %r13
mov (%r11), %r15w
nop
sub $11219, %r11
lea addresses_UC_ht+0x1ab9e, %rsi
lea addresses_WC_ht+0x151ee, %rdi
clflush (%rsi)
nop
cmp $34159, %r14
mov $83, %rcx
rep movsw
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1d8ee, %rsi
lea addresses_UC_ht+0xca1c, %rdi
nop
nop
nop
cmp $56286, %r12
mov $48, %rcx
rep movsb
nop
dec %rcx
lea addresses_UC_ht+0x4ee, %rsi
lea addresses_UC_ht+0x148bc, %rdi
dec %r14
mov $22, %rcx
rep movsb
xor $39162, %r13
lea addresses_WC_ht+0x11eee, %r15
nop
nop
add %rsi, %rsi
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
dec %rsi
lea addresses_UC_ht+0x9fee, %rcx
xor %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
add $45606, %r15
lea addresses_normal_ht+0x7f6, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
and $54198, %rdi
lea addresses_UC_ht+0x77ae, %rcx
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rcx), %rsi
inc %rsi
lea addresses_normal_ht+0x1db6e, %rsi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rsi), %r13
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x149ee, %rsi
lea addresses_normal_ht+0xdeee, %rdi
nop
nop
xor %r13, %r13
mov $105, %rcx
rep movsq
nop
nop
xor $14730, %r15
lea addresses_WT_ht+0x126ae, %r14
nop
nop
cmp %rcx, %rcx
mov (%r14), %esi
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0xad0e, %rsi
lea addresses_normal_ht+0x1bfee, %rdi
nop
nop
nop
nop
cmp $27149, %r13
mov $65, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x6d62, %rsi
lea addresses_D_ht+0x3eee, %rdi
nop
nop
cmp %r12, %r12
mov $109, %rcx
rep movsq
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1e926, %r15
nop
nop
nop
cmp $43255, %rsi
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
nop
xor %r14, %r14
lea addresses_A_ht+0x11a7a, %r13
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %r13
vmovaps %ymm5, (%r13)
nop
nop
nop
nop
add $52891, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %r9
push %rdi

// Store
lea addresses_UC+0x1edee, %rdi
nop
and %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rdi)
xor %r11, %r11

// Store
lea addresses_UC+0x16ee, %r10
clflush (%r10)
sub $56250, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%r10)

// Exception!!!
nop
nop
nop
nop
mov (0), %r9
nop
nop
nop
sub $54242, %r12

// Store
lea addresses_normal+0x7eee, %r11
and $2394, %r10
movl $0x51525354, (%r11)
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_normal+0x5e1e, %r9
sub $7787, %r15
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_normal+0x7eee, %r9
nop
cmp %r11, %r11
movntdqa (%r9), %xmm5
vpextrq $0, %xmm5, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdi
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'54': 18560, '00': 3269}
00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 00 00 54 54 54 00 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 00 54 54 00 54 00 00 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 00 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 00 54 54 00 00 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 00 00 00 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 00 00 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 00 00 54 00 54 00 54 00 54 54 54 54 54 00 54 00 54 54 54 54 00 00 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 00 00 00 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 00 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 00 54 00 54 00 00 54 54 54 54 54 54 00 54 54 54 00 00 54 54 54 54 54 00 54 00 54 00 54 00 54 54 54 00 54 00 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 00 00 54 54 54 54 54 54 54 00 54 00 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 00 00 54 00 54 54 00 54 54 54 54 54 54 54 00 54 00 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 54 54 54 54 00 54 00 54 00 54 00 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 00 54 54 54 54 00 54 54 54 54 54 00 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 00 54 54 00 54 54 54 54 54 54 00 00 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 00 54 00 54 54 54 54 00 54
*/
