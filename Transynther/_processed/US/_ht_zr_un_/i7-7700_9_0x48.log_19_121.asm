.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rdx
push %rsi
lea addresses_WC_ht+0x6503, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add $63118, %rsi
movw $0x6162, (%r15)
nop
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdx
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rsi

// Load
lea addresses_D+0x3743, %r12
nop
nop
nop
sub %r13, %r13
mov (%r12), %rbx
cmp %r12, %r12

// Store
lea addresses_US+0x12543, %rsi
nop
cmp %r13, %r13
movw $0x5152, (%rsi)
nop
inc %rsi

// Load
mov $0x3869510000000543, %r13
nop
nop
nop
and %rax, %rax
mov (%r13), %r10w
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WT+0xa7cb, %r13
nop
nop
nop
nop
add %rbx, %rbx
movb $0x51, (%r13)
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_US+0x12543, %rsi
clflush (%rsi)
nop
nop
xor %r13, %r13
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'40': 1, '08': 10, 'd6': 3, 'ff': 1, '00': 4}
00 ff 08 00 08 08 08 00 00 40 08 08 d6 08 08 d6 d6 08 08
*/
