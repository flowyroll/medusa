.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe7ff, %rsi
lea addresses_A_ht+0x1493f, %rdi
sub %r8, %r8
mov $46, %rcx
rep movsq
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x86f9, %rsi
nop
inc %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
sub $55257, %r13
lea addresses_normal_ht+0x1dd3f, %rsi
lea addresses_WC_ht+0xb47f, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $19861, %rbx
mov $83, %rcx
rep movsl
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbp

// Store
lea addresses_normal+0x1493f, %r11
nop
xor %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_A+0x13f, %rbp
nop
add $15251, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
nop
sub $45648, %r11

// Store
lea addresses_UC+0xfd7f, %r15
nop
nop
nop
nop
nop
and %rbp, %rbp
movw $0x5152, (%r15)
nop
xor $34370, %r9

// Store
lea addresses_A+0x1563f, %r12
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_WC+0xeebf, %r9
nop
cmp $57602, %r12
vmovntdqa (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
inc %r15

// Load
lea addresses_US+0x187f7, %r11
nop
inc %rbp
mov (%r11), %r12d
cmp $40999, %rbp

// Store
lea addresses_RW+0x1b0bf, %r13
clflush (%r13)
nop
nop
xor $63232, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_RW+0x16d3f, %r12
add $56035, %r15
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
sub $54990, %r15

// Store
lea addresses_D+0x1fc3f, %r11
inc %r8
movl $0x51525354, (%r11)
nop
nop
nop
nop
xor $61018, %r8

// Faulty Load
lea addresses_normal+0x1493f, %r12
nop
cmp $60446, %rbp
movb (%r12), %r15b
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'58': 10}
58 58 58 58 58 58 58 58 58 58
*/
