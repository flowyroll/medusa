.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1a3bf, %r9
nop
nop
nop
nop
cmp %r8, %r8
movups (%r9), %xmm3
vpextrq $0, %xmm3, %rdx
nop
sub %r13, %r13
lea addresses_WC_ht+0x1b5bf, %r8
clflush (%r8)
nop
nop
nop
nop
inc %rcx
mov (%r8), %r10d
nop
add $65330, %r9
lea addresses_WT_ht+0x144bf, %rsi
lea addresses_normal_ht+0xa3af, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $33, %rcx
rep movsw
nop
and $61447, %rcx
lea addresses_D_ht+0x1211d, %rsi
lea addresses_WT_ht+0x4b3f, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $50, %rcx
rep movsw
nop
nop
cmp $42315, %rdx
lea addresses_WC_ht+0x1e9bf, %rsi
lea addresses_UC_ht+0x1bdbf, %rdi
nop
nop
nop
nop
xor $62753, %r8
mov $51, %rcx
rep movsq
nop
nop
nop
nop
nop
and $2924, %r13
lea addresses_WT_ht+0xb5bf, %rcx
nop
nop
nop
nop
nop
xor $63519, %rsi
mov (%rcx), %r13
nop
nop
nop
nop
xor $28308, %r8
lea addresses_WT_ht+0x18b3f, %rsi
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0xf117, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $17058, %rcx
movb (%rdi), %r13b
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x79bf, %r8
nop
nop
nop
and %rdx, %rdx
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
cmp $50306, %r10
lea addresses_A_ht+0xc3bf, %rsi
nop
cmp $33553, %rcx
movw $0x6162, (%rsi)
nop
nop
inc %rdi
lea addresses_A_ht+0x1063f, %rcx
nop
nop
nop
add $29346, %r9
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
nop
nop
nop
sub $37189, %r13
lea addresses_normal_ht+0x886f, %rsi
lea addresses_WT_ht+0x48fc, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $88, %rcx
rep movsw
sub %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WC+0x4bbf, %r11
nop
inc %rcx
mov (%r11), %dx
cmp %rdx, %rdx

// Store
lea addresses_UC+0xeb49, %r11
nop
nop
nop
cmp %r8, %r8
movl $0x51525354, (%r11)
nop
nop
nop
nop
cmp $6559, %rcx

// Faulty Load
lea addresses_PSE+0x16dbf, %r9
add %r8, %r8
vmovntdqa (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'78': 1, 'e1': 1, '21': 1, 'a5': 1, '1f': 1, 'df': 1, '46': 482, '00': 7968, '44': 13371, 'f6': 1, '56': 1}
44 44 00 44 00 44 44 44 44 00 44 00 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 44 00 44 00 44 00 44 00 46 00 00 44 44 44 44 00 00 44 46 00 44 44 44 00 44 00 44 44 00 44 00 44 46 00 44 00 44 00 44 00 44 44 44 00 44 00 44 00 44 00 44 00 44 44 00 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 44 00 00 44 44 44 00 44 44 00 44 00 00 00 44 00 44 44 44 44 44 44 00 44 44 44 00 44 00 44 00 00 44 44 46 44 44 00 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 00 00 44 00 00 44 44 44 44 44 44 00 44 00 44 44 00 44 00 00 00 00 46 44 00 44 00 00 44 00 44 44 00 44 44 44 00 44 44 44 44 44 00 44 44 44 44 00 00 44 46 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 44 44 44 00 00 44 00 44 44 44 44 00 44 00 44 00 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 00 44 44 44 44 00 00 00 00 44 00 00 00 00 44 44 00 44 44 44 44 00 44 44 00 44 00 00 44 00 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 00 00 00 00 44 00 44 44 44 44 44 44 44 44 00 44 46 00 44 00 00 44 00 00 44 44 44 44 44 46 00 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 00 44 44 44 44 44 00 00 44 44 00 44 44 44 00 44 44 00 44 00 00 44 44 44 44 00 00 00 44 44 44 44 44 00 44 44 00 00 00 44 00 44 44 00 44 00 00 44 44 44 00 44 44 44 00 44 44 00 00 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 00 00 44 00 44 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 00 44 44 44 00 44 44 44 44 44 00 44 44 00 44 44 00 44 00 44 44 00 44 44 00 44 44 44 00 44 00 44 00 44 44 00 00 00 44 44 44 44 44 00 44 44 00 00 44 44 44 00 44 00 44 44 00 00 00 44 44 44 44 44 44 00 44 00 44 00 44 44 44 44 44 44 00 44 44 00 44 00 44 00 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 00 44 00 44 00 44 44 00 44 00 44 44 44 44 44 00 44 00 44 44 00 00 44 44 44 44 44 44 00 44 00 44 44 44 44 00 44 44 44 00 44 00 44 44 44 44 00 44 44 44 00 44 46 44 44 00 44 44 00 44 44 00 44 44 44 44 44 00 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 00 44 00 00 44 00 00 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 44 44 00 44 44 46 00 44 44 44 00 44 00 44 44 44 44 00 44 00 00 44 44 00 44 00 44 00 00 00 00 44 44 44 00 44 00 44 44 44 00 44 44 44 44 00 44 44 00 00 00 44 00 44 00 44 44 44 44 00 44 44 44 44 44 00 44 44 00 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 00 44 00 44 44 44 44 44 44 44 44 00 00 44 00 44 00 44 44 00 44 44 44 00 44 46 44 00 00 00 44 44 44 00 44 44 00 44 44 00 44 44 44 00 44 00 44 44 00 44 00 44 00 44 00 44 44 44 44 44 00 44 44 00 44 00 44 00 44 44 00 44 00 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 00 00 00 44 44 00 44 00 44 00 44 00 44 44 00 44 00 44 44 00 44 00 44 44 44 44 44 44 44 00 00 46 00 44 00 44 44 00 44 44 44 00 00 44 00 44 00 44 00 44 00 44 44 00 44 44 44
*/
