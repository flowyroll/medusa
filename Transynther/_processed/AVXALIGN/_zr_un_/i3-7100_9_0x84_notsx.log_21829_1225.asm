.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7e18, %rsi
lea addresses_UC_ht+0x19478, %rdi
clflush (%rsi)
nop
nop
nop
sub $18100, %rdx
mov $59, %rcx
rep movsl
and %r13, %r13
lea addresses_A_ht+0x1b818, %rbp
clflush (%rbp)
nop
nop
nop
and $201, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x15658, %rsi
lea addresses_A_ht+0xa148, %rdi
nop
nop
nop
nop
lfence
mov $113, %rcx
rep movsq
nop
nop
nop
nop
nop
add $7843, %r11
lea addresses_A_ht+0x1a618, %rbp
nop
nop
sub $46372, %rdx
movw $0x6162, (%rbp)
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x13e18, %rsi
nop
nop
nop
dec %rdx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
cmp $19317, %r14
lea addresses_UC_ht+0x9218, %r11
nop
nop
nop
nop
inc %rsi
movb $0x61, (%r11)
add $44975, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rdx
push %rsi

// Store
lea addresses_A+0x2518, %r11
nop
sub %r13, %r13
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0x2258, %rdx
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
inc %rsi

// Store
lea addresses_A+0x1e6a8, %r10
nop
cmp $16351, %rdx
movw $0x5152, (%r10)
nop
sub %r14, %r14

// Store
lea addresses_WT+0x3618, %r13
clflush (%r13)
nop
nop
nop
nop
inc %r10
movw $0x5152, (%r13)
nop
nop
nop
nop
add $41019, %r15

// Store
lea addresses_WT+0x11f18, %rdx
xor %r13, %r13
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_normal+0xe918, %r11
nop
nop
nop
nop
nop
xor %r14, %r14
movw $0x5152, (%r11)
nop
nop
nop
xor %r13, %r13

// Store
mov $0x3ab3bc0000000e18, %r13
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovaps %ymm0, (%r13)
xor $38456, %rdx

// Faulty Load
lea addresses_UC+0x12a18, %rdx
nop
nop
xor $18714, %r10
vmovntdqa (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'04': 1, '80': 16269, '00': 5523, '08': 36}
04 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 00 80 80 00 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 00 00 80 80 00 80 80 80 80 80 80 00 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 00 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 00 80 80 80 80 80 80 80 00 80 00 80 00 00 80 80 80 80 80 80 80 00 80 80 00 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 80 00 80 00 00 80 80 80 00 80 80 80 00 80 80 80 80 00 80 00 80 80 80 80 80 80 80 80 80 80 00 00 80 00 80 80 80 00 00 00 00 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 00 00 80 80 80 80 00 00 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 00 80 80 00 80 80 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 00 80 00 80 80 80 80 80 80 80 80 00 80 00 80 80 00 00 80 80 80 80 00 80 80 80 80 00 80 80 80 00 80 80 80 80 80 00 80 00 80 80 00 80 80 80 00 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 00 80 80 00 80 00 80 80 80 80 80 80 80 80 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 00 00 00 80 00 00 00 80 80 80 00 80 80 80 00 80 80 80 80 80 80 00 80 80 00 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 80 00 80 00 80 80 80 80 80 80 80 80 80 80 80 00 00 80 80 80 80 80 00 80 00 80 80 80 80 80 00 80 80 80 80 80 00 80 80 80 80 00 80 00 80 80 80 80 80 80 80 80 80 80 80 00 80 80 80 80 00 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 00 00 80 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 80 00 80 80 00 00 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 00 80 80 80 80 08 00 00 80 80 80 80 00 80 80 80 00 80 80 00 80 80 80 80 80 80 80 80 00 00 80 80 00 80 80 00 80 80 80 80 00 00 80 80 80 80 80 00 80 80 80 80 80 80 00 00 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 00 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 00 80 80 00 00 80 80 80 80 80 80 00 00 80 80 80 80 80 80 80 80 80 80 80 00 80 80 80 80 00 80 80 00 80 80 80 00 80 80 80 00 80 00 80 80 80 00 00 80 80 00 00 80 80 00 00 80 80 00 80 00 80 00 80 80 80 00 80 00 80 00 00 80 00 80 00 80 80 80 80 80 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 00 00 80 80 00 80 80 80 80 00 80 00 00 00 80 80 80 80 80 80 00 80 80 80 80 00 80 80 80 80 80 80 00 00 80 80 80 00 80 80 00 80 80 00 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 00 80 00 00 80 80 80 80 80 00 80 80 80 80 00 80 80 00 80 80 80 80 80 00 00 80 80 80 80 00 80 00 80 80 80 80 80 80 80 80 00 80 00 80 00 00 80 00 80 80 80 80 80 00 00 80 80 80 80 80 80 80 80 80 80 80 80 00 80 80 80 80 00 00 80 80 80 00 00 80 80 80 80 00 80 80 80 80 80 80 00 80 80 80 00 80 80 80 00 80 80 80 00 80 80 80 80 80 80 00 80 00 80 80 80 80 00 80 00 80 00 80 80 00 80 00 00 00 80 00 80 80 80 80 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 80 80 00 80 80 80 00 00 80 00 80 80 80 00 80 00 80 80 80 80 00 80 80 00 80 80 80 00 80 80 80 80 80 00 00 80 00 80 00 00 80 80 80 80 00 80 00 80 80 80 80 80 80 80 80 00 00 80 80 80 80 00 80 80 80 00 80 80
*/
