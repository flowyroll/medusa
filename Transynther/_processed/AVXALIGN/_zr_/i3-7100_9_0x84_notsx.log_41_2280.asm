.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rdi
push %rdx
lea addresses_normal_ht+0x198c1, %rax
nop
xor %r8, %r8
movups (%rax), %xmm3
vpextrq $1, %xmm3, %r10
nop
cmp $32522, %rdx
lea addresses_WC_ht+0x19c97, %r12
nop
nop
nop
nop
sub $44263, %rax
mov (%r12), %di
nop
nop
xor $19402, %r12
lea addresses_WC_ht+0xb243, %r8
nop
nop
nop
add %r9, %r9
movb $0x61, (%r8)
cmp $1023, %rax
lea addresses_UC_ht+0x15b97, %r9
nop
nop
nop
nop
nop
sub %r10, %r10
movups (%r9), %xmm2
vpextrq $1, %xmm2, %r12
xor %rdx, %rdx
lea addresses_WT_ht+0xf4ab, %rax
nop
nop
nop
nop
nop
add %r12, %r12
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
nop
nop
cmp $41955, %r12
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WC+0x7897, %rbp
nop
nop
nop
cmp $51964, %r11
movw $0x5152, (%rbp)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_A+0x15b17, %rsi
nop
nop
nop
nop
nop
inc %rdx
movl $0x51525354, (%rsi)
nop
nop
dec %r15

// Store
mov $0x3d31580000000d17, %r15
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovntdq %ymm3, (%r15)
nop
nop
nop
nop
and $50655, %r11

// Faulty Load
lea addresses_UC+0xc097, %r10
nop
nop
nop
nop
nop
xor %rdx, %rdx
movaps (%r10), %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 41}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
