.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdx
push %rsi
lea addresses_A_ht+0x139cc, %r12
nop
nop
nop
nop
inc %rcx
movups (%r12), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x1dc4c, %rsi
nop
nop
nop
nop
dec %r13
movw $0x6162, (%rsi)
inc %r14
lea addresses_A_ht+0x12454, %rsi
nop
nop
nop
and $47732, %rax
movl $0x61626364, (%rsi)
nop
nop
nop
sub $30648, %r12
lea addresses_UC_ht+0xd9cc, %rsi
nop
xor $46350, %rax
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x20cc, %r14
nop
nop
nop
nop
and $41130, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x4594, %rcx
nop
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x191cc, %r12
nop
nop
nop
nop
and %rdx, %rdx
movw $0x6162, (%r12)
nop
nop
nop
nop
sub $4617, %r12
lea addresses_A_ht+0x1a38c, %rcx
nop
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x5acc, %r14
add $47606, %rcx
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rbx

// Store
lea addresses_WT+0x109bc, %rbx
nop
nop
xor $55781, %r8
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_normal+0x1bf4c, %rbp
nop
nop
nop
nop
nop
xor $57320, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
nop
inc %r10

// Store
lea addresses_D+0x2868, %r10
nop
nop
xor %r8, %r8
movl $0x51525354, (%r10)
nop
nop
and %r13, %r13

// Store
lea addresses_WT+0x1845e, %r13
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r13)

// Exception!!!
nop
nop
nop
mov (0), %r8
nop
add %rbx, %rbx

// Load
lea addresses_RW+0x1b4a, %rbx
inc %rbp
mov (%rbx), %r13
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
mov $0x1687900000001cc, %r12
nop
nop
nop
nop
nop
inc %r13
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'04': 1084, '72': 8, '00': 55, '08': 5, '20': 20676, '06': 1}
06 04 04 04 04 20 20 04 20 20 20 20 20 04 20 20 20 20 20 20 20 04 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 72 20 20 20 20 20 20 20 00 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 04 20 04 04 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 00 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 72 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 04 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 04 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 04 20 20 20 20 20 20 20 20 20 20 20 04 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 04 20 20
*/
