.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xa9b0, %r8
nop
nop
nop
nop
nop
and %rbp, %rbp
movw $0x6162, (%r8)
nop
sub %r11, %r11
lea addresses_D_ht+0x1c5d0, %rsi
lea addresses_WC_ht+0x2750, %rdi
nop
nop
nop
dec %r15
mov $81, %rcx
rep movsb
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0xa50, %rsi
lea addresses_WC_ht+0xd9d0, %rdi
add $41156, %r8
mov $47, %rcx
rep movsb
xor $32747, %r15
lea addresses_normal_ht+0x179e4, %rsi
lea addresses_WT_ht+0x18fe0, %rdi
and $14821, %r15
mov $42, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $41271, %rcx
lea addresses_WC_ht+0xda50, %rsi
lea addresses_normal_ht+0x1c9d0, %rdi
nop
nop
nop
nop
dec %r9
mov $12, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0x1edf0, %rbp
xor %r11, %r11
movb (%rbp), %r8b
nop
add %r9, %r9
lea addresses_normal_ht+0x11ad6, %r15
sub %r9, %r9
movb (%r15), %cl
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x53c0, %rsi
lea addresses_UC_ht+0xe9a0, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0xe7d0, %rsi
lea addresses_WT_ht+0x3bd0, %rdi
nop
nop
nop
inc %r11
mov $126, %rcx
rep movsb
nop
nop
nop
cmp $8869, %r9
lea addresses_UC_ht+0x6390, %rsi
lea addresses_WT_ht+0x67d, %rdi
inc %r15
mov $126, %rcx
rep movsb
nop
nop
nop
nop
add $14097, %r11
lea addresses_WC_ht+0x136c, %r9
nop
nop
nop
nop
nop
xor %r8, %r8
movw $0x6162, (%r9)
sub %r15, %r15
lea addresses_A_ht+0x31d0, %rsi
lea addresses_UC_ht+0x15490, %rdi
nop
nop
nop
nop
xor $18650, %rbp
mov $127, %rcx
rep movsb
add %r11, %r11
lea addresses_WC_ht+0x1b5d0, %rdi
nop
nop
nop
add $10328, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rdi)
dec %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rdx

// Load
lea addresses_D+0x15e48, %rdx
nop
nop
cmp %r14, %r14
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
dec %rdx

// Store
mov $0x667f940000000f67, %rax
add $9515, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rax)
nop
nop
inc %r11

// Store
lea addresses_normal+0x119d0, %r9
nop
nop
nop
nop
and $61640, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r9)
nop
and %r11, %r11

// Store
lea addresses_A+0x79d0, %rdx
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
nop
nop
nop
dec %r14

// Store
lea addresses_UC+0x12c50, %r10
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r10)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r9
nop
dec %rdx

// Faulty Load
lea addresses_A+0x79d0, %r11
dec %rdx
movups (%r11), %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 104}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
