.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbp
push %rdi
push %rdx
lea addresses_A_ht+0x15a6e, %r11
nop
nop
and $27616, %rdi
movb (%r11), %dl
sub %rbp, %rbp
pop %rdx
pop %rdi
pop %rbp
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rdi
push %rdx

// Load
lea addresses_UC+0x1709e, %rax
nop
sub $13986, %rdx
movups (%rax), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
and $65103, %r12

// Store
lea addresses_RW+0x17f6e, %r13
nop
nop
nop
nop
nop
sub $49692, %r12
movb $0x51, (%r13)
cmp $45630, %r15

// Store
lea addresses_A+0x1727, %r12
nop
nop
nop
nop
nop
and %rax, %rax
movb $0x51, (%r12)
dec %r12

// Load
lea addresses_US+0x7c40, %r12
nop
nop
nop
nop
inc %rbp
mov (%r12), %r13d
nop
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_WT+0xf96e, %rdi
nop
nop
nop
nop
and $58233, %r13
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
nop
nop
nop
nop
dec %r15

// Store
lea addresses_D+0x1ce6e, %rax
nop
cmp $5356, %r12
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
nop
cmp $36651, %rdx

// Faulty Load
lea addresses_A+0x1996e, %rax
nop
nop
nop
nop
sub $60718, %rbp
mov (%rax), %r15w
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'58': 7}
58 58 58 58 58 58 58
*/
