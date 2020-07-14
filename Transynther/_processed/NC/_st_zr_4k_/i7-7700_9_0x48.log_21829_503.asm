.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xbc02, %rsi
nop
nop
nop
nop
nop
add $63790, %r10
mov (%rsi), %bx
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x39a, %rsi
lea addresses_WC_ht+0x4622, %rdi
clflush (%rsi)
nop
nop
nop
cmp $44149, %r15
mov $93, %rcx
rep movsq
nop
nop
nop
and $5163, %rsi
lea addresses_D_ht+0x1e232, %rsi
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rsi)
nop
add $64959, %r15
lea addresses_A_ht+0xf12, %rbx
nop
nop
nop
nop
add $8255, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rbx)
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x13c62, %rcx
nop
nop
nop
nop
nop
sub $50165, %r10
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r13
cmp %r15, %r15
lea addresses_WC_ht+0x4ec6, %r13
nop
nop
nop
nop
nop
cmp $41995, %rsi
movw $0x6162, (%r13)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x153ea, %r10
clflush (%r10)
cmp $49644, %r13
mov (%r10), %ecx
nop
nop
nop
nop
nop
cmp $64022, %rbx
lea addresses_WT_ht+0xc526, %rcx
nop
and %r10, %r10
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x7992, %rsi
lea addresses_normal_ht+0x1b166, %rdi
nop
add $11903, %r13
mov $38, %rcx
rep movsl
nop
nop
nop
add $19252, %rdi
lea addresses_WC_ht+0x10a1c, %r10
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%r10)
nop
sub %r13, %r13
lea addresses_UC_ht+0x1062, %r13
nop
nop
and %rsi, %rsi
movb (%r13), %cl
nop
add $34850, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rdx

// Store
mov $0x270, %rbx
nop
nop
and %rax, %rax
movl $0x51525354, (%rbx)
nop
nop
nop
and $2740, %r12

// Store
lea addresses_US+0x1a9e2, %rdx
nop
nop
nop
nop
nop
and $54959, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovntdq %ymm3, (%rdx)
nop
nop
nop
nop
inc %r9

// Store
mov $0x62, %rbx
inc %r9
movl $0x51525354, (%rbx)
nop
inc %r14

// Faulty Load
mov $0x2c8a7f0000000062, %rdx
nop
nop
nop
nop
nop
xor $44972, %rax
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'54': 17046, '00': 4783}
54 54 54 54 54 00 00 54 54 54 00 54 54 54 54 54 54 00 54 00 54 54 54 00 00 54 00 00 00 00 00 54 54 54 54 54 54 54 00 00 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 00 54 54 54 00 00 54 00 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 00 54 54 00 00 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 00 54 00 54 54 54 54 00 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 00 54 54 54 54 00 54 54 00 00 54 54 00 00 00 54 54 00 54 54 00 54 54 00 54 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 54 00 54 00 54 00 54 54 54 54 54 54 54 54 00 00 54 00 00 54 54 54 54 00 54 00 54 54 54 54 54 54 54 00 00 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 00 54 54 00 54 54 54 00 54 00 54 54 54 00 54 00 00 00 00 54 00 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 00 54 54 00 54 54 54 54 54 54 54 00 54 54 54 00 00 00 54 54 00 54 00 54 00 54 54 54 54 00 54 00 54 00 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 00 00 54 54 54 54 00 54 00 54 54 00 00 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 00 00 54 54 54 00 54 00 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 00 00 54 00 54 54 00 54 54 54 54 00 54 54 00 00 00 00 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 00 00 54 54 54 00 00 00 54 54 54 54 54 00 54 00 54 54 54 00 54 54 54 54 00 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 00 00 00 54 54 54 00 54 00 00 00 54 54 54 54 54 54 54 00 00 54 54 00 00 54 54 54 54 00 00 54 54 54 54 54 00 54 54 54 54 54 54 54 00 00 00 00 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 00 54 54 54 54 54 00 54 00 54 00 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 00 54 00 54 54 54 54 54 54 54 54 54 00 00 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 00 00 54 54 54 54 54 00 54 54 54 54 00 54 54 54 00 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 00 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 00 54 54 54 54 00 00 54 54 54 54 54 00 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 00 54 00 54 54 00 54 00 00 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 00 54 00 00 54 54 54 54 00 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54
*/
