.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdx
lea addresses_WT_ht+0x1a990, %r9
clflush (%r9)
nop
cmp $2770, %rdx
movw $0x6162, (%r9)
xor $8357, %rbp
lea addresses_A_ht+0x3c44, %rcx
nop
nop
cmp $50767, %r8
movb (%rcx), %al
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x18f44, %rax
nop
nop
nop
and $59743, %r14
mov (%rax), %rbp
nop
nop
nop
cmp %rbp, %rbp
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx

// Store
lea addresses_D+0xf3dc, %r10
nop
nop
nop
xor $1638, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r10)
nop
nop
xor %r10, %r10

// Load
mov $0x6441380000000a04, %r13
nop
nop
nop
inc %r11
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
sub $62220, %r9

// Load
mov $0x5aa6fb00000002d8, %rax
sub $24835, %r13
mov (%rax), %r8
nop
nop
xor %r9, %r9

// Store
lea addresses_WC+0xc344, %r11
nop
xor $1925, %r13
movl $0x51525354, (%r11)
inc %r13

// Store
lea addresses_A+0x19b44, %r11
nop
dec %rax
movw $0x5152, (%r11)
sub %rax, %rax

// Store
lea addresses_A+0x1b84, %r10
nop
cmp %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovntdq %ymm6, (%r10)
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_US+0xcb44, %rax
nop
nop
nop
nop
add %r8, %r8
movb (%rax), %r10b
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'52': 19}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
