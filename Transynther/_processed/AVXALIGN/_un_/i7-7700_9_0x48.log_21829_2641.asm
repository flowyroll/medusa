.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
lea addresses_WC_ht+0x14033, %rdi
dec %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
cmp $9130, %r10
lea addresses_WT_ht+0x63b3, %r15
nop
nop
nop
nop
nop
add $56618, %r12
movups (%r15), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
sub $20090, %rdi
lea addresses_normal_ht+0x2bf3, %r10
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
cmp $17381, %rbx
lea addresses_UC_ht+0x19233, %rcx
nop
nop
nop
add %r10, %r10
movb $0x61, (%rcx)
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x17633, %r10
nop
nop
nop
add %rcx, %rcx
movups (%r10), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0xad9f, %r15
nop
nop
nop
nop
add %rdi, %rdi
mov (%r15), %bx
nop
nop
nop
nop
add $42443, %r13
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rax
push %rbp
push %rdi
push %rdx

// Faulty Load
mov $0xa33, %rdi
nop
add $17627, %r12
vmovntdqa (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': True}}
{'08': 11717, 'a0': 10, '72': 10043, '04': 59}
04 a0 04 04 04 04 a0 a0 a0 04 04 04 04 04 a0 04 a0 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 a0 04 04 04 04 04 04 04 04 a0 04 a0 04 04 04 04 04 04 04 04 04 04 a0 04 04 04 08 08 08 08 72 08 08 08 08 72 08 08 08 08 08 72 08 08 08 08 08 08 08 72 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 72 08 08 08 08 08 08 08 08 08 08 72 72 08 08 72 08 08 72 08 08 08 08 08 08 08 08 08 72 08 08 08 72 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 72 72 08 08 08 08 72 08 72 72 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 72 08 08 08 08 08 72 08 08 72 08 72 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 72 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 72 08 08 08 08 08 08 72 08 08 08 08 08 08 72 08 08 08 72 72 72 08 72 72 08 08 72 72 72 72 72 72 72 72 72 72 08 08 72 72 08 72 72 72 08 72 72 08 72 72 72 08 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 08 72 72 72 08 08 72 72 08 08 08 08 08 72 08 72 08 08 08 08 08 72 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 72 72 72 08 08 08 08 08 08 08 08 72 08 08 08 08 72 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 72 08 72 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 72 08 08 72 08 08 08 72 08 08 08 08 08 72 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 72 72 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 72 08 08 72 72 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 72 08 72 08 08 08 72 08 08 08 08 08 72 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 72 08 08 08 08 08 08 08 08 08 08 08 72 72 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 72 72 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 72 08 08 08 08 08 08 08 08 72 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 08 08 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 72 08 72 08 08 08 08 08 08 08 08 72 08 08 08 08 08 08 08 08 08 08 72 08 72 72 72 08 72 72 72 08 72 08 72 08 72 72 72 72 72 72 72 08 08 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 08 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 08 72 72 72 08 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 08 72 72 72 72 72 72 72 72 08 72 72 72 72 08 72 72 72 72 08 72 72 72 72 72 72 72 72 72 72 08 72 08
*/
