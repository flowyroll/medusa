.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf470, %r14
nop
nop
inc %rbp
movl $0x61626364, (%r14)
nop
xor $49666, %rbx
lea addresses_D_ht+0x19b28, %r12
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
and $62412, %r12
lea addresses_WC_ht+0x11916, %r8
clflush (%r8)
nop
nop
nop
nop
and %r14, %r14
movl $0x61626364, (%r8)
cmp %r14, %r14
lea addresses_A_ht+0x10a50, %rsi
lea addresses_WT_ht+0xaf10, %rdi
nop
nop
nop
cmp %r13, %r13
mov $76, %rcx
rep movsb
dec %r12
lea addresses_UC_ht+0x13070, %rbx
nop
nop
nop
and %r13, %r13
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
add $34637, %rbx
lea addresses_normal_ht+0x7570, %r14
nop
nop
nop
sub $616, %r8
movb $0x61, (%r14)
xor $63741, %rbx
lea addresses_A_ht+0x470, %rsi
lea addresses_normal_ht+0x1e5be, %rdi
nop
nop
nop
nop
nop
add $64525, %r8
mov $52, %rcx
rep movsw
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x169d8, %r8
nop
nop
nop
sub %rbp, %rbp
movw $0x6162, (%r8)
nop
inc %r14
lea addresses_WC_ht+0x75f0, %rbx
nop
nop
nop
nop
add $3395, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
and $13364, %rdi
lea addresses_WC_ht+0x4a70, %r13
clflush (%r13)
sub %rbp, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x1cbf0, %r13
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%r13)
nop
nop
inc %rcx
lea addresses_normal_ht+0xedf0, %rsi
lea addresses_WT_ht+0x16670, %rdi
nop
nop
sub %r9, %r9
mov $76, %rcx
rep movsw
nop
nop
and %r14, %r14
lea addresses_WC_ht+0xcf28, %r12
nop
and $3127, %r13
movl $0x61626364, (%r12)
nop
nop
nop
nop
sub $45844, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xf070, %rdx
nop
nop
nop
nop
xor $1612, %r15
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
nop
nop
nop
cmp $9417, %r15

// Faulty Load
mov $0x22ac010000000070, %rsi
nop
nop
nop
nop
nop
add $18896, %r14
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 2}}
{'08': 2, '40': 1, '42': 4, '45': 8294, '00': 13528}
00 00 00 00 45 00 00 45 00 45 45 45 45 45 00 00 45 45 45 00 00 00 00 00 00 45 00 45 00 00 45 00 00 45 00 00 00 45 00 00 00 00 45 45 45 45 45 00 45 00 00 00 00 00 00 00 45 00 00 00 00 45 45 45 45 00 00 00 00 45 00 45 00 00 00 45 00 45 45 00 00 45 45 00 45 45 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 45 00 00 45 45 00 45 45 45 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 45 45 45 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 45 00 45 00 45 00 45 00 45 45 45 45 00 45 00 00 00 45 45 00 00 45 45 45 00 45 00 45 45 45 45 00 45 00 00 45 00 00 45 45 45 45 45 00 45 00 00 00 00 00 00 00 45 45 00 00 45 45 00 00 00 00 45 45 45 00 45 00 00 45 00 45 00 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 45 45 00 45 45 00 45 45 45 45 45 00 00 00 45 00 45 00 00 45 45 45 00 45 00 00 00 00 00 45 00 00 45 45 00 42 45 00 45 00 00 00 00 45 00 00 00 45 00 00 45 00 00 45 45 00 45 45 00 00 00 45 45 45 00 45 45 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 45 45 00 45 45 00 00 00 00 45 45 45 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 45 00 45 00 45 00 00 00 45 00 00 45 00 45 00 00 45 45 45 00 00 00 00 45 00 45 45 00 00 45 45 45 00 00 00 00 00 00 00 45 45 45 45 00 45 45 00 00 00 00 00 00 45 00 45 45 45 00 00 00 00 00 00 45 45 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 45 45 00 00 45 45 00 45 00 00 00 00 45 45 45 45 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 00 45 00 45 45 00 45 00 00 45 00 45 45 45 00 45 00 45 00 45 45 00 00 45 00 45 00 00 00 00 45 00 00 00 00 45 45 45 00 45 45 00 45 00 00 45 45 00 45 00 00 00 45 00 45 00 00 00 00 45 00 45 00 00 45 45 00 00 45 45 45 00 45 00 45 00 45 00 45 00 00 45 00 00 00 45 00 45 00 00 00 00 45 45 45 00 00 45 00 00 00 45 45 00 00 45 45 00 45 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 45 45 00 45 00 45 00 45 45 45 00 00 00 00 45 00 00 00 45 45 00 45 45 45 45 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 45 00 45 00 00 00 00 00 45 00 45 00 00 00 45 00 45 45 00 45 45 45 45 00 00 00 00 45 45 45 45 00 00 00 00 45 00 00 00 00 45 45 45 00 00 45 00 00 00 00 45 00 45 00 45 00 00 00 45 45 45 00 00 45 00 00 45 45 00 00 00 00 00 45 00 45 00 45 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 45 00 00 45 45 45 00 00 00 00 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 00 45 00 00 00 00 45 00 00 45 00 45 45 00 00 45 00 45 00 00 45 45 45 00 00 00 45 00 00 45 45 00 45 00 00 00 00 45 00 00 00 45 45 45 45 45 00 00 00 00 00 45 00 00 45 00 45 00 45 00 00 45 00 00 00 00 00 45 00 00 45 45 00 00 45 45 00 45 45 00 00 00 00 45 45 00 00 00 45 45 45 45 00 45 45 45 45 00 45 45 00 00 45 00 45 45 00 00 45 45 45 00 00 45 45 45 45 00 45 45 00 45 45 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 45 45 45 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 45 00 45 45 45 45 45 00 00 45 45 00 00 00 45 00 00 00 45 00 45 45 45 45 00 00 00 00 45 45 45 45 00 00 45 00 00 45 45 45 45 00 45 45 00 45 00 00 00 00 00 00 45
*/
