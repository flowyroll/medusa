.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xef92, %rcx
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%rcx)
nop
nop
and $5802, %r14
lea addresses_A_ht+0xe9d2, %rbp
and $41383, %r10
movb (%rbp), %r12b
nop
nop
dec %rbp
lea addresses_normal_ht+0x1efd2, %rdi
nop
sub %rbp, %rbp
movl $0x61626364, (%rdi)
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x7552, %rdi
nop
nop
dec %r14
mov (%rdi), %r10w
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xacaf, %rsi
lea addresses_UC_ht+0x15906, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $55, %rcx
rep movsw
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x8266, %rsi
lea addresses_A_ht+0x8852, %rdi
nop
nop
add %r10, %r10
mov $118, %rcx
rep movsl
nop
nop
cmp $12269, %rdi
lea addresses_UC_ht+0xa6ca, %r10
nop
sub %r14, %r14
movl $0x61626364, (%r10)
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x173d2, %rdx
nop
nop
nop
nop
xor %r12, %r12
movb $0x51, (%rdx)
nop
nop
nop
dec %r10

// Store
lea addresses_normal+0x9612, %r9
nop
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%r9)
nop
nop
sub $28501, %rdx

// Store
mov $0xd2, %r12
nop
nop
add $7774, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
nop
add $28121, %rdx

// Store
lea addresses_A+0x12776, %r8
nop
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_A+0xa825, %r8
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r8)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_US+0x107fe, %r9
nop
nop
xor $23741, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r9)
nop
xor $29261, %rdx

// Store
lea addresses_WT+0xe1d2, %rdx
nop
nop
dec %r8
movl $0x51525354, (%rdx)
and %rcx, %rcx

// REPMOV
lea addresses_WT+0x13db2, %rsi
lea addresses_WC+0xb5d2, %rdi
nop
and %r12, %r12
mov $127, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_UC+0xdd2, %rcx
clflush (%rcx)
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
add $44271, %rax

// Store
mov $0x42333c0000000412, %r10
nop
nop
nop
xor $16789, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r10)
nop
nop
sub %r8, %r8

// Store
lea addresses_A+0xca72, %rdx
nop
sub $15146, %rcx
movw $0x5152, (%rdx)
nop
nop
nop
nop
cmp $23270, %rdi

// Store
lea addresses_A+0x1a582, %rsi
nop
nop
nop
nop
cmp $44178, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
and $11758, %rdi

// REPMOV
lea addresses_WC+0x1c76c, %rsi
lea addresses_A+0x1b9d2, %rdi
clflush (%rdi)
nop
nop
xor %r12, %r12
mov $23, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $52206, %rdx

// Store
mov $0xf849000000008ca, %r12
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r12)
nop
and %rsi, %rsi

// Store
lea addresses_WT+0x163b2, %r9
and $18521, %r12
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
add $36013, %r9

// Faulty Load
mov $0x6b88dd0000000dd2, %r12
nop
nop
xor %rcx, %rcx
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'ec': 1}
ec
*/
