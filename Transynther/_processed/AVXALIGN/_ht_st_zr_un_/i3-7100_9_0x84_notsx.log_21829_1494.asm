.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x6093, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
inc %r8
lea addresses_WT_ht+0x615b, %rsi
lea addresses_UC_ht+0x819f, %rdi
nop
nop
inc %rbx
mov $6, %rcx
rep movsw
cmp $8906, %rbx
lea addresses_normal_ht+0xe893, %rsi
nop
sub $2043, %r8
mov (%rsi), %rbp
nop
nop
nop
and $12255, %r8
lea addresses_WC_ht+0x1b1d7, %rsi
lea addresses_normal_ht+0x13693, %rdi
clflush (%rdi)
nop
nop
xor $5311, %r13
mov $17, %rcx
rep movsq
nop
add %rbp, %rbp
lea addresses_WT_ht+0x367f, %r8
nop
nop
nop
sub $49793, %rbx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
sub $6523, %r13
lea addresses_normal_ht+0x7c13, %rsi
lea addresses_WT_ht+0x54c3, %rdi
nop
nop
nop
dec %rbp
mov $43, %rcx
rep movsl
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x6293, %rbp
nop
nop
nop
nop
nop
dec %rsi
movl $0x61626364, (%rbp)
nop
xor $8707, %r13
lea addresses_UC_ht+0x1c093, %rsi
lea addresses_WT_ht+0x4335, %rdi
nop
and $43035, %rbx
mov $66, %rcx
rep movsq
nop
nop
nop
nop
sub $31296, %r8
lea addresses_UC_ht+0x3813, %rsi
lea addresses_UC_ht+0xa893, %rdi
nop
nop
nop
nop
xor $6440, %rbp
mov $60, %rcx
rep movsq
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x1ce13, %rsi
lea addresses_WC_ht+0xa93, %rdi
nop
nop
nop
cmp %r13, %r13
mov $64, %rcx
rep movsl
nop
nop
nop
nop
nop
and $48349, %rdi
lea addresses_A_ht+0x198c3, %rdx
clflush (%rdx)
nop
dec %rcx
movl $0x61626364, (%rdx)
nop
add $40387, %rdi
lea addresses_A_ht+0x18113, %rsi
nop
nop
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x13893, %rsi
lea addresses_D_ht+0x1e2d6, %rdi
clflush (%rsi)
dec %rdx
mov $32, %rcx
rep movsw
nop
nop
nop
xor $46059, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbx
push %rsi

// Store
lea addresses_normal+0xc093, %r10
clflush (%r10)
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
add $50166, %r11

// Faulty Load
lea addresses_normal+0xc093, %rsi
add $40334, %r13
movaps (%rsi), %xmm2
vpextrq $1, %xmm2, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'48': 244, '32': 1, '2a': 4, '44': 469, '1d': 3, '49': 3, '00': 18146, '38': 2, '45': 2952, '73': 1, '08': 4}
00 00 00 00 00 48 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 45 00 00 00 00 45 45 45 00 00 00 48 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 45 45 45 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 45 00 44 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 48 44 00 00 44 00 00 00 00 44 00 45 00 00 00 00 45 00 45 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 44 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 44 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 45 45 00 45 00 48 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 45 45 45 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 44 00 00 00 00 45 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 48 00 00 00 00 00 00 44 00 00 00 00 45 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 45 00 00 00 45 00 45 00 45 00 00 00 00 45 45 00 45 00 00 45 00 45 00 00 45 00 00 00 44 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 44 00 00 00 45 45 44 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 48 00 00 00 00 45 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 45 00 00 44 45 00 00 00 00 00 00 00 00 00 00 44 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 48 00 00 45 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00
*/
