.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x18fdf, %r8
clflush (%r8)
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
and $63638, %r10
lea addresses_UC_ht+0x29df, %rbx
nop
dec %r8
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x18667, %rsi
lea addresses_D_ht+0x165df, %rdi
nop
nop
nop
nop
nop
and $31280, %r8
mov $1, %rcx
rep movsq
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x45df, %rcx
cmp %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0xa99f, %r10
nop
sub $57723, %rdi
mov (%r10), %r11d
nop
nop
nop
xor $5403, %rcx
lea addresses_WT_ht+0xaddf, %r12
nop
and %rbp, %rbp
movw $0x6162, (%r12)
nop
add %r12, %r12
lea addresses_normal_ht+0x1b1ab, %rsi
lea addresses_WC_ht+0x19d8f, %rdi
sub %r12, %r12
mov $50, %rcx
rep movsw
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x1cb3b, %r11
nop
nop
dec %rbx
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_normal+0xf5df, %r13
clflush (%r13)
cmp %rbx, %rbx
movb $0x51, (%r13)
nop
inc %r9

// Store
lea addresses_WC+0x155df, %r11
nop
nop
cmp $47532, %r10
movw $0x5152, (%r11)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_PSE+0x115df, %r10
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
nop
xor $29101, %r10

// Load
lea addresses_UC+0x12951, %r10
nop
nop
nop
nop
add $16589, %rdi
movups (%r10), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
nop
add %rbp, %rbp

// Load
lea addresses_normal+0x11adf, %r11
nop
nop
nop
nop
add %r9, %r9
mov (%r11), %bx
xor %r9, %r9

// Store
lea addresses_WT+0x1155f, %r10
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r10)
sub %rdi, %rdi

// Load
mov $0x5df, %r11
nop
mfence
mov (%r11), %rdi
nop
nop
nop
add %r10, %r10

// Store
mov $0x5df, %r11
nop
nop
nop
nop
nop
cmp $45905, %r13
movw $0x5152, (%r11)
nop
nop
nop
nop
inc %r9

// Store
lea addresses_UC+0xfddf, %r13
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_A+0x11a3f, %rdi
nop
nop
nop
and $26940, %r13
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
xor %r9, %r9

// Faulty Load
mov $0x5df, %rdi
nop
nop
nop
nop
cmp $1829, %r13
movntdqa (%rdi), %xmm2
vpextrq $1, %xmm2, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'28': 6, '29': 1, '2a': 3, '44': 2, 'f1': 3, '08': 2, '68': 17, 'e2': 5, '5b': 1, '46': 2, '00': 21762, 'ff': 13, '40': 12}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
