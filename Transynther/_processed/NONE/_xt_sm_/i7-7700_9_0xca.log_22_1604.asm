.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rdi
lea addresses_WT_ht+0xfec1, %r10
add %r13, %r13
movw $0x6162, (%r10)
nop
nop
nop
cmp $63034, %r8
pop %rdi
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Load
lea addresses_RW+0x188e9, %rcx
nop
nop
nop
nop
nop
cmp %r13, %r13
mov (%rcx), %r9w
nop
nop
sub %r10, %r10

// Store
lea addresses_WC+0x123e5, %rsi
nop
nop
cmp $54140, %rdx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_UC+0x96e5, %r9
nop
xor $59293, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r9)
nop
nop
nop
inc %r9

// Store
lea addresses_normal+0x105e5, %rdx
nop
dec %rax
movl $0x51525354, (%rdx)
cmp $48409, %r10

// Store
lea addresses_RW+0xe30b, %rcx
and $16271, %rdx
movb $0x51, (%rcx)
nop
nop
nop
add %r10, %r10

// Load
lea addresses_D+0x7865, %rsi
nop
nop
nop
nop
add %r10, %r10
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
xor %r10, %r10

// Store
mov $0xfe5, %r9
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
nop
nop
nop
xor $13936, %rsi

// Faulty Load
lea addresses_UC+0x96e5, %r10
nop
sub %rcx, %rcx
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'58': 22}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
