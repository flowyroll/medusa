.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1bd89, %r12
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x3189, %r13
sub %rdi, %rdi
mov (%r13), %rbp
nop
nop
inc %rbp
lea addresses_A_ht+0x1bbf1, %rsi
lea addresses_WT_ht+0xb971, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $32036, %rbp
mov $121, %rcx
rep movsq
nop
nop
nop
sub $50235, %r8
lea addresses_UC_ht+0x7a69, %r12
clflush (%r12)
nop
cmp $30372, %r8
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
xor $39908, %rcx
lea addresses_WC_ht+0x12969, %rsi
lea addresses_normal_ht+0xec89, %rdi
nop
nop
nop
nop
and $46264, %r12
mov $5, %rcx
rep movsq
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbp
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x5a89, %rbp
nop
nop
cmp %r8, %r8
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'00': 3}
00 00 00
*/
