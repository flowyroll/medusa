.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rbx
lea addresses_normal_ht+0x1ebdd, %rbp
nop
nop
xor $41870, %r10
movw $0x6162, (%rbp)
nop
nop
and $1512, %rbx
pop %rbx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WT+0x10e5d, %rcx
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
cmp $23287, %r14

// Load
lea addresses_WC+0xd28d, %r14
nop
xor %r15, %r15
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
add $24983, %r12

// Store
lea addresses_RW+0x1f65d, %r12
and $25126, %rsi
movb $0x51, (%r12)
nop
nop
nop
nop
nop
sub $50040, %rcx

// Store
lea addresses_PSE+0x1da5d, %r14
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r14)
nop
add %rcx, %rcx

// Faulty Load
lea addresses_WC+0x1e5d, %rcx
nop
nop
nop
and $53171, %r13
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'58': 10}
58 58 58 58 58 58 58 58 58 58
*/
