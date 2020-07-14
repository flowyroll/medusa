.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rdi
lea addresses_normal_ht+0x1cc36, %rbx
nop
nop
nop
nop
and $12019, %rbp
mov (%rbx), %r15d
sub $42632, %r8
lea addresses_UC_ht+0x8ff6, %r9
nop
nop
nop
add %rbp, %rbp
movups (%r9), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %r8
push %rdx

// Store
lea addresses_A+0x18c36, %r14
nop
nop
nop
nop
xor %r8, %r8
movl $0x51525354, (%r14)
nop
nop
nop
nop
cmp %r14, %r14

// Load
lea addresses_D+0x1436, %rdx
nop
nop
add %r11, %r11
movaps (%rdx), %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
dec %r14

// Store
lea addresses_D+0x1436, %r10
nop
nop
nop
add %r15, %r15
movw $0x5152, (%r10)
and $51626, %rdx

// Store
lea addresses_D+0x3db6, %r8
add %rdx, %rdx
movl $0x51525354, (%r8)
nop
nop
xor %r14, %r14

// Store
lea addresses_D+0xd2b6, %rdx
nop
nop
nop
nop
nop
dec %r12
movl $0x51525354, (%rdx)
nop
nop
nop
inc %r14

// Load
lea addresses_US+0x1a436, %r14
nop
nop
nop
add %rdx, %rdx
mov (%r14), %r8
nop
xor %r12, %r12

// Store
lea addresses_RW+0x17366, %r8
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r8)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_RW+0x1ac36, %r12
xor $28476, %r10
movb $0x51, (%r12)
nop
nop
xor %r12, %r12

// Store
lea addresses_PSE+0x13036, %r11
xor $46732, %r14
movl $0x51525354, (%r11)
nop
cmp %r15, %r15

// Store
lea addresses_normal+0x16836, %r10
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r10)
xor %r15, %r15

// Load
mov $0x41372c0000000c36, %r11
nop
nop
nop
and %r10, %r10
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
cmp %r10, %r10

// Faulty Load
lea addresses_D+0x1436, %r15
cmp %rdx, %rdx
movb (%r15), %r14b
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rdx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'52': 5}
52 52 52 52 52
*/
