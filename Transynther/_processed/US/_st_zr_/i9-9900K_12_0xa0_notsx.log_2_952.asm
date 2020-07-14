.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rbx
push %rdx
lea addresses_UC_ht+0x1254c, %r15
nop
nop
and $2216, %rbx
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
dec %r15
lea addresses_A_ht+0xb5c, %r10
nop
sub %r14, %r14
movb $0x61, (%r10)
mfence
lea addresses_A_ht+0xaf4c, %r14
nop
nop
nop
nop
nop
add %rdx, %rdx
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
nop
nop
dec %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx

// Store
lea addresses_UC+0x1254c, %r13
nop
xor $47023, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%r13)
nop
and %r8, %r8

// Store
lea addresses_WT+0x15330, %r9
nop
nop
nop
add $18736, %r15
movw $0x5152, (%r9)
nop
sub %r14, %r14

// Faulty Load
lea addresses_US+0x754c, %r14
nop
nop
nop
nop
and %r10, %r10
mov (%r14), %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'58': 1, '00': 1}
00 58
*/
