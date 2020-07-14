.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rdx
lea addresses_UC_ht+0x13cbc, %rdx
cmp $4835, %rbp
mov (%rdx), %ebx
nop
sub %rbx, %rbx
lea addresses_WC_ht+0xfef8, %r11
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r12
movq %r12, (%r11)
nop
nop
and %r13, %r13
pop %rdx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_UC+0x162fc, %r11
nop
nop
nop
nop
nop
cmp %r12, %r12
movw $0x5152, (%r11)
nop
nop
nop
dec %r12

// Store
lea addresses_PSE+0x12ebc, %r11
clflush (%r11)
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%r11)
nop
nop
xor $27911, %r12

// Store
lea addresses_US+0xf6bc, %r11
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r11)
nop
nop
inc %r14

// Store
mov $0x1c6be400000009fc, %r11
clflush (%r11)
add %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
dec %r9

// Store
lea addresses_WC+0x51bc, %r12
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x5152, (%r12)
nop
sub $54245, %r14

// Load
mov $0x2bc, %rax
nop
cmp %r11, %r11
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
add %r9, %r9

// Store
lea addresses_US+0xf6bc, %r14
nop
nop
nop
xor %rax, %rax
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
sub $20290, %rax

// Faulty Load
lea addresses_US+0xf6bc, %r8
nop
nop
nop
dec %rdi
vmovntdqa (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'54': 1}
54
*/
