.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1ec0c, %rsi
nop
nop
nop
xor %r15, %r15
movw $0x6162, (%rsi)
nop
nop
inc %r15
lea addresses_D_ht+0x13814, %rsi
lea addresses_normal_ht+0x14c14, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $11, %rcx
rep movsq
xor $48550, %r13
lea addresses_D_ht+0x5c0d, %rsi
lea addresses_A_ht+0x11a0c, %rdi
nop
nop
nop
nop
nop
cmp $43451, %r10
mov $105, %rcx
rep movsl
nop
add %r13, %r13
lea addresses_D_ht+0x1180c, %r15
and %rcx, %rcx
movups (%r15), %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
dec %r15
lea addresses_normal_ht+0xba0c, %rsi
lea addresses_D_ht+0x6e8c, %rdi
nop
nop
nop
and $29799, %r12
mov $61, %rcx
rep movsl
and %r13, %r13
lea addresses_normal_ht+0x4efe, %rsi
sub %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %rsi
movaps %xmm7, (%rsi)
nop
nop
nop
cmp $40215, %r13
lea addresses_D_ht+0xea0c, %r11
nop
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %r11
movaps %xmm7, (%r11)
nop
nop
nop
nop
and $17132, %r10
lea addresses_WT_ht+0xbf0c, %rsi
nop
nop
cmp %r13, %r13
movb $0x61, (%rsi)
and %r10, %r10
lea addresses_WC_ht+0x9c8c, %r10
nop
nop
nop
nop
dec %r15
mov $0x6162636465666768, %r12
movq %r12, (%r10)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x14e6c, %rsi
lea addresses_A_ht+0x10c0c, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $124, %rcx
rep movsl
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1400c, %rsi
lea addresses_WT_ht+0xe37c, %rdi
nop
nop
nop
sub $36966, %r15
mov $108, %rcx
rep movsl
add $30866, %r15
lea addresses_D_ht+0xa0c, %r12
nop
inc %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %r12
movntdq %xmm3, (%r12)
inc %rcx
lea addresses_normal_ht+0x1a4a2, %rsi
lea addresses_WC_ht+0xffbc, %rdi
nop
nop
nop
add %r12, %r12
mov $72, %rcx
rep movsq
nop
nop
dec %rsi
lea addresses_WT_ht+0x1a80c, %rsi
lea addresses_normal_ht+0x766c, %rdi
sub %r12, %r12
mov $126, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x17254, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0x3552830000000c0c, %r14
nop
nop
nop
nop
nop
add $56019, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
cmp %rax, %rax

// Faulty Load
mov $0x3552830000000c0c, %r14
nop
nop
and $8309, %rax
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'08': 3, '2a': 2, '44': 6749, '1c': 1, '68': 1, 'c7': 1, '3a': 1, '46': 1608, '49': 11, '00': 9543, 'ff': 4, '40': 6}
00 00 46 00 00 00 00 00 00 44 00 00 44 44 00 44 00 00 44 00 44 00 46 00 44 00 44 46 44 00 00 00 46 00 46 00 00 44 00 44 00 00 00 44 00 00 44 00 00 00 44 44 00 00 00 44 44 44 44 44 00 00 00 44 00 44 00 44 44 00 44 44 44 00 00 44 00 46 44 00 00 44 46 44 44 00 44 00 00 44 46 00 44 00 44 00 44 00 44 44 00 44 44 44 00 00 00 00 00 44 44 00 00 00 00 46 44 44 44 00 44 00 00 00 00 00 00 00 44 44 44 44 00 00 46 44 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 44 00 44 44 44 00 00 00 00 46 44 00 00 44 46 44 44 00 44 46 00 00 00 00 44 44 00 44 00 00 46 44 00 44 46 44 00 46 46 00 00 00 44 00 44 00 00 00 00 00 00 00 44 46 00 00 44 00 00 00 46 00 00 44 44 44 00 44 44 00 46 00 00 00 00 46 00 00 00 00 00 44 00 00 44 44 00 00 00 00 00 00 46 44 44 44 44 00 44 00 46 00 00 44 00 44 44 46 00 00 00 44 00 00 00 00 00 44 44 00 00 46 44 46 44 44 44 00 00 44 00 00 44 00 00 44 00 00 00 44 44 00 44 00 44 44 00 44 00 00 00 00 00 44 00 44 00 46 00 44 44 00 00 46 44 00 44 44 00 00 00 00 44 44 00 44 00 00 00 46 00 00 00 00 44 00 44 44 00 00 00 44 00 00 44 00 00 44 00 44 00 44 44 44 00 44 44 44 00 44 44 00 44 44 44 00 00 00 00 00 44 00 00 00 44 00 44 44 00 00 44 44 00 00 00 44 46 00 00 00 00 46 00 44 00 00 00 00 00 44 00 44 00 44 44 00 00 44 00 00 44 44 44 00 00 00 44 44 00 00 00 44 44 00 44 00 00 00 44 00 00 00 00 46 44 44 44 44 44 00 00 00 44 00 00 00 44 44 00 44 00 00 44 44 46 44 00 46 44 46 46 44 00 00 00 00 44 00 44 00 00 00 00 44 00 44 00 44 44 00 00 44 44 00 44 00 00 44 44 00 00 00 44 44 00 00 00 44 00 44 00 44 00 46 00 44 00 44 44 00 00 00 00 46 44 44 44 00 46 44 44 44 00 44 00 46 46 44 00 44 00 44 44 00 00 00 00 00 00 00 44 00 44 44 44 46 00 00 44 44 00 44 00 00 00 00 44 44 00 44 44 44 00 44 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 46 00 00 00 00 00 00 44 00 00 44 00 00 44 46 44 00 44 44 44 44 00 44 44 44 00 00 44 00 00 44 00 44 44 44 00 44 46 44 00 00 00 00 00 44 44 44 44 00 00 44 00 00 00 44 44 00 00 46 00 00 44 46 46 00 44 46 44 44 44 44 00 00 00 00 00 44 44 00 00 00 00 44 44 44 44 44 44 44 00 00 44 00 44 00 46 00 44 46 00 46 46 44 00 00 44 00 00 44 44 44 00 00 46 00 00 46 00 46 00 44 00 44 44 00 00 44 44 00 00 44 44 00 00 00 00 00 44 00 44 46 00 44 44 44 00 46 44 00 44 46 00 00 46 00 00 00 46 00 00 00 00 00 00 44 00 44 00 00 44 00 44 00 44 44 00 00 46 00 44 00 00 00 46 44 00 00 44 00 44 44 44 00 44 44 46 44 00 00 00 00 46 00 44 44 00 44 44 00 00 00 00 00 00 00 44 00 00 44 00 00 00 44 44 00 00 44 44 44 00 44 00 00 00 00 00 00 00 00 44 00 00 00 44 44 44 00 44 46 00 00 44 00 00 00 00 00 00 00 44 00 44 00 44 00 00 44 44 00 44 44 44 00 00 44 44 44 44 00 00 00 00 46 46 00 44 44 44 00 00 44 00 44 44 00 44 44 44 00 00 00 00 44 44 00 46 00 00 44 44 00 44 44 44 00 44 44 00 44 44 00 00 44 44 44 00 00 00 00 00 44 44 44 00 00 00 44 00 44 00 46 00 44 00 00 00 44 00 00 00 44 44 44 00 00 44 00 00 44 46 44 00 46 44 00 00 00 00 00 44 00 44 00 44 00 00 00 44 44 00 00 46 44 00 00 44 00 00 44 44 00 44 44 44 00 00 44 00 44 44 44 00 46 44 00 00 00 00 00 44
*/
