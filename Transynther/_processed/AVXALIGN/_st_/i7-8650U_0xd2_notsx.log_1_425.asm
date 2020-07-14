.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x174d6, %rsi
lea addresses_A_ht+0x1d6d6, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r14
mov $88, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $25141, %rbx
lea addresses_normal_ht+0xb2d6, %rsi
nop
sub %r12, %r12
movw $0x6162, (%rsi)
nop
nop
and $18956, %rdi
lea addresses_A_ht+0x179a2, %rsi
lea addresses_WC_ht+0x68d6, %rdi
nop
and %r12, %r12
mov $78, %rcx
rep movsb
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x14d6c, %rsi
nop
nop
nop
and $7073, %rbp
mov (%rsi), %r12d
nop
nop
nop
nop
nop
and $63727, %rsi
lea addresses_WC_ht+0x1bed6, %r14
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r14)
cmp %r12, %r12
lea addresses_A_ht+0x11656, %rbx
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb (%rbx), %r14b
nop
nop
add $56447, %rdi
lea addresses_WT_ht+0xf3a6, %rsi
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x11ed6, %rdi
nop
and $37755, %rsi
mov (%rdi), %ecx
nop
add $63286, %rsi
lea addresses_D_ht+0xd6b6, %rdi
nop
nop
nop
nop
nop
dec %r12
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x50d6, %r12
nop
nop
nop
dec %rbx
mov (%r12), %bp
nop
nop
nop
nop
xor $21955, %rcx
lea addresses_WC_ht+0x114d6, %rcx
nop
nop
xor $55955, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%rcx)
xor $58305, %rbx
lea addresses_WC_ht+0x1da5e, %rbp
nop
nop
nop
cmp $31438, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rbp)
and %rdi, %rdi
lea addresses_D_ht+0x82d6, %rsi
lea addresses_UC_ht+0x143f4, %rdi
nop
nop
nop
nop
inc %r13
mov $52, %rcx
rep movsl
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx

// Load
mov $0x38c4220000000f86, %r12
nop
nop
and %r14, %r14
movb (%r12), %r13b
cmp $44354, %r12

// Store
lea addresses_US+0x104d6, %rcx
nop
xor $13687, %r8
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
xor %r12, %r12

// Store
lea addresses_normal+0x118b2, %r13
nop
nop
nop
nop
cmp %r14, %r14
movb $0x51, (%r13)
nop
nop
nop
add $45718, %r8

// Faulty Load
lea addresses_PSE+0x12ed6, %r11
nop
nop
nop
inc %r13
mov (%r11), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'33': 1}
33
*/
