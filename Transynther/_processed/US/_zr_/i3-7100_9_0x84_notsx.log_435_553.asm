.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1208b, %rsi
lea addresses_WC_ht+0xd5e3, %rdi
nop
nop
nop
nop
nop
and $59109, %rbp
mov $87, %rcx
rep movsb
nop
nop
cmp $49933, %r10
lea addresses_UC_ht+0x18ca9, %rsi
lea addresses_D_ht+0x10d8b, %rdi
nop
nop
nop
and $39503, %r14
mov $22, %rcx
rep movsl
nop
nop
nop
and $12105, %r14
lea addresses_WC_ht+0x7d8b, %r10
nop
nop
nop
nop
cmp $58544, %rcx
mov (%r10), %r14w
nop
dec %rcx
lea addresses_WC_ht+0x17d8f, %rsi
lea addresses_WC_ht+0xee0b, %rdi
nop
nop
nop
nop
dec %r12
mov $79, %rcx
rep movsb
nop
nop
nop
nop
xor $49247, %r14
lea addresses_WC_ht+0xa3ab, %r14
nop
nop
xor $35924, %rcx
movw $0x6162, (%r14)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x128b, %r10
nop
nop
nop
dec %rdi
movw $0x6162, (%r10)
nop
nop
nop
nop
add $2673, %r14
lea addresses_normal_ht+0xf68b, %rsi
lea addresses_UC_ht+0xdad3, %rdi
nop
sub $10147, %r11
mov $42, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x828b, %r11
nop
nop
sub %rsi, %rsi
mov (%r11), %r12d
sub %r10, %r10
lea addresses_D_ht+0xc8b, %rsi
lea addresses_normal_ht+0x51cf, %rdi
nop
nop
sub $43452, %r10
mov $11, %rcx
rep movsw
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x1accb, %rsi
lea addresses_WT_ht+0xb443, %rdi
nop
nop
nop
nop
nop
add $57648, %r10
mov $5, %rcx
rep movsl
nop
sub $26983, %rcx
lea addresses_D_ht+0x1e60b, %rsi
lea addresses_normal_ht+0x10c8b, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov $2, %rcx
rep movsb
nop
nop
nop
nop
nop
add $9287, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Load
mov $0xf83, %r9
sub %rdi, %rdi
movb (%r9), %dl
nop
xor $42984, %rsi

// Store
lea addresses_UC+0x115ab, %rbp
nop
and %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
sub %rbx, %rbx

// Store
lea addresses_normal+0x868b, %rbx
nop
nop
nop
and $65253, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
nop
dec %r9

// Load
lea addresses_PSE+0x1561b, %rsi
nop
inc %r8
mov (%rsi), %ebp
nop
nop
inc %r9

// Store
lea addresses_A+0x1d78b, %r9
nop
sub $18304, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r9)
xor $55092, %rsi

// Store
lea addresses_UC+0x6a8b, %rbx
nop
add %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
nop
nop
nop
sub $51576, %rdx

// Load
lea addresses_RW+0x12e8b, %rbx
nop
and %rdx, %rdx
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
nop
dec %r8

// Store
lea addresses_WC+0x1f3ad, %rbp
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovaps %ymm7, (%rbp)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_US+0x15e8b, %rdx
nop
nop
nop
nop
nop
inc %rbp
mov (%rdx), %esi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 435}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
