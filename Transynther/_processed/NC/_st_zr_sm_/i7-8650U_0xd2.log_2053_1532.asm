.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rdx
push %rsi
lea addresses_normal_ht+0x19bf3, %r8
nop
nop
and $52014, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x43f3, %rdx
nop
nop
nop
nop
and $24166, %r12
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x150f3, %r8
nop
add %r14, %r14
vmovups (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0xb093, %r10
nop
nop
nop
add $29418, %r12
movw $0x6162, (%r10)
nop
nop
and $9742, %rax
lea addresses_normal_ht+0x14901, %rdx
nop
nop
and %rax, %rax
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
nop
nop
sub $4147, %rsi
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rdi

// Store
mov $0x3ce3690000000bf3, %r10
nop
cmp $60202, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
nop
nop
nop
xor $60460, %rax

// Store
lea addresses_RW+0x96b, %r9
clflush (%r9)
nop
nop
nop
nop
nop
dec %r10
movw $0x5152, (%r9)
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_RW+0xda85, %rax
nop
nop
add %r8, %r8
movw $0x5152, (%rax)
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0x14a3, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
xor $52972, %rbp

// Store
mov $0x5040f50000000973, %r8
nop
nop
xor %r10, %r10
movl $0x51525354, (%r8)
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
mov $0x3ce3690000000bf3, %r9
xor %rbp, %rbp
mov (%r9), %r14d
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'58': 1668, '00': 385}
58 58 00 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 00 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 00 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 58 00 00 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 58 00 58 58 58 58 00 00 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 00 58 00 58 00 58 58 58 00 58 00 00 58 58 58 58 58 00 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 00 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 00 58 00 00 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 00 58 58 58 58 00 00 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58
*/
