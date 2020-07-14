.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x117d8, %rsi
lea addresses_D_ht+0x1dbd8, %rdi
nop
nop
nop
nop
sub $16773, %rax
mov $126, %rcx
rep movsw
nop
nop
nop
cmp $49511, %rdx
lea addresses_D_ht+0x10898, %r13
nop
nop
sub $50281, %r12
mov $0x6162636465666768, %rax
movq %rax, (%r13)
nop
and $36455, %rdi
lea addresses_WT_ht+0x12210, %rsi
nop
nop
nop
nop
sub $19778, %rdi
movl $0x61626364, (%rsi)
nop
sub $33620, %r12
lea addresses_WT_ht+0xad1a, %rsi
nop
nop
cmp %rax, %rax
mov (%rsi), %edx
nop
nop
nop
and $38257, %rdi
lea addresses_UC_ht+0x4c68, %rdi
nop
nop
and %r12, %r12
movw $0x6162, (%rdi)
nop
nop
nop
nop
xor $54862, %r13
lea addresses_UC_ht+0x1e498, %r13
nop
nop
xor %r12, %r12
mov (%r13), %di
nop
add $21991, %r12
lea addresses_A_ht+0xc5b8, %rsi
nop
nop
nop
sub $20899, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x2618, %rcx
nop
nop
sub $23384, %r13
mov (%rcx), %si
nop
nop
add $63385, %rdi
lea addresses_D_ht+0x105c8, %rsi
lea addresses_WC_ht+0xe7d8, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r8, %r8
mov $10, %rcx
rep movsq
cmp $58590, %rsi
lea addresses_A_ht+0x196d0, %rsi
lea addresses_A_ht+0x6a58, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $19, %rcx
rep movsw
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x93d8, %r12
dec %rdi
mov (%r12), %edx
nop
nop
add $31004, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdx

// Load
lea addresses_WC+0x14c5e, %rdx
inc %rcx
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %r10
nop
dec %rbp

// Store
lea addresses_A+0xd1a4, %r8
cmp $36818, %rdx
movl $0x51525354, (%r8)
nop
nop
nop
and $13825, %rbp

// Store
lea addresses_normal+0x1ae5c, %r11
nop
cmp %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
nop
nop
sub $8938, %rcx

// Store
lea addresses_normal+0xabd8, %rdx
nop
xor $48750, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rdx)
nop
nop
add $14757, %r8

// Store
lea addresses_RW+0x8fd8, %r10
nop
nop
and %rdx, %rdx
movl $0x51525354, (%r10)
nop
nop
nop
xor $55984, %r8

// Load
lea addresses_A+0x19438, %r14
nop
xor $62152, %rbp
mov (%r14), %r11
nop
nop
dec %rdx

// Faulty Load
lea addresses_US+0x1bd8, %r10
nop
nop
nop
dec %r14
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': True, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'8c': 1, 'c2': 1, 'ab': 213, '56': 1, 'fe': 1, '06': 1, '04': 16, 'bc': 2, '49': 14091, 'a2': 1, 'ff': 128, '00': 6446, '74': 1, 'b8': 1, '6e': 5, 'e8': 3, '3e': 2, '7e': 1, '7a': 27, '9c': 4, '3c': 2, '28': 3, '30': 1, '4e': 1, 'ac': 124, '72': 95, '08': 631, '38': 2, 'd8': 1, 'da': 20, '60': 1, '92': 1, '0c': 1}
04 04 04 04 04 04 04 04 49 04 00 49 04 00 49 04 49 04 00 49 49 04 00 49 49 04 00 49 49 04 49 04 00 00 49 49 49 49 00 00 49 00 00 49 49 00 00 49 49 00 00 00 00 49 00 49 00 08 00 08 49 08 49 00 08 08 00 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 00 00 00 49 49 00 49 00 00 49 00 00 00 00 49 49 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 00 49 49 49 49 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 6e 00 00 6e 00 6e 00 00 6e 00 00 6e 00 00 00 49 00 49 00 00 00 00 49 49 49 00 00 00 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 00 00 00 49 49 49 49 49 49 49 49 49 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 49 49 49 00 00 49 49 49 49 49 49 00 00 49 49 49 49 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 00 00 49 49 49 00 49 00 00 49 49 49 49 00 00 08 49 49 49 49 00 08 49 00 00 08 49 49 00 08 49 49 49 00 00 08 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 ab 49 49 ab ab 49 ab ab ab ab 49 ab ab ab ab ab 49 ab ab ab ab 49 ab 49 ab ab ab 49 ab ab 49 ab ab ab ab 49 ab ab ab 49 49 00 49 00 49 00 49 00 49 00 49 49 49 49 49 49 49 49 49 49 00 49 49 00 00 49 49 49 49 49 00 08 00 49 08 08 49 00 08 49 08 49 08 49 00 08 08 49 08 49 00 49 00 49 08 49 08 08 49 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 49 00 00 49 49 49 00 49 49 00 49 49 00 00 49 00 49 00 49 00 08 00 08 49 00 00 08 49 00 08 49 00 08 49 00 08 49 00 08 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 00 00 49 49 49 00 49 49 00 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 00 00 49 00 49 00 00 49 49 00 49 49 49 00 00 49 49 00 49 00 49 49 49 49 00 49 00 49 49 49 00 49 49 49 00 49 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 00 49 49 00 49 49 49 49 00 00 00 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 00 49 49 00 49 00 49 49 00 49 49 00 49 49 49 00 00 00 00 49 49 00 00 00 00 00 49 72 49 00 00 00 49 49 00 49 49 00 49 00 49 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
