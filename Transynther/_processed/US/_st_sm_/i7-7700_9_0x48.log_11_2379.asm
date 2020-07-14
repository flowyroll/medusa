.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rcx
push %rdx
lea addresses_D_ht+0x1a899, %r14
nop
nop
nop
nop
nop
and $14313, %rcx
movups (%r14), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x15a71, %r12
nop
nop
nop
sub %rcx, %rcx
mov (%r12), %r13
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x7b51, %rdx
nop
nop
and $20919, %r13
mov (%rdx), %r10w
nop
dec %rcx
pop %rdx
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
mov $0x91, %rbx
and $45527, %rdx
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
cmp $65297, %rdx

// Store
lea addresses_US+0x14191, %r9
nop
nop
xor %r15, %r15
movb $0x51, (%r9)
inc %rdx

// Load
lea addresses_PSE+0x191, %r14
clflush (%r14)
nop
nop
nop
nop
nop
inc %rbx
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
nop
dec %r15

// Faulty Load
lea addresses_US+0x14191, %rdx
nop
dec %r9
movb (%rdx), %r15b
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 5, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': True, 'NT': False}}
{'51': 11}
51 51 51 51 51 51 51 51 51 51 51
*/
