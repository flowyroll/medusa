.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rdx
lea addresses_A_ht+0x160d0, %r12
clflush (%r12)
cmp %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r12)
nop
inc %r10
lea addresses_D_ht+0x137f8, %rdx
xor %rbx, %rbx
movw $0x6162, (%rdx)
nop
xor $52024, %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_normal+0x1d588, %r8
nop
nop
dec %rbx
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_normal+0x42d0, %r9
cmp %rax, %rax
movl $0x51525354, (%r9)
nop
nop
nop
add $15166, %r9

// Store
lea addresses_WT+0x13fd0, %r8
clflush (%r8)
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
nop
nop
and $40033, %rbx

// Store
lea addresses_WT+0x1ad50, %r10
nop
nop
nop
nop
sub $64835, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
sub %r10, %r10

// Load
lea addresses_D+0x7230, %rax
nop
cmp %rbx, %rbx
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
and %rbx, %rbx

// Load
mov $0xad0, %rbp
nop
and $28820, %rax
movb (%rbp), %r13b
nop
nop
nop
nop
sub $44168, %rbx

// Load
mov $0x7bc, %r9
nop
nop
and $13953, %r13
movups (%r9), %xmm3
vpextrq $0, %xmm3, %r10
add $31650, %r13

// Faulty Load
lea addresses_RW+0x16dd0, %rax
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rax), %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'32': 15}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
