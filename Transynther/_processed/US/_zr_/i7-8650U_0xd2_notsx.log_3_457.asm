.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
lea addresses_A_ht+0x1e0e9, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add %r13, %r13
movb $0x61, (%r14)
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x1603d, %rcx
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%rcx), %r12
nop
nop
nop
nop
nop
cmp %r13, %r13
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx

// Store
mov $0x6888370000000f69, %r12
nop
nop
nop
nop
cmp $48896, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%r12)
nop
inc %r15

// Store
mov $0x53b1960000000230, %r11
nop
nop
nop
add $34250, %rcx
movl $0x51525354, (%r11)
sub %rbp, %rbp

// Store
mov $0x60b6700000002e9, %r9
dec %r15
movl $0x51525354, (%r9)
nop
add %r15, %r15

// Store
lea addresses_D+0x15259, %r15
sub %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_US+0x10ee9, %r15
nop
nop
sub %r8, %r8
movups (%r15), %xmm6
vpextrq $1, %xmm6, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 3}
00 00 00
*/
