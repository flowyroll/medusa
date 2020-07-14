.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ad4, %rsi
lea addresses_D_ht+0xab74, %rdi
nop
nop
and %r8, %r8
mov $59, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x2d34, %rsi
lea addresses_WC_ht+0x17f04, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $64015, %r9
mov $124, %rcx
rep movsb
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x8c4, %rsi
lea addresses_UC_ht+0x79f4, %rdi
nop
sub %rax, %rax
mov $87, %rcx
rep movsw
nop
nop
inc %rsi
lea addresses_UC_ht+0x17674, %rdi
nop
xor %r9, %r9
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
xor $35269, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdx

// Store
mov $0x11725d0000000274, %r11
nop
nop
nop
nop
nop
and $15873, %r15
movl $0x51525354, (%r11)
nop
nop
cmp %r13, %r13

// Store
lea addresses_US+0x41d8, %r8
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
nop
nop
inc %r15

// Load
lea addresses_A+0x9e74, %r14
nop
nop
nop
xor $36532, %r13
mov (%r14), %r15
nop
inc %r8

// Faulty Load
mov $0x674, %rdx
nop
nop
nop
nop
and $11346, %rcx
movaps (%rdx), %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 718, '45': 259, '47': 2, '49': 3474, '48': 114}
49 49 49 45 00 49 49 00 49 49 49 00 49 00 45 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 48 49 49 49 49 45 00 49 45 49 49 49 49 00 49 49 49 49 49 49 49 49 00 45 49 45 49 49 49 49 00 45 49 49 00 49 48 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 00 00 49 49 49 45 49 48 49 49 49 49 00 49 49 49 00 49 49 49 00 49 45 49 49 49 00 49 00 49 49 49 49 49 49 47 49 00 49 00 49 00 00 45 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 45 00 45 49 49 49 49 00 49 49 49 49 45 00 45 49 49 49 49 48 49 48 49 45 49 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 48 00 45 49 48 49 49 49 49 45 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 00 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 45 49 49 49 45 49 00 00 49 49 49 49 49 00 49 49 00 49 00 49 49 00 49 49 49 00 49 00 48 49 00 00 49 49 00 49 49 00 45 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 00 48 49 49 45 48 49 49 49 49 49 00 49 49 49 48 00 49 49 49 49 49 49 49 49 49 00 49 49 49 00 00 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 00 49 49 00 00 49 49 49 49 00 49 49 49 00 49 49 49 49 49 49 49 45 00 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 00 49 48 49 49 00 49 49 49 45 49 49 49 49 45 49 00 00 49 00 49 49 49 49 49 00 49 49 49 49 45 00 49 00 00 49 45 45 49 49 49 00 49 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 45 45 45 00 49 49 00 49 49 00 45 49 49 49 49 00 00 00 49 49 49 45 49 49 00 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 45 49 00 49 49 49 49 49 49 00 49 49 48 49 00 00 00 49 49 49 49 45 00 48 49 49 49 49 49 00 49 49 00 00 49 49 48 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 48 00 49 49 49 49 00 45 49 49 49 00 49 49 00 49 49 45 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 45 49 49 49 49 49 49 45 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 00 49 49 00 49 49 49 49 45 49 00 49 00 49 48 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 00 49 48 49 49 49 00 49 49 00 49 49 49 49 00 45 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 00 00 49 49 49 49 00 49 49 49 45 00 00 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 49 45 45 49 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 48 49 00 49 49 49 49 00 49 49 49 49 49 00 45 49 49 49 45 49 49 49 49 49 49 49 45 49 49 49 00 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 00 00 49 00 49 49 00 49 49 49 49 00 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 48 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 00 49
*/
