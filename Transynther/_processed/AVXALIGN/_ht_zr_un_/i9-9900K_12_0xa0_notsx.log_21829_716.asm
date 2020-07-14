.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xcb9a, %rsi
lea addresses_WT_ht+0x18e9a, %rdi
clflush (%rsi)
clflush (%rdi)
inc %r12
mov $21, %rcx
rep movsl
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x105fa, %r13
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r13)
nop
nop
and $23170, %r13
lea addresses_UC_ht+0x1ebb9, %rsi
nop
inc %rax
movb (%rsi), %cl
nop
cmp %r13, %r13
lea addresses_UC_ht+0x17fa, %rsi
lea addresses_WC_ht+0x115d2, %rdi
clflush (%rdi)
nop
nop
nop
sub %r12, %r12
mov $52, %rcx
rep movsw
add %r12, %r12
lea addresses_D_ht+0x158da, %rcx
nop
add $20336, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0xa79a, %rsi
lea addresses_normal_ht+0x18d9a, %rdi
and $34500, %r9
mov $19, %rcx
rep movsq
nop
nop
nop
nop
xor $18845, %r12
lea addresses_A_ht+0x8072, %rdi
nop
nop
nop
nop
cmp $16654, %rax
movb (%rdi), %cl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x4170, %rdi
nop
nop
nop
xor %r12, %r12
mov (%rdi), %rcx
nop
and %rsi, %rsi
lea addresses_normal_ht+0x171da, %rsi
lea addresses_normal_ht+0x199ba, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r11, %r11
mov $34, %rcx
rep movsq
and %r11, %r11
lea addresses_UC_ht+0x1ca3a, %rsi
lea addresses_WT_ht+0x1489a, %rdi
nop
nop
and %r11, %r11
mov $85, %rcx
rep movsl
nop
nop
and $10522, %rax
lea addresses_WT_ht+0x10d9a, %rsi
lea addresses_A_ht+0xc9a, %rdi
clflush (%rsi)
nop
and %r13, %r13
mov $9, %rcx
rep movsq
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x1a99a, %rsi
lea addresses_WT_ht+0xb79a, %rdi
clflush (%rsi)
and %r9, %r9
mov $83, %rcx
rep movsq
nop
dec %r13
lea addresses_normal_ht+0x12fda, %rsi
lea addresses_WC_ht+0x1199a, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $83, %rcx
rep movsl
nop
nop
nop
nop
nop
and $42612, %r12
lea addresses_A_ht+0xfb9a, %r12
nop
nop
nop
nop
nop
add %rax, %rax
movups (%r12), %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi

// Load
lea addresses_normal+0x18e9a, %rcx
nop
nop
nop
add %rax, %rax
mov (%rcx), %di
nop
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_A+0xd99a, %r15
nop
add $50893, %rbx
vmovntdqa (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'08': 5, '48': 126, '44': 5717, '72': 5, 'f0': 1, '00': 15975}
f0 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 44 44 00 00 44 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 44 00 00 44 44 00 44 00 44 44 00 00 00 00 00 44 00 00 00 44 00 44 44 44 00 00 44 44 44 00 00 00 00 44 00 00 44 44 44 44 44 00 00 44 00 44 44 44 44 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 44 00 00 00 00 44 00 44 00 44 44 00 00 44 00 44 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 44 00 00 44 00 44 00 00 44 44 00 44 00 44 00 44 00 00 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 44 44 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 44 44 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 44 44 00 44 00 44 00 44 00 00 00 44 44 44 00 44 00 00 00 00 44 00 00 00 44 00 44 00 00 00 44 44 00 44 00 44 00 44 44 44 00 44 44 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 44 00 44 00 44 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 44 44 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 44 00 00 00 44 44 00 44 00 00 44 44 00 44 00 00 00 00 00 44 44 00 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 44 00 44 00 00 44 00 44 00 44 00 44 00 00 44 00 00 00 00 00 44 44 00 48 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 44 44 00 00 44 00 00 44 00 44 00 00 44 00 00 00 00 00 00 44 00 00 44 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 00 00 00 44 00 00 00 00 44 00 00 44 44 00 00 00 00 00 00 44 00 00 44 00 44 44 00 00 00 00 44 44 44 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 48 44 44 00 00 00 44 00 00 44 00 48 00 44 00 44 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 44 00 44 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 44 00 44 00 00 44 00 44 00 44 00 00 00 44 00 00 44 00 00 44 00 44 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 44 00 44 44 00 00 44 00 00 44 00 00 44 48 00 00 44 00 00 00 44 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 44 44 00 44 00 44 00 00 44 00 44 00 00 00 00 00 44 44 00 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 00 44 00 00 00 44 44 00 00 44 00 00 00 00 44 00 00 00 44 00 00 44 00 00 44 00 44 44 44 44 44 00 44 44 44 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 00 44 00 44 44 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 44 00 44 44 00 00 00 00 44 00 00 00 44 00 00 00 44 44 00 00 00 00 48 00 00 00 00 00 00 00 00 00 44 44 00 48 00 00 00 00 44 00 00 00 44 00 00 44 44 00 00 00 00 00 44 44 00 00 44 00 00 44 00 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 44 00 00 44 00 00 00 00 44 48 00 00 00 44 00 00 44 00 00 00
*/
