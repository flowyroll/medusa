.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_A_ht+0x5537, %rbx
nop
nop
add $12008, %rcx
movb $0x61, (%rbx)
nop
add $45548, %r8
lea addresses_UC_ht+0xffcd, %rbx
clflush (%rbx)
inc %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm4
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm4, (%rbx)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x19a83, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rdi
movaps %xmm3, (%rdi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0xdf43, %r14
nop
nop
nop
nop
nop
xor $56903, %rdx
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
cmp $11383, %rdx
lea addresses_UC_ht+0xdd37, %rdi
nop
nop
nop
nop
dec %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x1d837, %rcx
nop
add $13170, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x1c037, %rcx
nop
nop
nop
add %rbx, %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x16607, %r8
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
dec %rbx
lea addresses_A_ht+0xbaf3, %r8
add $55867, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
lfence
lea addresses_A_ht+0x1dd43, %rdi
nop
nop
cmp %rdx, %rdx
movb $0x61, (%rdi)
nop
add %rcx, %rcx
lea addresses_normal_ht+0x25e7, %rdx
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
cmp $30226, %rax
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdx

// Load
lea addresses_US+0x1a692, %r8
nop
nop
xor $2473, %rcx
movb (%r8), %r13b
nop
dec %rcx

// Store
mov $0xce3, %r14
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r14)
nop
nop
cmp %r8, %r8

// Store
lea addresses_US+0xd137, %r14
and %rdx, %rdx
movl $0x51525354, (%r14)
nop
nop
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_US+0xd137, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and %r8, %r8
movntdqa (%rbx), %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
