.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rdx
lea addresses_WT_ht+0x6923, %r10
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%r10), %r12w
nop
nop
nop
nop
and $55262, %r11
pop %rdx
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rdx

// Store
lea addresses_UC+0x1e913, %r12
nop
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%r12)
nop
nop
add %r13, %r13

// Store
lea addresses_PSE+0x1dc3b, %r8
nop
dec %r12
movb $0x51, (%r8)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdx
nop
nop
nop
nop
sub $63623, %r8

// Store
lea addresses_PSE+0xb32f, %r10
clflush (%r10)
nop
add $49865, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
add $53276, %rax

// Faulty Load
lea addresses_PSE+0xd823, %rdx
nop
nop
nop
xor %r13, %r13
mov (%rdx), %r8d
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'33': 113}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
