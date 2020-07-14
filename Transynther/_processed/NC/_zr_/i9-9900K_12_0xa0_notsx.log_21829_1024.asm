.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xd87d, %rbp
nop
nop
nop
nop
nop
sub $5666, %r9
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x1ce65, %rsi
lea addresses_A_ht+0x438b, %rdi
nop
nop
nop
nop
cmp $16766, %r9
mov $44, %rcx
rep movsw
nop
and $14554, %rcx
lea addresses_UC_ht+0x60b3, %rdi
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
and $0xffffffffffffffc0, %rdi
movntdq %xmm7, (%rdi)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x1bfef, %rdi
nop
nop
nop
nop
nop
add $58804, %rdx
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
mfence
lea addresses_D_ht+0x983d, %rbp
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%rbp), %dl
nop
dec %r12
lea addresses_normal_ht+0x1d47d, %rdx
xor $8572, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
cmp $7150, %rdi
lea addresses_D_ht+0xdd35, %rsi
lea addresses_normal_ht+0x7e25, %rdi
nop
nop
add %r12, %r12
mov $39, %rcx
rep movsq
nop
add %rdi, %rdi
lea addresses_A_ht+0x597d, %rsi
lea addresses_WC_ht+0xacbd, %rdi
nop
nop
nop
add $20495, %r10
mov $57, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x696d, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x61, (%rbp)
add %r10, %r10
lea addresses_normal_ht+0x1cfc5, %r10
nop
nop
nop
nop
and $118, %r12
movb (%r10), %dl
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xf9fd, %r9
nop
nop
nop
nop
add %rbp, %rbp
mov (%r9), %rsi
nop
nop
nop
inc %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x122c5, %rcx
nop
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x54bd, %rdi
nop
nop
nop
and $60287, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%rdi)
sub $4078, %r8

// REPMOV
lea addresses_normal+0x1a07d, %rsi
mov $0xd7d, %rdi
nop
nop
nop
sub %r11, %r11
mov $43, %rcx
rep movsw
nop
nop
nop
nop
and $43984, %r11

// Store
mov $0x8fd, %r12
clflush (%r12)
nop
nop
nop
xor $47781, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r12)
nop
nop
dec %r11

// Faulty Load
mov $0x51cf45000000047d, %r8
cmp $26341, %rsi
movups (%r8), %xmm1
vpextrq $0, %xmm1, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
