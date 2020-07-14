.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x16351, %rsi
lea addresses_WC_ht+0x95e1, %rdi
nop
nop
nop
cmp $60972, %r9
mov $46, %rcx
rep movsq
nop
nop
nop
sub $14391, %rbp
lea addresses_WC_ht+0xf74d, %rsi
lea addresses_UC_ht+0x71c1, %rdi
nop
nop
nop
cmp %r8, %r8
mov $61, %rcx
rep movsl
nop
and $33392, %rbp
lea addresses_A_ht+0xe1b, %rsi
lea addresses_A_ht+0x3551, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $104, %rcx
rep movsw
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x10ada, %rsi
lea addresses_D_ht+0x1a231, %rdi
nop
nop
nop
cmp %r8, %r8
mov $85, %rcx
rep movsl
cmp $30536, %r13
lea addresses_WC_ht+0x17519, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $26225, %r9
mov (%rsi), %r8w
nop
sub %r9, %r9
lea addresses_WT_ht+0x15a51, %r8
nop
nop
and $25373, %rcx
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
nop
nop
xor $56281, %rbp
lea addresses_WT_ht+0x1d271, %rcx
nop
nop
nop
nop
cmp $51965, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rcx)
add %r9, %r9
lea addresses_UC_ht+0x32f7, %rcx
nop
and $57528, %rbp
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
cmp $25225, %rsi
lea addresses_UC_ht+0xeba5, %rcx
inc %r9
mov (%rcx), %rdi
nop
xor $37888, %r9
lea addresses_WT_ht+0x1d571, %rsi
nop
nop
nop
nop
nop
and $3976, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rsi

// Load
mov $0x2cf6a900000005a5, %rsi
nop
nop
cmp %r9, %r9
mov (%rsi), %r15
nop
add $41871, %rax

// Store
mov $0x151, %r15
nop
nop
nop
nop
nop
cmp $28326, %rcx
movb $0x51, (%r15)
nop
dec %rcx

// Store
lea addresses_WT+0xff91, %rcx
nop
inc %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovntdq %ymm2, (%rcx)
add %r12, %r12

// Store
lea addresses_UC+0x1dce9, %rsi
nop
and $56809, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
inc %rax

// Store
lea addresses_US+0x66b4, %r14
nop
nop
cmp $3264, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movups %xmm0, (%r14)
nop
cmp $28738, %r9

// Faulty Load
lea addresses_RW+0x2551, %rsi
clflush (%rsi)
nop
nop
nop
inc %rcx
mov (%rsi), %ax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'32': 25}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
