.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rcx
lea addresses_normal_ht+0x19916, %r10
nop
cmp %rcx, %rcx
mov (%r10), %ebp
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x4876, %r12
nop
nop
nop
nop
nop
add %r11, %r11
mov (%r12), %r9
sub %r11, %r11
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xd16, %r15
nop
inc %rdi
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_UC+0x7fee, %rdi
nop
nop
and $22932, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
and %r10, %r10

// Store
lea addresses_RW+0x1ca16, %r15
nop
nop
and $4313, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_D+0xbd56, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
add $54292, %r15

// Store
lea addresses_RW+0x19916, %rbx
nop
sub $39423, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_WT+0x1a326, %r15
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
dec %r15

// Store
mov $0x2a6, %rsi
nop
nop
nop
xor $15619, %rdi
movl $0x51525354, (%rsi)
cmp $22439, %r12

// Faulty Load
lea addresses_RW+0x19916, %r10
cmp $8060, %rbx
mov (%r10), %di
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'58': 7}
58 58 58 58 58 58 58
*/
