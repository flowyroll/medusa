.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rdi
lea addresses_D_ht+0x17c5c, %r13
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
nop
nop
add $17362, %rdi
lea addresses_WC_ht+0x1653c, %r13
nop
nop
sub %r8, %r8
movups (%r13), %xmm4
vpextrq $0, %xmm4, %rax
sub $26375, %rdi
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx

// Load
lea addresses_UC+0x961c, %r15
nop
nop
sub %r13, %r13
movb (%r15), %r11b
nop
inc %r14

// Load
lea addresses_US+0x1de78, %r12
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r12), %r14w
add %r11, %r11

// Store
lea addresses_UC+0x1affc, %r15
add %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_UC+0x1affc, %rcx
nop
and %r13, %r13
mov (%rcx), %r15d
nop
nop
nop
nop
nop
and $26527, %r15

// Store
lea addresses_UC+0x1affc, %r12
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r12)
and %r13, %r13

// Faulty Load
lea addresses_UC+0x1affc, %r11
nop
nop
nop
nop
add %rbp, %rbp
movups (%r11), %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'00': 27}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
