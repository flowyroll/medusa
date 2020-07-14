.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x13063, %r10
nop
nop
nop
sub %rdi, %rdi
mov (%r10), %edx
nop
nop
sub %r13, %r13
lea addresses_A_ht+0xb8c3, %r12
nop
nop
nop
nop
nop
sub %r9, %r9
mov (%r12), %r13d
xor $11058, %r10
lea addresses_UC_ht+0x3663, %rsi
lea addresses_A_ht+0x102f3, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $32806, %r9
mov $41, %rcx
rep movsb
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x1bae3, %rsi
lea addresses_WC_ht+0x39bb, %rdi
nop
nop
sub $13477, %r9
mov $118, %rcx
rep movsq
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x1d6e3, %rsi
nop
dec %rdx
mov (%rsi), %r9d
nop
nop
sub $62598, %rsi
lea addresses_WT_ht+0x74e3, %rsi
nop
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0xce63, %rsi
lea addresses_D_ht+0x4143, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $118, %rcx
rep movsw
nop
cmp $50549, %r12
lea addresses_WC_ht+0x164d3, %rsi
lea addresses_normal_ht+0x1aae3, %rdi
nop
nop
xor $8372, %r13
mov $9, %rcx
rep movsq
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x3c23, %rcx
nop
nop
nop
nop
and %r10, %r10
mov (%rcx), %si
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x11887, %r13
sub $46340, %rcx
mov (%r13), %r12
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x1971b, %rsi
lea addresses_D_ht+0x181a3, %rdi
nop
nop
nop
nop
nop
and $60856, %r10
mov $43, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x4ae3, %r10
nop
nop
cmp %r13, %r13
movb (%r10), %dl
nop
nop
sub $25821, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rsi

// Store
lea addresses_UC+0xc5c3, %r12
xor %rbp, %rbp
movb $0x51, (%r12)
nop
nop
nop
inc %rsi

// Store
lea addresses_US+0x503, %rbx
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movntdq %xmm3, (%rbx)
nop
nop
nop
nop
nop
xor $1576, %r10

// Faulty Load
lea addresses_US+0x1aae3, %r12
nop
nop
nop
dec %r10
movups (%r12), %xmm5
vpextrq $1, %xmm5, %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'08': 3, 'e8': 1, '48': 2442, '44': 13090, '45': 5853, 'b7': 1, '75': 3, '56': 2, '00': 176}
00 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 48 44 45 44 45 44 44 44 48 44 44 48 44 44 44 44 44 44 44 45 44 45 44 44 44 48 45 44 44 44 44 48 44 44 45 48 44 45 45 44 44 45 44 00 44 45 44 44 48 44 44 48 44 44 44 45 45 44 44 44 45 44 44 44 00 48 44 44 44 44 48 44 44 44 00 44 44 48 44 44 48 44 44 44 48 45 44 44 45 44 45 00 45 45 44 44 44 44 44 44 44 45 44 44 44 44 48 45 45 45 44 48 44 48 48 44 48 44 45 48 44 44 44 44 44 45 44 44 44 44 44 44 44 44 45 48 44 44 44 44 48 44 44 44 48 45 45 44 48 44 45 45 45 45 44 44 44 44 45 44 44 48 44 45 44 45 45 44 44 44 44 45 45 44 45 44 45 44 44 45 44 45 45 44 44 44 45 44 44 44 45 44 45 45 44 44 44 44 48 44 48 44 48 45 44 44 48 44 45 44 45 45 44 44 48 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 45 45 44 45 48 48 44 44 48 00 44 45 44 44 44 45 48 44 48 44 45 44 44 45 45 45 48 45 44 44 44 44 45 45 45 44 45 48 44 48 44 44 44 44 44 44 44 44 44 48 48 45 44 44 44 48 44 44 44 45 44 44 44 44 45 44 44 44 44 48 44 44 45 48 44 44 45 44 45 48 45 48 44 44 44 45 45 48 44 44 44 44 44 00 44 44 45 48 44 44 44 44 44 48 44 45 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 45 48 00 44 44 44 44 44 44 45 44 44 45 44 44 45 44 45 44 45 45 44 44 44 45 44 44 44 44 44 00 48 45 44 45 48 44 44 44 44 44 44 44 48 44 48 45 48 48 44 48 44 00 44 45 45 44 44 44 44 44 44 00 45 44 44 45 48 44 44 44 45 48 44 48 44 44 44 45 44 44 48 44 44 44 48 45 44 44 44 44 48 45 44 44 45 44 44 45 48 48 45 44 45 44 45 44 45 44 45 45 48 48 45 44 48 44 45 48 45 45 44 45 44 44 48 48 44 44 44 44 48 44 48 44 44 44 44 44 45 44 45 44 44 44 45 44 45 44 45 44 45 45 45 44 44 44 44 44 44 48 45 45 44 45 44 44 44 44 48 48 44 44 44 44 48 44 44 45 44 45 44 45 48 44 44 45 44 44 45 48 44 45 44 44 44 45 44 44 44 44 44 45 44 44 00 44 44 44 44 44 44 45 48 44 44 44 45 44 44 45 44 45 44 48 48 44 45 44 44 45 44 44 44 48 44 45 44 45 44 44 45 44 44 44 44 44 44 44 44 48 44 44 45 44 45 44 44 44 44 45 44 44 48 48 44 45 44 44 45 44 44 44 44 44 45 44 44 48 48 44 44 44 44 44 44 48 44 44 44 45 44 44 45 45 44 45 44 44 44 44 45 44 48 44 45 44 44 44 44 44 44 48 45 44 48 44 44 44 44 44 44 44 45 44 44 45 44 44 48 48 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 45 45 44 44 44 44 45 44 44 44 44 44 45 44 44 45 44 45 48 44 45 45 48 45 45 44 44 44 44 45 44 48 44 45 44 44 45 48 45 44 44 45 48 45 00 44 44 44 48 48 44 45 44 44 45 44 44 44 45 44 45 45 48 45 44 45 00 48 45 48 44 44 44 45 44 44 44 44 44 44 44 44 44 44 45 44 45 44 45 44 44 45 45 48 44 48 44 48 44 44 44 44 44 44 44 45 44 44 44 44 48 45 48 44 44 44 48 44 44 44 48 44 44 44 45 44 44 44 44 48 44 44 44 44 00 45 44 44 45 44 44 45 45 44 45 44 44 44 45 45 44 44 44 44 44 45 45 44 44 45 45 44 45 44 44 44 44 48 44 45 48 44 44 48 45 44 44 45 44 45 44 45 44 44 45 44 48 44 45 44 44 45 44 45 48 44 45 44 45 44 48 44 00 44 44 44 45 44 44 44 44 44 44 48 44 45 44 44 44 45 00 44 44 44 45 44 45 44 48 44 44 44 44 45 48 44 45 45 45 44 45 44 48 44 44 44 45 48 48 44 48 44 48 45 44 44 45 45 44 44 48 48 44 44 48 45
*/
