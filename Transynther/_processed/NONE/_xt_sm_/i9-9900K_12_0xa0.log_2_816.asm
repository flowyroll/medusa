.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbp
push %rdx
lea addresses_A_ht+0x1886d, %r11
clflush (%r11)
nop
cmp $18217, %rbp
movups (%r11), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
xor %rdx, %rdx
pop %rdx
pop %rbp
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r8
push %rdi

// Store
lea addresses_WT+0xe5bf, %r13
nop
nop
nop
nop
nop
sub $41447, %r15
mov $0x5152535455565758, %r8
movq %r8, (%r13)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_WT+0xe5bf, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
movb $0x51, (%rdi)
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_D+0x2419, %r15
nop
nop
xor $25361, %r14
movb $0x51, (%r15)
nop
nop
add $60448, %r10

// Store
lea addresses_WT+0xe5bf, %r8
nop
xor %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
and $62163, %r11

// Store
lea addresses_WT+0xe5bf, %rdi
nop
nop
nop
nop
nop
and $52033, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_WT+0xe5bf, %r13
nop
xor %rdi, %rdi
mov (%r13), %r8w
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'58': 2}
58 58
*/
