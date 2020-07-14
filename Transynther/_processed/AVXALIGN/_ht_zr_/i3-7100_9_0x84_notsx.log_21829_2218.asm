.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1774c, %rsi
lea addresses_D_ht+0x13ed6, %rdi
dec %r10
mov $118, %rcx
rep movsw
nop
nop
nop
cmp $51184, %rsi
lea addresses_WT_ht+0x92c6, %rsi
lea addresses_D_ht+0x19dbc, %rdi
nop
nop
dec %r10
mov $6, %rcx
rep movsw
nop
nop
nop
xor $12136, %r8
lea addresses_A_ht+0x1afce, %rsi
lea addresses_WT_ht+0x8466, %rdi
nop
nop
add %rax, %rax
mov $12, %rcx
rep movsb
nop
nop
nop
lfence
lea addresses_normal_ht+0x11b8c, %rsi
lea addresses_WC_ht+0x8ff6, %rdi
nop
nop
nop
sub $18832, %r13
mov $51, %rcx
rep movsb
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x10a66, %r13
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r13), %si
nop
inc %rcx
lea addresses_normal_ht+0x1b47a, %rsi
inc %r13
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
inc %r8
lea addresses_normal_ht+0x1de, %rsi
lea addresses_WC_ht+0x76bd, %rdi
clflush (%rsi)
nop
nop
sub %r15, %r15
mov $52, %rcx
rep movsw
nop
nop
nop
nop
xor $18308, %rax
lea addresses_A_ht+0x14866, %r13
nop
nop
nop
dec %rsi
movw $0x6162, (%r13)
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x15066, %rax
nop
nop
nop
nop
cmp $63529, %r10
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
add $29799, %rax
lea addresses_WT_ht+0x1957e, %rsi
lea addresses_D_ht+0x1c636, %rdi
nop
nop
nop
nop
nop
add $10072, %r8
mov $47, %rcx
rep movsb
nop
nop
nop
xor $4401, %r15
lea addresses_WT_ht+0x5066, %rsi
lea addresses_WC_ht+0x166ea, %rdi
nop
nop
nop
and $45370, %r15
mov $96, %rcx
rep movsw
nop
nop
nop
and $47804, %r8
lea addresses_A_ht+0xf146, %rdi
nop
cmp $38498, %r13
movw $0x6162, (%rdi)
nop
nop
nop
and $8766, %rdi
lea addresses_WT_ht+0xc01a, %rsi
lea addresses_normal_ht+0x111e6, %rdi
nop
nop
nop
nop
xor $39377, %r10
mov $100, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x18066, %rcx
nop
nop
sub %rax, %rax
mov (%rcx), %r8d
and $10052, %r15
lea addresses_D_ht+0x15866, %r10
nop
nop
sub %rdi, %rdi
movups (%r10), %xmm3
vpextrq $0, %xmm3, %r8
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rsi

// Store
lea addresses_PSE+0x196b6, %rsi
inc %r11
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_normal+0x1a06, %r10
sub %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r10)
nop
xor $26020, %r10

// Faulty Load
lea addresses_PSE+0x8866, %rsi
nop
nop
nop
nop
nop
and $64301, %r10
vmovntdqa (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'49': 82, '45': 1721, '48': 131, '00': 251, '44': 19644}
44 45 44 44 45 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 48 00 48 44 44 44 44 45 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 44 45 44 44 45 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 45 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 45 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 45 44 00 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 49 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 48 44 44 45 48 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 45 44 44 44 44 44 44 45 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 48 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 00 45 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44
*/
