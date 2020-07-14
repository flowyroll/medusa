.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xc2c, %rcx
xor %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
and $12691, %rsi
lea addresses_normal_ht+0x1d4ec, %r13
nop
xor $11815, %r11
mov (%r13), %r10w
nop
nop
nop
nop
nop
xor $40950, %rax
lea addresses_UC_ht+0x442c, %rsi
lea addresses_UC_ht+0x16aec, %rdi
nop
cmp %r13, %r13
mov $100, %rcx
rep movsq
nop
nop
nop
nop
sub $1013, %rdi
lea addresses_WC_ht+0x13c4c, %r13
clflush (%r13)
nop
nop
nop
nop
and $24428, %rdi
mov (%r13), %si
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0xcec, %r10
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %r10
vmovaps %ymm6, (%r10)
nop
nop
nop
nop
cmp $3410, %r10
lea addresses_UC_ht+0xcf2c, %r10
nop
nop
nop
xor $7549, %r11
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x13c6c, %rdi
nop
xor %r10, %r10
movb $0x61, (%rdi)
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1d86c, %rsi
nop
nop
nop
cmp $26579, %r13
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
nop
xor $27731, %r13
lea addresses_WT_ht+0x182ec, %r10
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%r10), %esi
nop
nop
nop
nop
nop
and $6236, %rsi
lea addresses_normal_ht+0x1164c, %rdi
nop
and $11586, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
and $0xffffffffffffffc0, %rdi
vmovaps %ymm4, (%rdi)
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0xe0ec, %r11
nop
nop
nop
sub $11173, %r10
mov (%r11), %si
nop
nop
dec %rsi
lea addresses_UC_ht+0xd0c, %rsi
lea addresses_UC_ht+0xc76c, %rdi
nop
nop
nop
nop
nop
xor $19101, %rbx
mov $43, %rcx
rep movsw
nop
nop
nop
nop
xor $27816, %r10
lea addresses_D_ht+0x1a1dc, %rsi
lea addresses_WC_ht+0x1609c, %rdi
nop
cmp $47074, %r13
mov $97, %rcx
rep movsq
nop
nop
nop
xor $19643, %rsi
lea addresses_A_ht+0x10ac, %rcx
nop
nop
nop
nop
xor $24726, %rsi
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xc2ec, %r11
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
cmp $16771, %rbx

// REPMOV
lea addresses_normal+0x172ec, %rsi
lea addresses_D+0xf5ec, %rdi
clflush (%rsi)
xor $50494, %r14
mov $12, %rcx
rep movsb
nop
and %r14, %r14

// Store
lea addresses_UC+0xf9ac, %rcx
nop
nop
nop
and $4991, %r11
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
and %r11, %r11

// Store
lea addresses_UC+0x5eec, %r14
nop
nop
nop
sub $30668, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0x32ec, %rbx
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rbx)
nop
sub %rbx, %rbx

// Store
lea addresses_UC+0x1faec, %rax
and %rsi, %rsi
movl $0x51525354, (%rax)
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_D+0x1aaec, %rax
nop
nop
dec %rdi
vmovntdqa (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'78': 1, '0e': 1, '03': 3, '96': 15, '5f': 1, '18': 1, '46': 145, '00': 15860, 'ff': 404, '45': 5398}
00 45 00 00 45 00 45 00 00 00 00 00 45 00 00 45 00 45 00 00 45 ff 45 00 00 45 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 45 45 45 00 00 45 00 45 00 00 00 45 ff 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 45 ff 00 45 00 00 45 45 00 45 00 00 00 00 00 00 45 00 45 ff 45 00 00 45 45 00 45 00 45 00 00 00 45 45 00 45 00 ff 00 00 45 00 45 ff 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 45 00 45 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 45 00 00 45 00 45 00 45 00 00 00 45 ff 00 45 00 00 00 45 00 00 45 00 00 45 00 45 ff 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 45 45 ff 00 00 00 00 45 00 00 45 00 00 ff 45 00 45 00 00 00 45 00 00 45 00 00 00 00 ff ff 00 00 00 00 45 00 00 ff 00 45 00 00 45 00 00 ff 00 00 00 00 45 00 45 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 45 45 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 46 00 00 00 45 45 45 00 45 45 00 45 00 45 00 00 00 45 00 45 00 45 00 00 00 00 45 45 00 00 00 00 45 45 00 45 00 45 00 00 45 00 00 00 45 00 00 45 45 45 00 45 00 00 ff 00 00 00 00 45 00 00 00 45 00 ff 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 45 45 00 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 00 45 45 45 00 00 00 45 00 00 45 45 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 45 00 45 45 00 45 00 00 00 00 00 ff 45 00 45 00 00 00 00 00 00 00 00 45 00 ff 00 00 00 00 00 00 00 00 00 45 00 00 45 45 00 45 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 46 00 00 00 45 00 45 00 00 00 45 00 45 00 00 00 45 46 00 45 45 45 00 45 ff 45 ff 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 45 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 45 00 00 00 45 00 00 45 45 00 00 00 00 00 00 00 45 00 45 00 45 ff 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 00 00 00 00 00 45 00 45 45 96 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 45 00 00 ff 00 00 ff 00 ff 00 45 00 ff 00 00 45 45 00 45 00 00 00 00 00 ff 45 00 00 00 45 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 ff 00 00 00
*/
