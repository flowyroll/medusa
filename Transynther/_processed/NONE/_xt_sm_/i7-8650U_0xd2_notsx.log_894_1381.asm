.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x9a71, %rsi
lea addresses_normal_ht+0x90f1, %rdi
nop
nop
nop
nop
dec %r13
mov $22, %rcx
rep movsb
nop
and $49991, %r9
lea addresses_WC_ht+0x1e0bd, %rbp
nop
nop
inc %rsi
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm7
vpextrq $0, %xmm7, %rdi
nop
sub $42302, %rbp
lea addresses_WC_ht+0xc271, %rsi
lea addresses_UC_ht+0x6871, %rdi
nop
cmp $35312, %r15
mov $81, %rcx
rep movsq
nop
nop
nop
add $28275, %rdi
lea addresses_normal_ht+0x2771, %rsi
nop
nop
nop
nop
nop
xor %r9, %r9
movb $0x61, (%rsi)
nop
nop
dec %r13
lea addresses_UC_ht+0x149e3, %rsi
lea addresses_WC_ht+0xdc11, %rdi
nop
nop
and %r9, %r9
mov $19, %rcx
rep movsq
nop
nop
dec %rsi
lea addresses_WC_ht+0x11569, %rsi
lea addresses_normal_ht+0x10149, %rdi
nop
nop
nop
inc %r9
mov $123, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x13871, %rcx
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x1da71, %r13
nop
nop
nop
nop
nop
and $26986, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
nop
and $61670, %r13
lea addresses_normal_ht+0x75b1, %r13
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%r13)
inc %rsi
lea addresses_normal_ht+0x19531, %r13
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
add $43997, %rcx
lea addresses_normal_ht+0x16e71, %rsi
nop
nop
nop
nop
nop
dec %r9
mov (%rsi), %rcx
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0xed81, %rdi
cmp %rsi, %rsi
mov (%rdi), %rbp
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x7e71, %rsi
lea addresses_A_ht+0x1b71, %rdi
nop
nop
dec %rdx
mov $110, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x11c45, %rsi
lea addresses_UC_ht+0xc9b1, %rdi
clflush (%rsi)
nop
nop
nop
and $6459, %r13
mov $81, %rcx
rep movsw
cmp %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xa7c9, %rcx
nop
add $6617, %r14
movb $0x51, (%rcx)
nop
nop
nop
inc %r13

// Store
lea addresses_normal+0x14a71, %rax
nop
add $8184, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rax)
nop
nop
add %r8, %r8

// Load
lea addresses_WT+0x7271, %rsi
nop
nop
nop
and %r8, %r8
mov (%rsi), %r14w
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_normal+0x14a71, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rdi), %r13d
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'58': 894}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
