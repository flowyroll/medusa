.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rcx
push %rdi
push %rdx
lea addresses_normal_ht+0x1021c, %r10
nop
nop
nop
nop
inc %r12
mov (%r10), %rdi
nop
nop
xor $29905, %rcx
lea addresses_WC_ht+0x1075c, %rdx
nop
nop
nop
dec %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%rdx)
cmp %rax, %rax
lea addresses_normal_ht+0xb2e4, %rcx
nop
nop
dec %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%rcx)
nop
nop
inc %r10
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rax
push %rcx

// Store
lea addresses_D+0x1de1c, %r9
nop
nop
nop
nop
sub $33498, %rcx
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
cmp $21846, %r13

// Store
lea addresses_RW+0xf3d8, %rcx
dec %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_A+0x1f61c, %r13
and $17103, %rcx
mov (%r13), %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
