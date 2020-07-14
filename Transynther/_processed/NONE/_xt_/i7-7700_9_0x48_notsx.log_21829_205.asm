.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xa098, %rsi
lea addresses_UC_ht+0x33d8, %rdi
nop
add $62927, %r13
mov $113, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x26a, %rsi
lea addresses_D_ht+0x1b588, %rdi
nop
nop
nop
nop
and $24529, %r8
mov $51, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $48014, %rcx
lea addresses_WT_ht+0x11ca0, %r15
nop
xor $35930, %r13
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x1d8e8, %rsi
lea addresses_WT_ht+0xc9d8, %rdi
nop
nop
sub $37849, %r10
mov $44, %rcx
rep movsq
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x1d8d8, %r8
nop
nop
dec %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r8)
nop
cmp $60321, %r15
lea addresses_WC_ht+0x15688, %rsi
nop
nop
nop
nop
nop
add $19269, %r13
movb (%rsi), %r15b
nop
nop
nop
nop
nop
and $61990, %rcx
lea addresses_D_ht+0x9df8, %rsi
nop
nop
nop
nop
nop
and $10436, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm1, (%rsi)
nop
nop
nop
xor $46358, %r10
lea addresses_UC_ht+0x19590, %rsi
lea addresses_WT_ht+0x7738, %rdi
nop
cmp %r13, %r13
mov $78, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x181d8, %rsi
lea addresses_A_ht+0x1d458, %rdi
dec %rbp
mov $109, %rcx
rep movsq
add $38867, %rsi
lea addresses_WC_ht+0xb38, %rcx
xor $30125, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
cmp $187, %r15
lea addresses_normal_ht+0xf418, %rsi
lea addresses_D_ht+0x2274, %rdi
nop
nop
nop
add $37324, %r10
mov $118, %rcx
rep movsq
nop
nop
nop
nop
xor $1065, %r13
lea addresses_D_ht+0x1d5d8, %r13
nop
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x11fd8, %rsi
lea addresses_UC_ht+0x51d8, %rdi
xor %r8, %r8
mov $13, %rcx
rep movsq
nop
add %rcx, %rcx
lea addresses_UC_ht+0x171d8, %r10
and $61846, %rdi
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
add $7845, %r15
lea addresses_A_ht+0x1168e, %r10
nop
nop
nop
nop
nop
xor $35818, %r8
movw $0x6162, (%r10)
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x758, %r9
clflush (%r9)
nop
nop
and %rsi, %rsi
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
sub $44132, %rdi

// Store
lea addresses_WC+0x8217, %rdx
xor %r12, %r12
movl $0x51525354, (%rdx)
nop
sub $60768, %r12

// REPMOV
lea addresses_WT+0x182b8, %rsi
lea addresses_WC+0x149d8, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
cmp %r10, %r10
mov $84, %rcx
rep movsq
nop
inc %rdx

// Store
lea addresses_A+0x17258, %r12
nop
nop
nop
cmp $43862, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0x185d8, %rax
nop
nop
nop
nop
sub $1997, %r12
movl $0x51525354, (%rax)
and $22811, %r9

// REPMOV
lea addresses_D+0x16718, %rsi
lea addresses_WC+0x4fc0, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $78, %rcx
rep movsw
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_normal+0x41d8, %rcx
nop
nop
inc %rsi
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
