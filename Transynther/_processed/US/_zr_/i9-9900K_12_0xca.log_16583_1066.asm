.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x123bb, %rdx
and $10730, %rsi
movw $0x6162, (%rdx)
cmp %r13, %r13
lea addresses_normal_ht+0x1220b, %rdx
nop
sub $47848, %rdi
movw $0x6162, (%rdx)
nop
dec %rdi
lea addresses_A_ht+0x1ca4b, %r8
cmp $50882, %r12
mov (%r8), %rdi
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x13a0b, %rsi
lea addresses_A_ht+0x81a3, %rdi
nop
nop
nop
cmp $49299, %r10
mov $40, %rcx
rep movsq
nop
nop
nop
nop
nop
add $62322, %r10
lea addresses_normal_ht+0x164c3, %r12
nop
sub $40805, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm2
and $0xffffffffffffffc0, %r12
vmovaps %ymm2, (%r12)
nop
nop
xor $25315, %rcx
lea addresses_UC_ht+0x1c7eb, %rsi
lea addresses_A_ht+0x1e02b, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $42, %rcx
rep movsb
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x250b, %rdx
sub $20254, %r12
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x1ca3b, %rcx
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x4aa1, %rdi
nop
nop
add $4275, %r10
movb $0x61, (%rdi)
nop
nop
xor $59498, %rcx
lea addresses_WT_ht+0x389b, %rsi
lea addresses_D_ht+0x1ae0b, %rdi
clflush (%rsi)
nop
nop
nop
and %rdx, %rdx
mov $65, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $43170, %r12
lea addresses_UC_ht+0x60b7, %rsi
sub $30380, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_PSE+0x896f, %r13
clflush (%r13)
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovntdq %ymm3, (%r13)
nop
nop
cmp %r8, %r8

// Store
lea addresses_US+0x2c8b, %rbp
nop
nop
nop
nop
nop
add $55159, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
sub $26856, %rbp

// Load
mov $0x6b870f00000004f0, %r10
nop
nop
cmp %r8, %r8
mov (%r10), %cx
nop
nop
dec %r10

// Store
lea addresses_RW+0x43ed, %rbp
nop
nop
nop
cmp $7283, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
cmp $17375, %r9

// Store
lea addresses_US+0x10f8b, %rbp
nop
nop
nop
nop
xor $6654, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%rbp)
nop
nop
xor %r13, %r13

// Store
lea addresses_US+0x1ce0b, %r8
xor %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r8)
nop
cmp %r10, %r10

// Faulty Load
lea addresses_US+0xf60b, %r13
nop
nop
nop
nop
nop
and $43654, %rbp
mov (%r13), %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'00': 16583}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
