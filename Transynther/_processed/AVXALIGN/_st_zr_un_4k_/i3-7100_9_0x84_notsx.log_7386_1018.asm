.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x143b4, %rsi
lea addresses_WT_ht+0xa794, %rdi
add $64502, %rbp
mov $76, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $28551, %rdi
lea addresses_WT_ht+0x2794, %r14
nop
nop
xor %r13, %r13
movl $0x61626364, (%r14)
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x13ca4, %rsi
lea addresses_WT_ht+0x2394, %rdi
nop
nop
nop
nop
nop
xor $984, %r9
mov $48, %rcx
rep movsl
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0xa314, %r8
and $60917, %rdi
mov (%r8), %r13d
cmp $60443, %r14
lea addresses_normal_ht+0x1b754, %rsi
lea addresses_A_ht+0x8794, %rdi
nop
nop
nop
nop
sub $65081, %rbp
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $65416, %r13
lea addresses_A_ht+0x5794, %rsi
lea addresses_WC_ht+0x2bb4, %rdi
nop
nop
nop
nop
nop
cmp $61559, %rbp
mov $16, %rcx
rep movsb
nop
nop
add $18272, %rsi
lea addresses_D_ht+0x1c3d4, %r8
clflush (%r8)
nop
add $62376, %rcx
mov (%r8), %r9
cmp $55294, %r9
lea addresses_UC_ht+0x1a794, %rsi
lea addresses_normal_ht+0x6184, %rdi
clflush (%rdi)
nop
nop
nop
cmp $25945, %r8
mov $24, %rcx
rep movsb
nop
nop
nop
cmp $54783, %r8
lea addresses_WT_ht+0x13a14, %rcx
nop
nop
nop
nop
sub $10355, %rsi
movb $0x61, (%rcx)
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x11f94, %r9
nop
nop
nop
and %r8, %r8
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
inc %rcx
lea addresses_WT_ht+0xfd94, %rsi
lea addresses_A_ht+0x2c2b, %rdi
cmp %r8, %r8
mov $59, %rcx
rep movsw
xor $44002, %r8
lea addresses_UC_ht+0x14ac4, %rsi
lea addresses_UC_ht+0x1c954, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $60, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x19f94, %r13
cmp $58021, %r14
movb $0x61, (%r13)
nop
nop
lfence
lea addresses_normal_ht+0x167ed, %r14
sub $23322, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%r14)
cmp $37369, %rdi
lea addresses_D_ht+0x19b94, %r8
nop
sub $43903, %r13
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x1ccf38000000002c, %r14
nop
nop
xor $63205, %rcx
movb $0x51, (%r14)
nop
nop
cmp $21614, %r10

// Store
lea addresses_WC+0x1bf94, %rbx
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
and $2905, %r10

// Store
mov $0x168486000000066b, %rcx
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
nop
nop
xor $17565, %rcx

// Faulty Load
mov $0x640ef40000000f94, %rdi
nop
nop
nop
cmp $52537, %rcx
mov (%rdi), %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 87, '58': 6797, '6d': 502}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 6d 58 58 58 58 58 58 58 58 58 6d 58 6d 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 6d 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 00 58 6d 58 58 58 58 58 6d 6d 58 58 6d 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 6d 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 6d 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 58 58 6d 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 58 58 58 6d 58 58 6d 58 58 58 58 58 58 58 58 58 58 00 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 58 58
*/
