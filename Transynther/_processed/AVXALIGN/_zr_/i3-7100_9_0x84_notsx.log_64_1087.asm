.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13fc, %r13
nop
nop
nop
nop
nop
sub $47236, %r11
mov (%r13), %r14d
and $52353, %r15
lea addresses_WT_ht+0x18bfc, %rsi
lea addresses_D_ht+0x90fc, %rdi
nop
and $21371, %r11
mov $105, %rcx
rep movsw
xor $56592, %r15
lea addresses_UC_ht+0x179dc, %rsi
cmp $19136, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x1ceec, %rdi
nop
add %r11, %r11
movw $0x6162, (%rdi)
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x151fc, %rcx
nop
nop
nop
inc %r15
mov (%rcx), %r11d
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x5abc, %rcx
nop
xor %rsi, %rsi
mov (%rcx), %r11w
sub $25571, %r14
lea addresses_WT_ht+0x1393c, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdi)
xor $58577, %r13
lea addresses_UC_ht+0x180fc, %rsi
nop
add %r11, %r11
movw $0x6162, (%rsi)
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x14d88, %r15
nop
sub $42357, %r13
movb (%r15), %cl
nop
nop
nop
nop
nop
add $17205, %rcx
lea addresses_normal_ht+0x1adbc, %rsi
lea addresses_WC_ht+0x113fc, %rdi
nop
and %r11, %r11
mov $17, %rcx
rep movsl
sub $60262, %r11
lea addresses_normal_ht+0x23fc, %rdi
nop
nop
nop
xor %r15, %r15
mov (%rdi), %r14d
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x3ffc, %rsi
lea addresses_WC_ht+0x5bfc, %rdi
nop
nop
inc %r12
mov $50, %rcx
rep movsq
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x1dffc, %rsi
lea addresses_WT_ht+0x1d3fc, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x148cc, %rdi
nop
nop
inc %rsi
movw $0x6162, (%rdi)
nop
nop
xor $35275, %r13
lea addresses_D_ht+0x11660, %r11
clflush (%r11)
nop
nop
nop
nop
add %r14, %r14
mov (%r11), %si
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbp
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0xe3fc, %rbx
nop
nop
nop
and %rbp, %rbp
mov (%rbx), %di
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 64}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
