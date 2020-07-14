.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rcx
push %rdi
lea addresses_WT_ht+0x1a400, %rcx
add $20481, %r13
movb (%rcx), %r14b
nop
nop
cmp $40228, %rdi
pop %rdi
pop %rcx
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_PSE+0x1a944, %r12
nop
nop
nop
nop
xor $46430, %rdx
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
nop
sub $13444, %rdx

// Store
lea addresses_RW+0xabc4, %r12
nop
nop
inc %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r12)
nop
nop
cmp %r12, %r12

// Store
mov $0xe44, %r12
nop
nop
dec %rdx
movl $0x51525354, (%r12)
add $18497, %rbx

// Store
lea addresses_D+0xae44, %rbp
nop
cmp $36057, %rcx
movl $0x51525354, (%rbp)
xor $42264, %r10

// Faulty Load
lea addresses_PSE+0xee44, %r12
nop
nop
nop
nop
nop
add %r10, %r10
vmovaps (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'00': 10738, '6d': 36, '54': 6290, 'e0': 4765}
00 54 e0 00 54 54 54 e0 54 00 00 54 54 00 00 00 54 00 54 e0 54 00 54 54 e0 00 54 54 00 00 54 54 54 00 54 54 e0 00 e0 00 00 54 e0 e0 e0 00 54 54 00 00 54 54 00 00 00 00 00 00 e0 00 00 00 00 e0 00 54 00 54 00 e0 00 00 e0 00 00 e0 00 00 00 00 e0 00 54 54 54 e0 00 54 00 e0 00 00 00 00 00 00 54 00 00 e0 54 54 00 00 e0 00 00 00 00 e0 e0 00 54 54 00 54 54 e0 54 00 00 00 54 54 00 e0 00 54 e0 00 00 54 00 00 00 e0 e0 00 00 00 00 00 00 00 00 e0 00 00 54 54 00 00 e0 e0 00 e0 00 e0 54 00 54 00 00 e0 00 54 00 e0 54 54 e0 00 54 00 00 00 e0 54 00 00 e0 e0 54 54 00 54 54 00 e0 e0 54 54 54 00 00 54 00 54 54 54 54 54 e0 54 00 54 e0 00 e0 00 00 e0 54 00 54 54 e0 00 00 e0 00 54 54 00 00 00 00 00 54 00 00 00 00 54 00 54 54 54 e0 00 54 e0 54 00 00 00 e0 e0 54 54 00 54 54 e0 00 00 54 54 00 54 e0 00 00 54 54 00 00 e0 54 e0 00 00 54 e0 54 00 54 e0 00 e0 54 54 54 e0 e0 00 e0 54 54 00 54 e0 54 00 00 54 00 00 e0 00 00 00 00 e0 00 00 00 e0 00 54 e0 00 00 e0 54 e0 00 54 00 54 00 e0 54 54 54 00 e0 00 00 e0 54 00 e0 00 00 00 00 e0 00 e0 00 00 00 00 e0 00 e0 00 e0 54 00 00 00 00 e0 54 54 00 00 54 54 00 54 e0 00 00 e0 e0 00 e0 e0 00 e0 e0 e0 00 e0 00 54 54 00 e0 00 e0 00 e0 e0 00 00 54 00 00 00 e0 54 54 54 00 00 00 00 54 00 e0 00 54 54 e0 00 00 e0 00 00 00 54 54 00 54 54 00 54 00 e0 00 00 54 00 00 00 00 00 54 54 00 00 00 e0 00 00 00 00 e0 00 e0 54 00 54 00 54 00 00 e0 00 00 54 00 00 00 00 e0 54 00 54 e0 00 54 00 00 e0 54 00 e0 54 00 00 00 00 00 00 00 54 54 54 00 00 54 00 54 54 e0 00 00 54 00 54 00 e0 00 00 54 54 00 e0 00 e0 00 00 54 e0 54 00 00 00 e0 00 00 00 00 00 00 00 00 00 00 00 e0 e0 00 54 00 00 e0 00 00 54 00 00 00 54 54 54 00 e0 00 00 e0 00 00 54 e0 54 00 00 54 00 54 54 00 54 00 54 00 54 00 00 00 e0 00 54 e0 00 00 00 e0 54 e0 00 54 e0 54 54 e0 00 00 00 e0 00 00 00 54 54 00 54 00 00 00 e0 00 54 00 00 54 00 00 00 00 54 00 54 00 e0 e0 00 00 00 e0 00 00 54 00 e0 e0 00 54 e0 54 54 e0 e0 00 54 54 00 00 e0 54 00 00 00 00 54 54 00 00 54 00 00 00 00 54 e0 00 00 00 00 00 54 00 54 00 e0 00 00 00 54 00 54 00 00 54 e0 54 00 e0 54 00 e0 e0 54 54 00 54 54 54 54 54 00 00 e0 54 54 e0 00 54 00 54 54 00 00 00 e0 54 00 e0 e0 00 e0 00 00 54 00 54 00 54 54 00 54 54 00 54 00 54 00 54 00 54 e0 e0 54 54 e0 00 54 00 00 00 54 54 e0 54 54 54 00 00 e0 54 54 54 e0 00 54 54 54 e0 00 e0 00 54 00 54 e0 54 54 00 00 54 00 e0 00 54 00 54 54 54 e0 54 00 54 e0 e0 e0 00 00 54 54 54 54 e0 54 00 00 00 00 54 e0 54 54 00 54 54 e0 54 00 00 00 00 54 e0 00 00 54 54 e0 54 e0 e0 00 00 00 00 00 00 54 e0 00 00 00 e0 e0 e0 00 e0 00 e0 00 00 54 54 54 54 00 54 00 00 00 e0 e0 00 54 00 00 54 00 00 00 e0 00 00 54 00 00 54 54 e0 54 54 00 54 54 54 00 00 00 54 54 54 00 00 e0 00 54 54 54 00 54 00 54 00 e0 00 00 00 00 54 00 00 54 00 54 00 00 00 00 00 e0 00 00 54 00 00 54 e0 00 00 00 54 54 00 00 00 00 00 e0 00 00 00 e0 54 e0 00 00 54 00 00 00 00 00 54 00 54 00 e0 e0 54 00 00 00 00 00 00 e0 00 00 00 54 00 54 00 54 00 00 00 54 00 e0 e0 54 00 54 54 00 54 54 e0 e0 e0 00 54 e0 54 00 00 00 00 54 e0 54 e0 54 54 54 00 00 00 e0 00 e0 54 54 00
*/
