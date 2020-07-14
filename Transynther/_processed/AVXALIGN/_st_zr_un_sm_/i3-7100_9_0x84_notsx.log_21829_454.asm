.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x100b, %rsi
lea addresses_WT_ht+0x10e0b, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $83, %rcx
rep movsw
xor $9804, %r12
lea addresses_A_ht+0xd24b, %r9
nop
nop
nop
and $63720, %r11
movl $0x61626364, (%r9)
cmp $34963, %rbp
lea addresses_WT_ht+0x1ee1d, %rsi
lea addresses_D_ht+0x19f0b, %rdi
nop
nop
nop
and %r11, %r11
mov $49, %rcx
rep movsb
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0xc477, %r11
clflush (%r11)
and $43660, %r12
movb (%r11), %r9b
nop
nop
nop
nop
cmp $6902, %r11
lea addresses_WC_ht+0x1270b, %rsi
inc %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1e58b, %rcx
cmp %rsi, %rsi
mov (%rcx), %r9d
nop
nop
nop
nop
nop
sub $63513, %rcx
lea addresses_UC_ht+0xe0b, %rsi
xor $11926, %rcx
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
nop
nop
and $30799, %rdi
lea addresses_D_ht+0xc6eb, %rsi
nop
nop
nop
add $2013, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
and $58644, %rcx
lea addresses_normal_ht+0x1e74b, %rsi
lea addresses_WT_ht+0x54a3, %rdi
nop
cmp $37339, %r13
mov $104, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x13f2b, %rsi
nop
nop
nop
cmp $24114, %r9
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x1880b, %r9
and $49505, %r11
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdx

// Store
lea addresses_A+0x1b40b, %r12
clflush (%r12)
nop
sub %rcx, %rcx
movw $0x5152, (%r12)
nop
nop
nop
xor %r11, %r11

// Load
lea addresses_WC+0x1300b, %r14
nop
nop
nop
add $10441, %rbx
mov (%r14), %r10d
nop
cmp %r14, %r14

// Load
lea addresses_US+0x1a80b, %rcx
nop
nop
nop
nop
nop
xor $35949, %r10
movb (%rcx), %r14b
nop
nop
nop
nop
cmp $58539, %r11

// Store
lea addresses_A+0x1b40b, %r11
nop
xor $33460, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_A+0x1b40b, %r12
nop
nop
nop
nop
nop
cmp %r10, %r10
vmovntdqa (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 16431, '58': 5332, '6d': 1, '52': 62, 'c0': 3}
00 58 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 58 00 58 00 00 58 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 58 00 00 58 58 00 58 58 00 00 00 58 00 00 58 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 00 00 00 58 00 00 00 00 00 58 58 58 00 00 00 00 58 58 58 58 58 00 00 58 00 00 58 58 00 00 00 58 00 00 58 58 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 58 00 00 00 58 58 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 58 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 58 58 00 58 00 58 00 58 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 58 00 58 00 00 00 58 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 00 58 00 58 00 58 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 58 00 00 58 58 00 00 58 00 58 00 00 58 58 58 00 00 00 00 00 58 58 00 58 58 00 58 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 58 00 00 00 58 00 00 58 00 00 00 00 00 00 00 58 00 58 58 58 00 00 00 00 00 00 00 00 58 58 00 58 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 58 00 58 58 00 58 00 58 58 00 00 00 58 00 58 58 00 00 00 00 00 00 58 58 00 00 00 00 58 58 00 00 58 00 00 00 58 00 00 00 58 00 00 58 58 00 00 00 58 00 00 00 58 00 58 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 58 58 58 00 58 00 00 00 58 58 00 58 00 58 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 58 00 00 58 00 00 00 00 00 58 58 58 00 58 58 58 58 00 58 58 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 58 58 00 58 00 00 00 00 00 58 58 00 58 58 00 00 00 58 58 00 52 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 58 00 58 00 00 00 58 00 58 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00
*/
