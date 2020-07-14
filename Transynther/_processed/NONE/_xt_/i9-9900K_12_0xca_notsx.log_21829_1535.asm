.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xa312, %rsi
lea addresses_WC_ht+0x15f1f, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov $97, %rcx
rep movsl
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x15c1f, %rsi
lea addresses_D_ht+0x1e003, %rdi
nop
add %r10, %r10
mov $110, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x2107, %rsi
lea addresses_D_ht+0x1a26f, %rdi
clflush (%rdi)
nop
nop
cmp $56990, %r12
mov $102, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xba87, %r12
nop
sub $14178, %rdx
mov (%r12), %rdi
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x9cdf, %rcx
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rcx), %rsi
cmp $29207, %rsi
lea addresses_normal_ht+0xaff, %r12
nop
nop
inc %r15
movl $0x61626364, (%r12)
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x15137, %rsi
lea addresses_WT_ht+0x70d7, %rdi
nop
nop
nop
nop
dec %r10
mov $36, %rcx
rep movsw
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x10b1f, %r15
clflush (%r15)
nop
nop
nop
add $672, %rdi
movups (%r15), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x157df, %rsi
lea addresses_D_ht+0xff1f, %rdi
nop
nop
nop
nop
sub $49047, %rdx
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0xf9f, %r15
nop
inc %rcx
mov (%r15), %edi
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xa21f, %rcx
xor $62570, %r15
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0xda7f, %r15
nop
nop
nop
cmp $37211, %rdx
movl $0x61626364, (%r15)
nop
nop
nop
nop
add $42637, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rcx

// Store
lea addresses_WT+0xb1b5, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
inc %r13
movl $0x51525354, (%rbp)
nop
and %rbp, %rbp

// Faulty Load
lea addresses_WT+0x19b1f, %rbp
nop
nop
nop
nop
nop
cmp $8957, %r12
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
