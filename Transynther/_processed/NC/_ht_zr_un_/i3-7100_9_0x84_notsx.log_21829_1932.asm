.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xc590, %rsi
lea addresses_UC_ht+0x2c70, %rdi
nop
sub %r8, %r8
mov $79, %rcx
rep movsq
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0xe300, %rbp
nop
sub %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x20f0, %rdx
nop
nop
nop
nop
xor $56944, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
sub $20556, %rsi
lea addresses_A_ht+0x1be70, %rcx
nop
nop
nop
nop
nop
xor $27602, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0xc870, %rcx
nop
xor $62846, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_PSE+0x166a0, %rsi
xor %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
nop
inc %r13

// Load
mov $0x2d0, %r12
nop
nop
nop
nop
nop
inc %r15
movb (%r12), %al
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_US+0x1858, %rax
nop
nop
dec %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rax)
inc %r12

// Store
lea addresses_US+0x19070, %rax
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
and %rdx, %rdx

// Store
lea addresses_D+0x4970, %r12
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r12)
nop
add $4416, %r12

// Store
mov $0xd30, %rdx
and %rsi, %rsi
movb $0x51, (%rdx)
nop
nop
nop
sub $9062, %rsi

// Store
lea addresses_normal+0x1c3b0, %rsi
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%rsi)
nop
nop
and $34290, %r13

// Store
lea addresses_WT+0x137f0, %r13
nop
and %rsi, %rsi
movw $0x5152, (%r13)
nop
nop
and %r12, %r12

// Store
lea addresses_A+0xbf28, %rcx
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rcx)
nop
nop
inc %rcx

// Store
lea addresses_normal+0x1bb70, %rdx
nop
add $53854, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovntdq %ymm1, (%rdx)
and $60519, %r13

// Store
lea addresses_WT+0x17e11, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%r13)
cmp $31347, %r12

// Faulty Load
mov $0x4ee1ce0000000070, %rax
xor %rcx, %rcx
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'22': 1, 'ab': 1, 'a7': 1, '6d': 1, '60': 1, 'd6': 1, '03': 1, '02': 1, '46': 4961, '00': 16857, '17': 2, 'ee': 1}
00 00 46 00 00 46 46 00 46 00 00 00 00 00 46 00 46 00 46 00 00 00 00 00 46 46 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 00 46 46 46 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 46 46 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 46 46 00 00 46 46 00 00 00 00 00 00 00 46 46 46 46 00 00 46 46 46 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 46 00 46 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 46 00 46 00 00 00 00 00 00 46 00 00 00 00 46 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 46 46 00 00 46 46 46 00 00 00 00 00 00 00 46 46 00 46 00 00 46 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 46 00 00 00 46 00 46 00 00 00 00 00 00 46 46 00 00 00 46 46 46 00 00 46 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 46 00 00 00 46 46 00 46 46 46 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 46 46 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 46 46 00 00 46 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 46 00 46 00 46 00 46 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 46 00 46 46 00 46 00 00 00 00 00 46 00 46 46 00 00 00 46 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 46 46 46 00 46 46 00 46 46 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 00 00 46 46 00 46 46 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 46 46 00 46 00 46 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 46 46 00 46 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 46 00 46 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 00 46 46 00 00 00 00 46 00 46 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 46 46 46 46 00 00 00 00 00 00 00 00
*/
