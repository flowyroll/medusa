.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x84db, %rsi
lea addresses_A_ht+0x58db, %rdi
nop
nop
sub %r14, %r14
mov $70, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx

// Store
lea addresses_UC+0x13453, %r10
nop
nop
nop
add $65318, %r9
movw $0x5152, (%r10)
nop
sub $22077, %r11

// Store
lea addresses_D+0x915b, %r12
nop
and %r14, %r14
movl $0x51525354, (%r12)
nop
nop
add %rcx, %rcx

// Store
mov $0x445da8000000031a, %r9
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movaps %xmm1, (%r9)
nop
nop
nop
and %r10, %r10

// Store
lea addresses_normal+0x80db, %r9
sub $48966, %r12
movl $0x51525354, (%r9)
and $2301, %r11

// Store
lea addresses_WT+0x1479b, %r12
clflush (%r12)
nop
dec %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movntdq %xmm6, (%r12)
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_A+0xacdb, %rcx
nop
nop
nop
and %r12, %r12
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'00': 2}
00 00
*/
