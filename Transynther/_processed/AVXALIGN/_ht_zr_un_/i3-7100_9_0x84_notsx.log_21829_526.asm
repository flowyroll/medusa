.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x6d6e, %rcx
nop
sub $57975, %r14
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
nop
xor $6757, %r9
lea addresses_normal_ht+0x11ee, %rsi
lea addresses_normal_ht+0x1756e, %rdi
nop
nop
nop
nop
nop
and $27031, %rbx
mov $0, %rcx
rep movsw
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0xa16e, %rsi
lea addresses_A_ht+0x556e, %rdi
cmp %r8, %r8
mov $46, %rcx
rep movsw
nop
nop
nop
nop
sub $49315, %rsi
lea addresses_D_ht+0x1bb6e, %rbp
nop
nop
nop
nop
nop
add %r8, %r8
movb (%rbp), %bl
nop
nop
nop
nop
xor $34627, %r14
lea addresses_UC_ht+0xd922, %r14
sub $45733, %rcx
movb $0x61, (%r14)
nop
nop
nop
nop
nop
and $49852, %r14
lea addresses_D_ht+0x1c26e, %r8
nop
nop
cmp %rdi, %rdi
mov (%r8), %rbx
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x1ef6e, %rsi
lea addresses_A_ht+0x150be, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $122, %rcx
rep movsw
xor %rbx, %rbx
lea addresses_normal_ht+0x96fe, %rsi
lea addresses_WC_ht+0xdd6e, %rdi
xor %r9, %r9
mov $28, %rcx
rep movsb
inc %rsi
lea addresses_normal_ht+0x17086, %rsi
lea addresses_UC_ht+0x1416e, %rdi
nop
inc %r14
mov $10, %rcx
rep movsw
nop
nop
nop
sub $45587, %rbx
lea addresses_WT_ht+0x13bf6, %rdi
nop
nop
nop
nop
nop
xor $12633, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
cmp $10597, %rcx
lea addresses_WC_ht+0x566e, %rcx
nop
inc %rdi
movb (%rcx), %r8b
nop
nop
nop
nop
and $1263, %rdi
lea addresses_A_ht+0x4cb2, %rbp
nop
nop
nop
nop
nop
and %r14, %r14
mov (%rbp), %rcx
nop
nop
add $47973, %rbx
lea addresses_normal_ht+0xd22e, %rsi
lea addresses_normal_ht+0x1682e, %rdi
nop
nop
sub %r14, %r14
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $41439, %rdi
lea addresses_UC_ht+0x72be, %rsi
lea addresses_UC_ht+0xf350, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $25, %rcx
rep movsl
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x13a48, %r14
nop
nop
nop
nop
nop
inc %rsi
movw $0x6162, (%r14)
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r8
push %r9

// Store
lea addresses_D+0x1046e, %r14
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r14)
sub $56692, %r9

// Faulty Load
lea addresses_normal+0xdd6e, %r13
sub $24654, %r11
movntdqa (%r13), %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'49': 605, '00': 15711, 'b7': 1, '45': 2933, '44': 2579}
00 00 00 00 00 00 00 00 00 49 44 44 44 00 45 45 45 45 00 00 00 00 44 44 44 00 00 00 45 45 00 00 00 00 00 00 44 00 00 00 00 45 45 00 00 00 00 00 00 44 00 44 00 00 00 00 45 00 00 00 00 00 49 44 44 44 00 00 45 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 45 00 00 00 00 00 00 44 44 00 00 00 45 45 00 00 00 00 49 44 44 00 00 00 45 00 00 00 44 44 00 00 45 45 45 00 00 00 00 00 44 00 00 00 00 00 00 00 44 49 00 44 00 45 45 45 45 00 00 00 00 00 00 44 44 44 44 00 00 00 45 00 00 00 00 00 00 44 44 00 45 45 00 00 00 00 44 44 00 00 00 00 00 00 45 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 49 44 00 00 45 45 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 44 44 00 00 00 45 45 45 00 00 00 00 00 49 44 00 00 00 45 00 00 00 00 00 00 00 00 00 49 44 44 00 00 00 45 00 00 00 00 00 49 44 00 44 44 00 00 00 00 00 00 45 00 00 00 00 44 00 00 45 45 45 00 00 00 00 00 00 00 00 45 45 45 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 45 00 00 00 00 00 49 44 00 00 00 00 45 45 45 00 00 00 00 00 00 49 00 00 45 45 45 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 45 45 00 00 00 00 00 00 00 00 44 44 00 00 00 00 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 45 45 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 00 00 45 45 00 00 00 00 00 00 00 49 44 44 00 00 00 00 00 00 00 00 00 44 44 44 00 00 45 00 00 00 00 44 00 00 00 45 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 49 44 00 00 45 00 00 00 00 00 00 00 00 44 44 45 00 45 00 45 00 00 00 00 00 00 44 00 00 45 45 00 00 00 00 00 49 00 00 00 45 45 45 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 44 00 00 00 45 45 45 00 00 00 00 00 44 44 00 00 00 45 00 00 00 00 00 44 00 00 45 00 00 00 00 00 00 44 00 00 45 45 00 00 00 00 00 44 44 00 45 00 00 45 00 00 00 00 00 44 44 45 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 45 00 00 00 00 00 00 49 44 00 00 00 00 00 00 45 00 00 00 00 00 00 44 00 00 00 49 00 44 00 00 00 45 00 00 00 00 00 44 00 00 00 00 45 45 45 00 00 00 00 00 00 44 00 00 00 45 45 00 00 00 00 00 00 00 44 44 00 45 45 45 00 00 00 00 00 44 00 00 00 45 00 00 00 00 44 00 00 00 00 00 45 45 45 00 00 00 00 44 00 00 00 00 00 00 00 45 45 00 00 00 49 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 45 45 45 00 00 00 00 00 44 44 00 00 00 45 00 00 00 00 00 00 44 44 00 00 00 45 45 00 00 00 00 00 00 49 44 00 45 45 45 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 45 00 00 00 00 00 44 44 00 00 00 45 45 00 00 00 00 49 49 44 44 00 00 00 45 45 00 45 00 00 00 00 00 00 49 44 00 00 00 45 00 00 00 00 00 44 44 00 00 45 45 00 00 00 00 00 00 00 44 00 00 00 00 00 44 44 44 45 00 00 00 00 00 44 00 00 00 00 00 45 45 00 00 00 00 44 00 00 00 45 45 45 00 00 00 00 49 00 00 00 00 00 45 45 00 00 00 00 44 00 00 00 49 44 44 00 00 45 45 00 00 00 00 00 00 00 44 00 00 45 45 45 00 00 00 00 44 44 00 45 45 45 00 00 00 00 44 00 00 00 45 00 00 00 44 00 00 00 00 00 00 00 00 49 44 44 00 00 00 00 00 00 44 44 44 00 00 45 45 45 00 00 44 44 00 00 45 45 00 45 00 00 00 00 00 00 44 00 00 00
*/
