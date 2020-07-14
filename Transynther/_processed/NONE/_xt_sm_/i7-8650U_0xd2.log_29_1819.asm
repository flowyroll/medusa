.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdx
lea addresses_normal_ht+0x1ea3d, %r14
nop
nop
xor $39430, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r14)
nop
xor %r11, %r11
lea addresses_normal_ht+0xf57d, %r10
nop
nop
nop
and %rcx, %rcx
mov (%r10), %r14
nop
xor %r10, %r10
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rax
push %rdi

// Store
lea addresses_normal+0x1c32d, %r8
nop
and %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
xor $31082, %r8

// Load
lea addresses_WC+0x18b7d, %r15
nop
nop
nop
nop
inc %r14
mov (%r15), %r12w
cmp $56099, %r13

// Store
lea addresses_WC+0x18b7d, %rax
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rax)
nop
nop
nop
nop
nop
cmp $30130, %r13

// Store
lea addresses_WC+0x497d, %rdi
and $23035, %r8
movb $0x51, (%rdi)
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_WC+0x18b7d, %r13
nop
nop
nop
sub $19683, %r14
mov (%r13), %r12d
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'58': 29}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
