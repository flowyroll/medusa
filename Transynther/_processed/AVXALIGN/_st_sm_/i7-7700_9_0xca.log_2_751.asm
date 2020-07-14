.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xedb9, %rsi
lea addresses_D_ht+0x8cc1, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $12, %rcx
rep movsl
nop
nop
nop
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_US+0x1c0c1, %r10
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r10)
nop
nop
xor %rbx, %rbx

// Load
lea addresses_normal+0x128c1, %r10
nop
nop
sub %r9, %r9
mov (%r10), %r15d
nop
nop
xor $9260, %rsi

// Store
lea addresses_US+0x12cc1, %rdi
sub $51008, %r12
movw $0x5152, (%rdi)
nop
nop
nop
nop
inc %r15

// Store
mov $0x2c1, %r10
nop
and $25146, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r10)
nop
inc %r12

// Store
lea addresses_US+0x13b41, %rdi
nop
nop
nop
nop
nop
xor $24437, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
cmp $15212, %r9

// Faulty Load
lea addresses_US+0x1c0c1, %r12
nop
nop
add $7243, %rdi
mov (%r12), %r10w
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'58': 2}
58 58
*/
