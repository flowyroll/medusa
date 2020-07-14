.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xab0f, %rdi
inc %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x14b8f, %r14
nop
nop
nop
nop
and $63985, %rbp
mov (%r14), %rbx
nop
nop
nop
nop
xor $21146, %rcx
lea addresses_normal_ht+0x980f, %rsi
lea addresses_A_ht+0x3ccf, %rdi
nop
nop
nop
nop
and $30138, %r12
mov $80, %rcx
rep movsb
nop
dec %r14
lea addresses_A_ht+0x728f, %rsi
lea addresses_A_ht+0x1e48f, %rdi
nop
nop
xor %r14, %r14
mov $119, %rcx
rep movsq
nop
nop
nop
and $27661, %r14
lea addresses_D_ht+0x1e10f, %rbx
nop
nop
cmp $57066, %rdi
mov (%rbx), %r15w
nop
nop
nop
nop
nop
sub $19735, %rbp
lea addresses_normal_ht+0x191b3, %rsi
lea addresses_normal_ht+0x188f, %rdi
and %r15, %r15
mov $62, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1cb8f, %rsi
lea addresses_normal_ht+0xf48f, %rdi
nop
nop
nop
nop
nop
and $3811, %r12
mov $86, %rcx
rep movsb
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x12eef, %rbx
nop
nop
nop
dec %rcx
movb (%rbx), %r12b
sub %rcx, %rcx
lea addresses_A_ht+0x1598f, %rdi
nop
nop
nop
xor $44067, %rbx
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x1db8f, %rbp
xor %rbx, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
nop
sub $62995, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Store
mov $0x94f, %r9
nop
nop
nop
nop
and %r14, %r14
movb $0x51, (%r9)
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_D+0x11a1f, %rax
nop
nop
nop
nop
cmp $56433, %r9
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_RW+0x348f, %rbp
nop
and $61822, %rdi
vmovntdqa (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 6}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'46': 13550, '44': 7281, '45': 997, '00': 1}
44 44 44 44 44 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 45 45 46 44 46 44 46 46 44 46 46 46 46 46 46 46 45 46 44 44 46 44 46 44 46 46 46 46 44 45 46 46 46 44 44 46 46 44 44 44 44 46 44 45 46 44 46 46 46 44 44 46 45 44 44 44 46 44 46 45 44 46 46 44 44 46 46 46 44 46 44 46 46 44 46 44 46 46 44 45 44 46 46 46 46 46 46 44 46 44 44 46 46 46 44 44 46 46 46 44 46 46 44 46 44 46 46 46 46 46 46 46 44 46 44 44 46 46 46 44 44 46 46 46 45 46 46 44 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 44 46 46 45 46 46 46 44 44 45 46 45 46 44 46 46 46 44 44 46 46 46 44 44 46 46 44 46 46 46 46 46 44 46 46 46 46 44 44 44 44 46 44 46 46 44 44 44 46 46 44 46 44 46 44 45 44 44 46 46 46 46 44 46 46 44 46 44 46 44 46 46 46 46 46 46 44 46 44 44 44 46 46 46 46 46 46 46 44 44 46 46 46 46 46 44 46 44 46 46 46 44 46 46 44 46 46 46 46 44 44 46 46 44 45 44 44 44 44 46 46 46 45 46 44 44 44 46 46 45 46 46 46 44 46 45 46 44 44 46 44 46 46 46 46 44 45 44 44 46 46 46 46 46 46 44 46 46 46 45 44 46 44 44 45 44 46 46 46 44 44 46 44 44 46 44 46 46 44 46 44 44 46 46 46 46 44 46 44 46 46 46 45 44 44 44 44 44 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 45 46 46 46 46 46 46 44 46 46 44 44 44 46 44 45 46 44 44 46 46 46 44 44 46 46 46 46 46 46 44 46 46 46 44 46 46 44 46 46 44 44 44 46 45 46 46 46 46 46 46 46 46 46 46 46 44 44 44 46 46 46 44 46 46 44 46 46 44 46 46 46 44 46 44 44 46 44 46 46 46 46 44 46 46 46 46 44 46 44 44 46 44 46 44 44 44 46 46 44 46 46 45 46 46 46 46 46 44 44 44 46 44 46 46 44 46 46 46 46 46 46 44 46 44 44 46 46 46 44 46 44 46 46 46 44 46 44 46 46 46 46 46 46 46 44 44 46 44 46 44 46 46 46 46 44 46 46 46 46 45 44 46 46 46 46 46 46 46 46 46 44 44 46 44 44 45 44 44 46 44 46 46 46 45 45 46 44 46 46 44 45 46 46 44 44 46 44 46 46 44 44 46 46 46 44 46 44 44 46 46 46 45 44 46 44 44 44 44 46 46 45 46 46 44 46 46 46 44 46 46 44 44 46 46 46 44 46 46 46 46 46 46 44 46 46 46 45 46 46 46 44 44 46 46 46 46 46 44 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 45 44 46 46 46 44 46 46 46 46 44 46 46 46 46 44 44 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 44 44 44 46 46 44 46 44 46 46 46 46 44 46 46 44 46 44 44 46 44 44 46 46 44 44 44 44 46 46 44 46 46 46 44 44 46 44 46 46 46 46 46 44 46 45 46 46 46 46 44 46 46 46 46 45 44 44 46 46 44 46 44 46 46 44 46 46 46 44 46 46 46 45 44 46 45 46 46 44 44 44 46 46 45 44 44 46 45 44 44 44 46 46 44 46 46 44 44 44 46 46 45 46 44 46 44 44 46 44 46 46 46 46 46 46 45 46 44 45 46 44 44 44 46 46 46 44 44 46 46 46 45 44 46 46 46 46 46 44 44 44 46 45 44 45 44 44 46 46 45 44 46 46 44 46 46 46 46 44 46 46 46 45 46 46 44 46 44 46 46 46 44 46 46 44 46 46 44 46 44 44 44 44 46 46 44 46 44 46 44 46 46 45 46 46 44 44 44 46 46 46 44 44 46 46 44 44 46 46 44 44 45 44 44 46 44 44 44 46 46 44 46 44 46 46 46 46 46 46 44 44 46 44 46 46 44 44 46 46 44 46 46 44 44 46 46 44 46 46 44 46 44 44 44 44 46 44 46 46 44 46 46 44 44
*/
