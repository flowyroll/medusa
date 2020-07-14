.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x56d5, %rsi
lea addresses_D_ht+0x4cbd, %rdi
cmp %rdx, %rdx
mov $97, %rcx
rep movsq
inc %rcx
lea addresses_normal_ht+0x1577d, %rsi
lea addresses_WC_ht+0xce3d, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $98, %rcx
rep movsw
nop
nop
nop
nop
add $33552, %rsi
lea addresses_A_ht+0x18e3d, %rsi
lea addresses_normal_ht+0x1cd4d, %rdi
nop
nop
cmp %r9, %r9
mov $87, %rcx
rep movsw
xor %rdi, %rdi
lea addresses_UC_ht+0x194bd, %rsi
lea addresses_WT_ht+0x16a3d, %rdi
nop
nop
nop
nop
nop
cmp $53619, %r11
mov $24, %rcx
rep movsq
nop
nop
nop
nop
cmp $50091, %r14
lea addresses_WT_ht+0x12abd, %r14
nop
nop
nop
add $63298, %rdi
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
and %r14, %r14
lea addresses_A_ht+0xcabd, %r9
clflush (%r9)
nop
nop
nop
add $58137, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r9)
nop
mfence
lea addresses_D_ht+0x87bc, %r14
nop
nop
nop
nop
and %r11, %r11
mov (%r14), %r9
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x11e3d, %rdi
nop
nop
add $43326, %rdx
movb (%rdi), %r9b
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x1ea1d, %rdx
xor $37524, %r9
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
dec %rdx
lea addresses_D_ht+0x3a3d, %r14
dec %rcx
movb $0x61, (%r14)
xor %r14, %r14
lea addresses_WC_ht+0x17a3d, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
dec %r9
lea addresses_WC_ht+0xc3d, %rsi
lea addresses_UC_ht+0x903d, %rdi
nop
nop
nop
nop
inc %r8
mov $44, %rcx
rep movsq
sub $22734, %rdi
lea addresses_WT_ht+0x18ab1, %r14
nop
nop
sub %rcx, %rcx
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
sub $56345, %r8
lea addresses_WC_ht+0x1aa3d, %rsi
lea addresses_UC_ht+0xcedf, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $68, %rcx
rep movsq
nop
inc %rsi
lea addresses_normal_ht+0x1613d, %rcx
nop
nop
nop
nop
nop
dec %r14
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r11
sub %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rdi
push %rsi

// Load
lea addresses_WC+0x273d, %r9
nop
nop
dec %r15
vmovntdqa (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
sub $64727, %r11

// Store
lea addresses_D+0x16c5d, %r8
nop
nop
sub $10873, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r8)
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_normal+0x323d, %rsi
nop
nop
cmp %r11, %r11
mov (%rsi), %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 75}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
