.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xeac8, %rsi
lea addresses_normal_ht+0x11180, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $88, %rcx
rep movsb
nop
xor $21313, %rbx
lea addresses_A_ht+0x80e8, %rcx
nop
nop
nop
nop
nop
and $14309, %r10
movw $0x6162, (%rcx)
add %r13, %r13
lea addresses_A_ht+0xba10, %rsi
nop
nop
nop
nop
nop
and $46295, %rbx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
nop
cmp $14274, %rdi
lea addresses_WC_ht+0x1bfb0, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
movw $0x6162, (%rdi)
dec %r10
lea addresses_WC_ht+0x6cc8, %rsi
lea addresses_UC_ht+0xc248, %rdi
clflush (%rdi)
nop
xor $41154, %r14
mov $53, %rcx
rep movsb
nop
nop
cmp $36929, %rsi
lea addresses_WT_ht+0xa698, %rsi
lea addresses_normal_ht+0x183c2, %rdi
clflush (%rdi)
inc %r15
mov $23, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x748, %r15
nop
nop
nop
nop
and $7851, %r13
movl $0x61626364, (%r15)
and $33772, %r14
lea addresses_WT_ht+0xba48, %rcx
nop
nop
nop
sub $937, %rdi
mov (%rcx), %r13d
nop
nop
nop
nop
nop
xor $20740, %rbx
lea addresses_normal_ht+0x1b848, %r15
nop
nop
nop
cmp $18868, %rcx
mov (%r15), %rdi
nop
nop
xor $29950, %rbx
lea addresses_UC_ht+0x2bb8, %rdi
inc %rsi
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r15
nop
and $57406, %r13
lea addresses_WC_ht+0x13448, %r10
inc %r14
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x18e1c, %r14
nop
nop
add $27770, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm4
and $0xffffffffffffffc0, %r14
movntdq %xmm4, (%r14)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x10624, %rsi
nop
nop
dec %r10
movb $0x61, (%rsi)
nop
and %r14, %r14
lea addresses_WC_ht+0x3068, %rdi
nop
nop
nop
nop
nop
add $14462, %r14
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
nop
sub $57676, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rdx

// Store
lea addresses_normal+0x4248, %rbp
nop
nop
dec %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%rbp)

// Exception!!!
nop
mov (0), %rbp
nop
nop
nop
add $3483, %r12

// Load
lea addresses_normal+0x4248, %r15
nop
nop
nop
nop
and %r8, %r8
mov (%r15), %ebp
nop
nop
nop
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_normal+0x4248, %r15
nop
nop
nop
nop
nop
xor %rdx, %rdx
movntdqa (%r15), %xmm2
vpextrq $0, %xmm2, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'00': 80, '58': 1, '16': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
