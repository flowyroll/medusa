.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi

// Load
lea addresses_RW+0xfe35, %r14
nop
nop
nop
nop
nop
xor $1668, %rcx
mov (%r14), %r15d
xor $31271, %rcx

// Store
lea addresses_D+0x382d, %r9
nop
dec %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r9)
nop
nop
and %r15, %r15

// Store
lea addresses_PSE+0xecb5, %r15
clflush (%r15)
nop
nop
inc %r12
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_RW+0x1a735, %r9
nop
nop
nop
nop
cmp %r14, %r14
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_normal+0x2cb5, %r9
nop
nop
cmp $51903, %r14
mov (%r9), %r12d
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'34': 12}
34 34 34 34 34 34 34 34 34 34 34 34
*/
