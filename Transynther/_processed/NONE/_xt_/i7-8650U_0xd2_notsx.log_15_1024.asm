.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_WT+0x498e, %rcx
nop
dec %r9
mov (%rcx), %r10d
inc %rdx

// Load
lea addresses_WC+0x1d4fe, %r12
sub %rbx, %rbx
mov (%r12), %r10d
nop
nop
nop
nop
nop
add $3321, %r12

// Store
lea addresses_RW+0x608e, %rbx
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rbx)
nop
cmp $56764, %r10

// Store
lea addresses_A+0x64d3, %rcx
clflush (%rcx)
cmp $17666, %r12
movl $0x51525354, (%rcx)
and %rdx, %rdx

// Load
lea addresses_US+0xa5b3, %rdx
nop
cmp $56457, %r12
mov (%rdx), %ebx
nop
nop
and $59443, %rbx

// Store
lea addresses_A+0x1c15e, %r9
nop
dec %rcx
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_D+0x1118e, %rdx
nop
inc %rbx
movb (%rdx), %cl
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'36': 15}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
