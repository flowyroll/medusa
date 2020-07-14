.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x64c0, %rcx
nop
nop
cmp $54537, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm5
and $0xffffffffffffffc0, %rcx
vmovaps %ymm5, (%rcx)
nop
nop
add $55416, %rax
lea addresses_normal_ht+0x580c, %rsi
lea addresses_WC_ht+0x1d0c, %rdi
sub %r12, %r12
mov $35, %rcx
rep movsw
add %rcx, %rcx
lea addresses_WT_ht+0x17c0c, %rbp
dec %rsi
mov (%rbp), %ax
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x596f, %rax
nop
nop
nop
add $48417, %rbp
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm0
vpextrq $1, %xmm0, %rcx
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x4b0c, %rcx
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
xor %r12, %r12
lea addresses_WT_ht+0x183e8, %r12
nop
nop
nop
cmp $20696, %r11
mov (%r12), %bp
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x6b0c, %rsi
lea addresses_normal_ht+0xf717, %rdi
nop
nop
and %rax, %rax
mov $2, %rcx
rep movsw
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x9e8c, %rsi
lea addresses_UC_ht+0xe4a4, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r13, %r13
mov $34, %rcx
rep movsq
nop
add $16699, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx

// Store
lea addresses_WT+0xce0c, %r8
add %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r8)
nop
cmp $44165, %r10

// Store
lea addresses_US+0x12281, %rax
nop
nop
nop
nop
nop
sub $8835, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rax)
nop
sub $29884, %rax

// Store
lea addresses_UC+0x1fe3c, %r12
nop
nop
and $6807, %r15
movw $0x5152, (%r12)
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_A+0x1ee0c, %rcx
nop
cmp %rax, %rax
mov (%rcx), %r8d
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'58': 30}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
