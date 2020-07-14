.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15b2b, %rbx
nop
add $10812, %r10
mov (%rbx), %eax
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x1302b, %r15
nop
nop
nop
nop
cmp %r14, %r14
mov (%r15), %ecx
nop
nop
nop
nop
and $50047, %r15
lea addresses_WT_ht+0x1d72b, %rcx
nop
nop
add %r13, %r13
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
nop
cmp $13262, %rax
lea addresses_A_ht+0x1823, %r13
nop
nop
nop
nop
sub $31193, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r13
movaps %xmm6, (%r13)
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x3f9b, %rsi
lea addresses_WC_ht+0xdfeb, %rdi
nop
nop
nop
cmp $7394, %r10
mov $89, %rcx
rep movsb
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0xce33, %rsi
lea addresses_normal_ht+0x5b27, %rdi
nop
nop
sub $64859, %r13
mov $40, %rcx
rep movsw
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xbb2b, %r15
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r15)
add $34756, %rax
lea addresses_A_ht+0x1bbb3, %r10
nop
nop
sub $51164, %rax
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
nop
sub $30699, %r14
lea addresses_WT_ht+0x1c32b, %rax
nop
nop
and $29131, %rbx
movw $0x6162, (%rax)
nop
nop
inc %rdi
lea addresses_normal_ht+0x4b, %rsi
lea addresses_WC_ht+0x6f30, %rdi
clflush (%rdi)
add %r10, %r10
mov $44, %rcx
rep movsb
nop
nop
nop
nop
cmp $16273, %rdi
lea addresses_normal_ht+0xd58, %r13
nop
nop
dec %rbx
movb (%r13), %r15b
nop
nop
nop
nop
cmp $19593, %rax
lea addresses_UC_ht+0x8fab, %rsi
lea addresses_WC_ht+0x1e22b, %rdi
nop
nop
nop
cmp $25153, %r15
mov $52, %rcx
rep movsq
nop
nop
nop
nop
sub $32669, %r14
lea addresses_WC_ht+0xc22b, %rsi
lea addresses_UC_ht+0x16f2b, %rdi
cmp %r13, %r13
mov $60, %rcx
rep movsw
nop
nop
nop
nop
xor $30227, %r10
lea addresses_UC_ht+0x7cf, %r13
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r13)
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rdx

// Faulty Load
lea addresses_normal+0x1ab2b, %rdx
nop
nop
sub %r15, %r15
movb (%rdx), %r12b
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rdx
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'34': 475}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
