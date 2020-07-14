.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1969, %r8
nop
nop
sub $653, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0xf875, %rsi
lea addresses_normal_ht+0x5875, %rdi
nop
nop
nop
nop
dec %r15
mov $46, %rcx
rep movsq
nop
inc %rsi
lea addresses_A_ht+0x1bd75, %rsi
lea addresses_UC_ht+0x17c75, %rdi
nop
inc %rbp
mov $85, %rcx
rep movsq
nop
dec %rdi
lea addresses_WT_ht+0xf875, %rcx
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
sub $9361, %rbp
lea addresses_UC_ht+0xc875, %rsi
lea addresses_normal_ht+0x17075, %rdi
nop
nop
nop
nop
nop
xor $41695, %rbp
mov $56, %rcx
rep movsl
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0x6979, %rsi
nop
nop
nop
and $46749, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
nop
sub %r8, %r8
lea addresses_normal_ht+0x121d5, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
inc %r10
lea addresses_A_ht+0x6bed, %r8
nop
nop
nop
nop
cmp $16074, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
dec %rsi
lea addresses_D_ht+0x1994d, %rcx
cmp $38169, %r10
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
sub $4344, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rdi

// Store
mov $0x776f3900000007f5, %rdi
nop
nop
sub %rbx, %rbx
movw $0x5152, (%rdi)
nop
nop
xor $61536, %r14

// Store
lea addresses_D+0x1f875, %rbx
nop
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_D+0x1a075, %rbx
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 37}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
