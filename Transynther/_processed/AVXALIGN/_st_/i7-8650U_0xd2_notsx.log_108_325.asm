.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2d79, %r10
nop
nop
nop
nop
xor %r11, %r11
mov (%r10), %si
nop
nop
nop
nop
add $23851, %rax
lea addresses_normal_ht+0x1cdb9, %r13
nop
nop
nop
add $24441, %r11
mov (%r13), %rax
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0xa11b, %r12
clflush (%r12)
nop
nop
nop
nop
and $17372, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r12)
nop
xor %rsi, %rsi
lea addresses_A_ht+0x49b9, %rsi
lea addresses_normal_ht+0x1a7f9, %rdi
nop
nop
sub %r11, %r11
mov $119, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x10cb9, %rsi
lea addresses_UC_ht+0x9ef5, %rdi
xor %r11, %r11
mov $85, %rcx
rep movsl
nop
nop
nop
nop
cmp $53346, %rcx
lea addresses_D_ht+0x14318, %rsi
lea addresses_A_ht+0xe6b9, %rdi
nop
nop
nop
add %r11, %r11
mov $67, %rcx
rep movsl
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x17a19, %rsi
nop
cmp %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %rsi
movaps %xmm1, (%rsi)
nop
nop
inc %rdi
lea addresses_A_ht+0x1393c, %r11
nop
nop
nop
nop
sub %rcx, %rcx
movups (%r11), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x28b9, %rsi
lea addresses_UC_ht+0x9cb9, %rdi
xor $7491, %rax
mov $19, %rcx
rep movsq
nop
xor $65247, %r11
lea addresses_D_ht+0x32b9, %rsi
lea addresses_D_ht+0x3795, %rdi
nop
nop
nop
cmp $9139, %r10
mov $85, %rcx
rep movsq
nop
nop
nop
nop
cmp $50297, %r13
lea addresses_WT_ht+0x13f5d, %r11
xor %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rbx
push %rdi

// Faulty Load
lea addresses_WC+0x7ab9, %rax
nop
nop
nop
nop
xor $41801, %rbp
mov (%rax), %r14w
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'38': 108}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
