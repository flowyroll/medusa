.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rdx
lea addresses_WC_ht+0x6792, %r8
mfence
movw $0x6162, (%r8)
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x10462, %rbx
nop
nop
xor %r15, %r15
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
add %rbx, %rbx
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0xd0b2, %r10
add $27367, %r8
movl $0x51525354, (%r10)
nop
add %rdi, %rdi

// Load
mov $0xd72, %rcx
nop
nop
nop
nop
nop
cmp %r10, %r10
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
and $29715, %rdi

// Store
lea addresses_normal+0x3592, %rbx
nop
cmp %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_US+0xf792, %rbx
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%rbx)
nop
add $26687, %rbx

// Load
lea addresses_WT+0x1a27a, %rbx
nop
sub $28639, %r14
mov (%rbx), %r8d
inc %r10

// Store
mov $0x703c180000000b7a, %r8
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r8)
nop
inc %r15

// Faulty Load
lea addresses_US+0xf792, %r8
nop
nop
nop
nop
xor $44261, %r10
movb (%r8), %bl
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'58': 3}
58 58 58
*/
