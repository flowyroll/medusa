.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x179c4, %r12
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r12)
and %r9, %r9
lea addresses_UC_ht+0xfd49, %rbp
cmp %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x71c4, %rdx
nop
dec %rdi
mov (%rdx), %r14w
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x181c4, %rdi
nop
nop
inc %r12
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
nop
xor $11756, %rbp
lea addresses_D_ht+0x9504, %r12
clflush (%r12)
nop
nop
cmp $7664, %rdi
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
xor $4409, %rdi
lea addresses_WC_ht+0x10c4, %rsi
lea addresses_WT_ht+0x12698, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $46644, %rdx
mov $12, %rcx
rep movsq
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x10884, %rbp
nop
nop
nop
nop
and %rcx, %rcx
mov (%rbp), %r14w
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_normal+0x49c4, %r15
nop
nop
nop
nop
nop
add $29340, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r15)
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0x3396, %r12
add $13595, %r11
movb $0x51, (%r12)
nop
nop
nop
xor $45112, %rbp

// Store
lea addresses_A+0xef1f, %r15
nop
nop
nop
xor $22932, %r8
movl $0x51525354, (%r15)
cmp $36033, %r8

// Store
lea addresses_US+0x15dc4, %r15
clflush (%r15)
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%r15)
add %r12, %r12

// Faulty Load
lea addresses_US+0x89c4, %rax
nop
nop
nop
nop
nop
and $48423, %rbp
movb (%rax), %r15b
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 16103, '00': 5726}
58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 00 58 00 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 00 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 00 00 00 00 58 00 00 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 00 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 00 00 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58
*/
