.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rcx
push %rdx
push %rsi
lea addresses_normal_ht+0x1c65c, %r13
nop
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%r13)
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x1097a, %rsi
nop
nop
nop
sub $39708, %rdx
mov (%rsi), %rcx
nop
nop
nop
nop
nop
sub $54138, %r9
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbp

// Load
lea addresses_A+0x15cfa, %r8
nop
add %r12, %r12
mov (%r8), %r13
nop
nop
nop
cmp $1952, %r8

// Load
lea addresses_US+0x1ddda, %rax
nop
nop
nop
xor $25085, %r14
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
inc %rbp

// Store
lea addresses_PSE+0x1b0fa, %r9
nop
nop
nop
nop
nop
dec %rax
movw $0x5152, (%r9)
nop
cmp $13145, %r9

// Faulty Load
lea addresses_A+0x4fa, %rax
nop
nop
and %r13, %r13
mov (%rax), %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 199, '35': 8, '48': 6, '10': 5}
00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 35 00 00 00 00 35 00 35 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 10 00 00 35 00
*/
