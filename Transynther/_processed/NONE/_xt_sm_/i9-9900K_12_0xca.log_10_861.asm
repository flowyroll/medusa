.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Store
lea addresses_US+0xa6de, %r10
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
xor $33654, %r10

// Store
lea addresses_PSE+0x1c66e, %r10
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, (%r10)
cmp $3609, %r13

// Store
lea addresses_WC+0x86ee, %rbp
nop
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
nop
cmp $28520, %r15

// Store
lea addresses_normal+0x19eee, %r15
nop
nop
nop
xor $1042, %rbp
movb $0x51, (%r15)
nop
nop
sub $51428, %rbp

// Load
lea addresses_PSE+0x1cbee, %r13
nop
nop
nop
nop
add %rbp, %rbp
vmovups (%r13), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x54ee, %rbx
add %r15, %r15
movl $0x51525354, (%rbx)
nop
xor $51894, %r8

// Store
lea addresses_WT+0x1e64e, %r10
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_WC+0x86ee, %r13
nop
sub %rbp, %rbp
mov (%r13), %r8d
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'58': 10}
58 58 58 58 58 58 58 58 58 58
*/
