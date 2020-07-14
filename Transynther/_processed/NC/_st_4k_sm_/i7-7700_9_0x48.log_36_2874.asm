.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rdi
lea addresses_UC_ht+0x1767a, %r14
clflush (%r14)
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%r14)
nop
nop
nop
and $37370, %r12
pop %rdi
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rdx

// Store
mov $0xc7a, %r9
nop
nop
nop
add $32259, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)

// Exception!!!
nop
nop
nop
nop
mov (0), %rbp
nop
nop
nop
nop
nop
xor $9456, %rbx

// Store
mov $0xddfdc0000000c7a, %rbx
nop
add $1789, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rbx)
xor $6177, %rbp

// Store
lea addresses_A+0x66da, %rbx
nop
nop
nop
sub $37356, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rbx)
nop
inc %rbp

// Store
lea addresses_A+0x1847a, %r9
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%r9)
nop
nop
and $47547, %r8

// Store
lea addresses_UC+0x17e44, %rbx
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%rbx)
nop
inc %r11

// Store
lea addresses_UC+0xe67a, %r14
clflush (%r14)
nop
nop
cmp %rbp, %rbp
movb $0x51, (%r14)
nop
nop
nop
nop
xor $44286, %rdx

// Faulty Load
mov $0xddfdc0000000c7a, %r9
nop
sub $62106, %r14
mov (%r9), %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'58': 36}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
