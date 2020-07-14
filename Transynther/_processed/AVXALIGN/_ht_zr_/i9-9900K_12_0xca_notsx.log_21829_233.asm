.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x436d, %rsi
lea addresses_WC_ht+0x1bf6d, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $104, %rcx
rep movsq
nop
nop
nop
nop
add $57004, %rcx
lea addresses_A_ht+0x7175, %rax
nop
nop
nop
nop
and %r10, %r10
mov (%rax), %r12
nop
xor %r10, %r10
lea addresses_WT_ht+0x8b8d, %rdx
nop
nop
nop
nop
nop
and $41484, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
nop
add $42248, %rcx
lea addresses_WC_ht+0x1b3ed, %r10
nop
nop
dec %rdi
movups (%r10), %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
dec %rax
lea addresses_normal_ht+0x1de35, %rcx
nop
nop
nop
nop
nop
and $56041, %rdx
movw $0x6162, (%rcx)
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x17ced, %rcx
inc %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0xa52b, %rdx
nop
cmp %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, (%rdx)
xor $36334, %r12
lea addresses_UC_ht+0x133f3, %r10
add %rdi, %rdi
movb $0x61, (%r10)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1db6d, %rsi
lea addresses_WC_ht+0x53ad, %rdi
sub %rdx, %rdx
mov $27, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x144ed, %rsi
lea addresses_UC_ht+0x17fed, %rdi
nop
nop
nop
nop
inc %rbp
mov $20, %rcx
rep movsq
inc %r12
lea addresses_UC_ht+0x2aad, %rsi
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
nop
and $59181, %rdi
lea addresses_A_ht+0x17b6d, %rsi
lea addresses_WT_ht+0xe700, %rdi
nop
dec %r12
mov $45, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x19d6d, %rcx
nop
nop
nop
nop
nop
and $39571, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rdi

// Store
lea addresses_UC+0x1a831, %rax
clflush (%rax)
nop
nop
nop
nop
inc %r9
movl $0x51525354, (%rax)
sub %r10, %r10

// Faulty Load
lea addresses_PSE+0x1bf6d, %r14
nop
add %r12, %r12
vmovntdqa (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'46': 774, '00': 5317, '45': 13097, '48': 2641}
45 45 45 45 00 45 45 45 00 00 45 00 45 48 45 48 45 45 48 45 45 00 45 48 48 45 48 45 45 48 45 45 00 45 48 45 00 45 00 45 00 45 46 48 46 45 45 45 00 45 48 00 45 45 48 45 45 48 48 45 48 46 00 45 45 45 00 45 45 45 00 45 48 45 45 48 45 48 45 45 46 45 00 45 48 45 45 48 45 00 45 00 45 48 45 45 00 45 45 45 45 45 45 45 48 46 45 45 00 45 00 45 45 45 45 45 00 48 00 45 00 45 00 45 00 45 00 45 48 45 45 48 45 00 45 45 45 45 48 45 45 48 45 45 48 00 45 00 45 48 45 45 00 45 00 45 48 00 45 00 45 48 45 45 48 45 45 00 45 00 45 00 45 48 00 45 45 45 48 45 00 45 45 00 45 00 45 00 45 00 45 48 45 45 45 48 46 45 00 45 45 45 48 00 45 00 45 48 46 45 45 48 45 45 00 48 00 45 45 00 45 48 45 45 00 45 48 45 00 00 45 48 46 45 48 46 45 00 45 46 48 48 00 45 48 45 45 00 45 45 00 45 00 00 45 45 45 00 45 00 45 48 00 45 00 45 45 48 48 48 45 00 45 48 45 45 00 45 00 00 45 00 00 45 00 45 48 46 00 00 45 48 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 00 45 48 48 45 45 45 45 45 45 45 00 45 45 45 48 48 45 00 45 00 45 00 00 45 00 45 00 45 00 45 45 45 45 48 45 45 48 45 00 45 45 45 45 48 45 45 45 45 45 48 48 45 48 45 45 48 45 45 00 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 45 00 45 48 45 45 48 45 45 48 45 45 00 45 00 45 45 00 45 45 45 45 00 45 48 45 45 48 45 45 48 45 45 00 45 48 45 45 48 45 45 00 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 00 45 45 00 45 00 00 45 00 45 00 45 46 48 46 45 45 45 00 45 00 00 45 48 45 00 00 45 45 48 48 45 48 46 45 48 48 48 45 45 48 45 45 48 45 45 46 00 45 00 45 48 45 45 48 45 45 00 45 00 45 45 48 46 45 48 46 00 45 45 45 45 00 45 00 45 48 00 45 45 48 45 00 45 45 45 00 45 48 45 45 45 45 00 45 46 00 45 46 45 48 00 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 48 45 45 00 45 45 00 48 00 45 00 45 00 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 48 45 00 45 00 48 45 45 45 00 45 00 45 00 45 48 45 45 00 45 48 45 45 48 00 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 48 46 45 48 48 45 45 45 45 45 45 45 45 00 45 45 00 00 45 45 00 45 00 45 00 45 00 45 45 00 45 45 45 00 45 45 45 00 00 00 45 45 00 45 48 45 45 45 45 00 45 00 45 45 45 45 45 45 48 45 45 45 00 00 45 45 45 45 45 45 45 00 45 00 45 48 46 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 00 45 00 45 46 00 45 00 45 00 45 00 45 45 00 45 45 00 48 45 00 45 00 45 00 45 48 45 45 48 45 45 00 45 45 45 45 45 48 45 45 48 45 45 48 45 45 45 45 45 45 00 45 00 45 48 45 45 48 45 45 48 45 45 45 00 45 00 45 45 45 45 48 45 00 45 48 48 46 45 00 45 48 46 00 45 45 45 45 45 00 45 45 48 45 45 48 00 45 48 45 45 48 45 45 00 45 48 45 45 45 45 48 45 45 48 45 00 45 00 45 00 45 00 45 00 45 00 45 45 45 45 48 45 45 48 45 45 00 45 00 45 45 46 48 48 45 45 48 45 45 48 45 45 45 00 45 45 45 45 45 45 00 45 48 00 45 45 00 45 45 00 45 00 00 45 48 46 45 45 00 45 00 45 48 45 45 00 45 00 00 45 45 45 48 45 45 00 45 45 45 45 48 00 45 00 45 48 45 45 46 00 45 45 45 45 00 45 00 45 45 45 45 45 00 45 46 00 45 00 45 48 45 45 48 45 45 00 45 45 45 45 45 45 00 45 46 46 45 48 00 45 00 45 45 45 00 45 48 48 45 00 45 00 45 00 45 00 45 45 45
*/
