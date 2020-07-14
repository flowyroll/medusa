.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x108ce, %rsi
lea addresses_WC_ht+0x1350e, %rdi
nop
nop
cmp $17826, %r11
mov $58, %rcx
rep movsq
and $37350, %rbp
lea addresses_normal_ht+0x5f43, %rsi
lea addresses_WC_ht+0x1290e, %rdi
clflush (%rsi)
nop
nop
xor $40710, %r14
mov $1, %rcx
rep movsb
nop
nop
nop
nop
add $56523, %rbp
lea addresses_UC_ht+0x1c0e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r8, %r8
movb (%rdi), %r14b
and %r14, %r14
lea addresses_UC_ht+0xe8ce, %rsi
lea addresses_UC_ht+0x1028, %rdi
sub $20496, %rbx
mov $14, %rcx
rep movsb
nop
cmp $48536, %rbp
lea addresses_normal_ht+0x10cae, %rsi
lea addresses_D_ht+0x28fe, %rdi
xor $30554, %rbp
mov $46, %rcx
rep movsb
and $44049, %r8
lea addresses_WT_ht+0x1e10e, %r8
xor $1907, %r14
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x1216e, %rdi
nop
nop
nop
add %r11, %r11
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
cmp %r11, %r11
lea addresses_A_ht+0x367e, %rsi
lea addresses_WC_ht+0x380e, %rdi
clflush (%rsi)
nop
nop
nop
cmp $46936, %r14
mov $77, %rcx
rep movsl
cmp %r14, %r14
lea addresses_normal_ht+0xe712, %r14
nop
nop
nop
nop
inc %r11
mov (%r14), %rdi
nop
nop
xor $57666, %r8
lea addresses_UC_ht+0x1850e, %rbp
nop
nop
nop
nop
nop
add $28857, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0xd38e, %rdi
nop
nop
nop
nop
add $17505, %rcx
mov (%rdi), %ebx
nop
nop
nop
and $26355, %rcx
lea addresses_WT_ht+0xd1c6, %rcx
nop
add %rbx, %rbx
mov (%rcx), %r8
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x5a8e, %rdi
nop
nop
add $29001, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
nop
nop
xor $14247, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0xef2e, %rbx
nop
nop
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
mov $0x90e, %rcx
sub %r15, %r15
movl $0x51525354, (%rcx)
nop
nop
and $64426, %r12

// Store
lea addresses_WT+0xe10e, %rsi
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_WC+0x1490e, %rdx
nop
nop
add %rsi, %rsi
movl $0x51525354, (%rdx)
nop
and %r15, %r15

// Store
lea addresses_A+0x1471e, %rbx
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
nop
nop
xor $61246, %rdx

// Store
lea addresses_RW+0x13b0e, %r15
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
sub $35315, %rsi

// Load
mov $0x1a900a0000000e0e, %rax
nop
nop
nop
nop
nop
inc %rbx
movb (%rax), %cl
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_RW+0x1710e, %r15
xor %rcx, %rcx
movntdqa (%r15), %xmm6
vpextrq $0, %xmm6, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'58': 17212, '00': 4617}
58 00 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 00 58 58 58 58 58 58 00 00 00 58 58 58 58 00 58 00 58 58 58 00 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 58 58 58 58 00 00 00 58 58 58 00 00 58 58 58 00 58 58 58 58 00 58 58 58 00 00 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 00 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 00 58 58 00 00 58 00 00 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 00 00 00 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 58 00 58 58 00 00 58 58 00 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 00 58 58 58 58 00 58 00 00 00 58 00 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 00 58 00 58 58 00 58 58 58 00 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 00 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 00 58 00 00 58 58 00 00 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 00 58 58
*/
