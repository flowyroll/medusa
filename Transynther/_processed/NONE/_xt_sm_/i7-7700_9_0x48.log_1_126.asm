.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
lea addresses_D_ht+0x143c3, %rax
nop
nop
nop
dec %r9
movb (%rax), %r13b
nop
nop
nop
nop
nop
xor $21235, %r11
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WC+0x81c3, %r13
nop
nop
dec %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r13)
nop
sub %r13, %r13

// Store
mov $0x46ee5200000009c3, %r13
nop
cmp %rbp, %rbp
movl $0x51525354, (%r13)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_A+0x83c3, %rbx
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
xor $8144, %r9

// Store
lea addresses_RW+0x1ce83, %r8
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovaps %ymm2, (%r8)
nop
and %rbx, %rbx

// Store
lea addresses_PSE+0xa087, %rbp
inc %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
nop
nop
xor $26673, %r9

// Store
lea addresses_A+0x10f03, %r9
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r9)
nop
nop
sub %rbx, %rbx

// Store
mov $0x15c48b00000005c3, %rax
nop
nop
nop
nop
nop
and $34849, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
and $17205, %r8

// Load
lea addresses_D+0xddc3, %rbx
xor %r8, %r8
mov (%rbx), %r9
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WC+0xb1c3, %rax
clflush (%rax)
nop
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%rax)
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_WC+0xb1c3, %rbx
nop
nop
nop
nop
xor %r13, %r13
mov (%rbx), %r8d
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': True}}
{'52': 1}
52
*/
