.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x2a73, %rsi
nop
nop
sub $26116, %r15
movl $0x61626364, (%rsi)
nop
add %r9, %r9
lea addresses_WT_ht+0x167bd, %rax
nop
nop
add %r15, %r15
mov (%rax), %rcx
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x1d8f3, %r9
nop
nop
nop
nop
nop
dec %r12
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
xor %r12, %r12
lea addresses_normal_ht+0x1ccf3, %rcx
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
add $13748, %r12
lea addresses_normal_ht+0xa4b3, %rsi
nop
nop
and $35904, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xa5a3, %rsi
lea addresses_WC_ht+0x195fb, %rdi
nop
nop
nop
nop
nop
sub $28335, %r9
mov $41, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0x7a2f, %rdi
nop
nop
nop
nop
nop
and $61118, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
nop
and %rax, %rax
lea addresses_A_ht+0xef3, %rcx
nop
add $25997, %r9
movb $0x61, (%rcx)
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x18df3, %rsi
lea addresses_A_ht+0x114f3, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r13, %r13
mov $91, %rcx
rep movsq
nop
nop
xor $45876, %rcx
lea addresses_WC_ht+0x5a18, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x160f3, %rdi
nop
nop
xor %r15, %r15
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
nop
dec %r15
lea addresses_WC_ht+0xa873, %rdi
nop
cmp $40319, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
dec %r12
lea addresses_D_ht+0x130f3, %rsi
lea addresses_D_ht+0x160f3, %rdi
xor %r12, %r12
mov $40, %rcx
rep movsq
nop
nop
cmp $17673, %rdi
lea addresses_normal_ht+0x98f3, %rsi
lea addresses_UC_ht+0x18733, %rdi
nop
cmp $23183, %r9
mov $55, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x80f3, %r13
nop
nop
and %r15, %r15
movw $0x6162, (%r13)
and $23108, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rbx
push %rcx

// Store
lea addresses_D+0x1a0f3, %r14
nop
sub %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
sub %r14, %r14

// Store
lea addresses_PSE+0x1311b, %rbx
clflush (%rbx)
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_UC+0xe0f3, %rcx
nop
nop
nop
and $12905, %r13
movntdqa (%rcx), %xmm6
vpextrq $1, %xmm6, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'44': 2850, '45': 658, '08': 1, '00': 1424, '46': 16896}
00 46 46 46 46 46 44 46 00 00 00 46 46 46 46 46 46 44 44 44 46 46 46 46 46 46 46 44 44 44 44 46 44 46 46 46 46 46 44 45 46 46 46 46 46 46 46 46 45 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 44 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 46 00 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 00 46 46 00 46 46 00 45 46 46 44 44 46 45 46 44 46 46 46 46 46 46 00 46 44 46 44 46 46 44 46 46 46 45 44 44 46 46 44 44 46 46 46 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 44 44 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 44 44 45 44 44 44 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 44 44 45 46 46 46 44 44 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 46 44 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 45 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 44 44 46 46 46 46 46 46 46 46 46 45 46 46 46 44 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 46 46 46 45 46 46 46 46 46 46 46 00 46 00 46 45 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 44 44 46 44 44 44 44 45 44 44 46 44 46 44 46 46 46 46 46 46 46 00 46 46 46 44 46 46 46 46 44 44 44 46 46 44 46 46 46 46 46 46 46 44 46 46 44 44 45 00 46 08 46 00 00 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 44 44 46 46 00 46 46 46 46 46 00 46 44 46 44 44 44 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 44 46 46 46 45 46 44 46 46 46 00 46 46 46 46 46 46 46 46 46 46 45 44 44 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 45 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 44 46 46 44 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 46 46 46 44 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 44 46 46 44 44 46 46 46 44 44 44 46 46 46 46 46 44 46 46 46 46 46 44 44 44 44 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 00 46 46 44 46 46 46 44 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 00 45 46 44 44 46 44
*/
