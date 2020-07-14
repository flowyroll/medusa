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
push %rbx
push %rcx

// Store
lea addresses_WT+0x2ee2, %rax
clflush (%rax)
nop
xor %r10, %r10
movl $0x51525354, (%rax)
nop
nop
cmp %r8, %r8

// Store
lea addresses_PSE+0x6732, %rcx
nop
nop
nop
nop
nop
sub $28027, %r8
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_RW+0x14532, %r10
nop
nop
dec %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovntdq %ymm3, (%r10)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_PSE+0x1bb32, %rcx
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rcx)
sub %r13, %r13

// Store
lea addresses_US+0x1e32, %rax
nop
nop
nop
xor $28112, %r13
movw $0x5152, (%rax)
and %rax, %rax

// Faulty Load
mov $0x72149d0000000332, %rax
add $20879, %r15
mov (%rax), %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 1}
00
*/
