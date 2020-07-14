.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xba35, %r13
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x13935, %rdi
nop
nop
nop
cmp $47544, %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rdi)
nop
xor $61446, %rdi
lea addresses_WT_ht+0x1338d, %rdi
nop
nop
nop
nop
nop
xor $49629, %r15
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x4e20, %rdi
nop
nop
nop
nop
cmp $13607, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
and $7287, %rdi
lea addresses_normal_ht+0x46b5, %rsi
lea addresses_normal_ht+0xe835, %rdi
nop
sub %r9, %r9
mov $49, %rcx
rep movsb
nop
nop
inc %rcx
lea addresses_A_ht+0xc1cb, %rdi
nop
xor %r9, %r9
movb $0x61, (%rdi)
nop
nop
xor $56428, %r15
lea addresses_WT_ht+0x9c35, %r9
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%r9), %r14w
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x5ed, %r14
sub %r15, %r15
movw $0x6162, (%r14)
add $47842, %r15
lea addresses_WT_ht+0x7435, %rdx
nop
nop
nop
nop
xor %r9, %r9
mov (%rdx), %r13w
nop
and $17344, %rdx
lea addresses_WT_ht+0x13935, %rsi
lea addresses_UC_ht+0x135e1, %rdi
nop
xor $14903, %r13
mov $123, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $37282, %r15
lea addresses_D_ht+0x1075, %r9
nop
xor $45401, %rsi
movb (%r9), %r15b
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xedb5, %rdi
nop
nop
nop
nop
nop
and $46351, %rsi
movb (%rdi), %r9b
nop
nop
nop
xor $46884, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rdx

// Faulty Load
lea addresses_US+0x7e35, %rdx
nop
nop
cmp $50322, %rax
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'00': 7}
00 00 00 00 00 00 00
*/
