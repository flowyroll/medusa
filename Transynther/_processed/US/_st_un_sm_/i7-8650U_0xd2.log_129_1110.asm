.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x481c, %rsi
lea addresses_normal_ht+0xa1dc, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $49, %rcx
rep movsw
nop
nop
sub $38401, %r9
lea addresses_D_ht+0x132fc, %r10
dec %rdx
movl $0x61626364, (%r10)
nop
and $62396, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_normal+0x1bc1c, %rsi
add %rbx, %rbx
movl $0x51525354, (%rsi)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_A+0x1551c, %rbp
nop
and $56999, %r12
movw $0x5152, (%rbp)
dec %rbx

// Store
lea addresses_US+0xdc1c, %rax
nop
nop
nop
nop
nop
cmp $4869, %rcx
movb $0x51, (%rax)
nop
cmp %rbp, %rbp

// Store
lea addresses_PSE+0xc89c, %rbx
nop
nop
inc %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
xor $63485, %rbx

// Store
lea addresses_US+0x1dc1c, %rax
and $4832, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movntdq %xmm6, (%rax)
nop
nop
and $57190, %rbp

// Faulty Load
lea addresses_US+0x1dc1c, %rax
sub $61464, %rsi
movb (%rax), %bl
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'58': 128, 'fa': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 fa 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
