.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x18ee8, %rdx
sub $24792, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
nop
dec %r13
lea addresses_D_ht+0x12268, %rsi
nop
nop
nop
sub $9695, %r14
mov (%rsi), %ax
nop
cmp %rax, %rax
lea addresses_A_ht+0xa8e8, %rsi
nop
nop
nop
nop
nop
xor %rax, %rax
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
nop
sub $21616, %rsi
lea addresses_A_ht+0x5868, %rsi
lea addresses_UC_ht+0x193b8, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $117, %rcx
rep movsb
nop
inc %r13
lea addresses_UC_ht+0x16528, %rsi
lea addresses_normal_ht+0x1c5c8, %rdi
clflush (%rdi)
nop
nop
add $14361, %rax
mov $78, %rcx
rep movsl
nop
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x10b68, %rax
nop
dec %rdx
movw $0x6162, (%rax)
nop
sub %r13, %r13
lea addresses_A_ht+0x15aa8, %rsi
lea addresses_D_ht+0x1c968, %rdi
nop
cmp $57095, %rax
mov $5, %rcx
rep movsq
nop
nop
nop
xor $32209, %r14
lea addresses_normal_ht+0x8068, %rsi
lea addresses_A_ht+0x189c8, %rdi
nop
nop
nop
nop
xor $12295, %rbp
mov $82, %rcx
rep movsl
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x18f28, %rsi
lea addresses_WT_ht+0x1a2e8, %rdi
nop
cmp %r13, %r13
mov $32, %rcx
rep movsq
xor $28800, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbp
push %rbx
push %rdx

// Store
lea addresses_UC+0x1d7e8, %rdx
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_US+0x6728, %r10
nop
nop
nop
and $33281, %rdx
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_WT+0x17d68, %r10
nop
nop
nop
nop
add $32336, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r10)
nop
add $45444, %rbx

// Store
mov $0x1313510000000848, %rbp
nop
nop
and $20296, %rdx
movl $0x51525354, (%rbp)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_A+0x14028, %r9
cmp %r10, %r10
movw $0x5152, (%r9)
nop
nop
nop
and %r9, %r9

// Faulty Load
mov $0x218b3000000008e8, %rdx
nop
nop
nop
inc %rbx
vmovntdqa (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'44': 2127, '45': 9204, '00': 1715}
00 00 00 45 45 45 45 45 45 45 00 45 44 45 00 45 45 44 00 45 45 44 45 00 45 00 45 45 00 45 45 45 44 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 44 45 00 44 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 44 45 45 45 00 45 44 00 44 45 45 00 45 00 44 00 45 45 44 45 45 45 45 44 45 44 45 45 44 45 44 45 00 45 45 44 45 44 00 45 45 45 44 45 45 45 44 45 45 45 44 45 44 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 44 44 44 45 45 45 44 45 00 44 45 45 45 45 45 45 00 45 00 44 45 45 00 00 44 45 45 00 45 00 45 45 44 45 00 45 45 45 45 45 45 00 45 00 44 45 44 00 45 00 45 45 45 45 45 44 45 45 00 44 45 45 45 45 00 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 44 45 45 00 45 45 44 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 44 44 45 45 44 45 00 45 45 45 44 45 45 45 45 44 00 45 45 44 45 44 00 45 45 45 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 44 44 45 45 00 45 45 00 00 45 45 45 45 45 00 45 44 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 44 45 45 00 45 45 00 45 45 45 00 45 45 45 45 45 44 00 45 44 45 45 44 45 44 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 44 45 45 45 45 44 45 45 45 45 45 45 44 44 45 45 44 45 45 00 45 45 44 45 45 00 45 45 45 45 45 44 45 45 00 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 44 45 45 44 00 45 44 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 44 45 44 00 45 45 00 45 45 00 45 45 45 44 45 44 45 45 45 45 44 45 00 45 45 00 44 44 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 44 45 44 00 44 45 00 45 44 45 45 44 45 45 00 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 44 45 45 45 45 45 45 44 00 45 45 45 44 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 44 45 00 45 45 45 45 00 44 45 45 00 45 45 45 45 45 45 45 00 45 45 45 44 45 45 45 45 44 45 45 45 44 00 45 45 45 44 00 00 44 44 45 00 00 00 45 45 45 45 45 44 45 44 00 45 00 44 45 45 44 44 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 44 45 00 44 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 44 45 00 45 44 45 45 45 45 45 45 45 45 00 44 45 45 45 45 45 45 45 45 45 44 00 00 45 45 45 00 45 45 45 44 44 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 44 45 44 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 00 45 45 45 45 44 45 44 44 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 00 45 45 45 45 00 45 45 45 44 45 45 45 45 44 45 00 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 00 45 00 45 44 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 45 00 00 45 45 45 00 45 00 45 45 44 45 45 45 45 45 45 45 45 44 45 45 44 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45
*/
