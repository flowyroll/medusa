.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x1b9e9, %rcx
nop
nop
and %r13, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_D+0x1f4e9, %r10
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
inc %r13

// REPMOV
lea addresses_A+0x144e9, %rsi
mov $0xee1, %rdi
nop
nop
nop
nop
cmp $2429, %rax
mov $81, %rcx
rep movsb
nop
nop
nop
dec %r12

// Store
lea addresses_RW+0x1ee9, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add $59086, %rax
movl $0x51525354, (%r10)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_UC+0xa1a9, %rsi
nop
nop
nop
nop
add $40338, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rsi)

// Exception!!!
nop
nop
nop
mov (0), %rsi
sub %r13, %r13

// Store
lea addresses_US+0x1e147, %rax
nop
sub %rdi, %rdi
movw $0x5152, (%rax)
nop
nop
dec %rsi

// Faulty Load
lea addresses_A+0x144e9, %rsi
nop
nop
nop
cmp $5172, %r13
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'35': 6}
35 35 35 35 35 35
*/
