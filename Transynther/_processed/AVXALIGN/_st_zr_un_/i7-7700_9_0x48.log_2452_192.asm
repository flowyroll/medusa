.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x9d6a, %r14
and $13491, %rsi
mov (%r14), %ebp
nop
cmp %r12, %r12
lea addresses_WT_ht+0x193da, %rdx
nop
nop
nop
nop
sub $59698, %rcx
movw $0x6162, (%rdx)
nop
inc %rdx
lea addresses_UC_ht+0x11bda, %rsi
lea addresses_D_ht+0xbda, %rdi
and $48697, %r11
mov $124, %rcx
rep movsl
nop
nop
cmp $57734, %rsi
lea addresses_normal_ht+0x143da, %r12
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%r12)
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x7752, %r11
nop
nop
nop
inc %rcx
movw $0x6162, (%r11)
nop
dec %rdx
lea addresses_UC_ht+0x1efda, %rsi
lea addresses_normal_ht+0xd7da, %rdi
nop
nop
nop
nop
and $28411, %rdx
mov $94, %rcx
rep movsw
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0x1c3da, %r14
nop
and $49868, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
and $0xffffffffffffffc0, %r14
movntdq %xmm5, (%r14)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x45ea, %rbp
nop
nop
nop
nop
add %rcx, %rcx
movw $0x6162, (%rbp)
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xa3da, %rsi
lea addresses_normal+0x1bf1a, %rdi
nop
nop
sub %r14, %r14
mov $107, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi

// Store
mov $0xfda, %rsi
nop
inc %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovaps %ymm7, (%rsi)
and %rcx, %rcx

// Store
lea addresses_A+0x173da, %rcx
nop
dec %r15
movw $0x5152, (%rcx)
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_D+0x63da, %rcx
nop
nop
nop
dec %rsi
movntdqa (%rcx), %xmm7
vpextrq $1, %xmm7, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'32': 1858, 'fd': 1, '00': 593}
00 32 00 32 32 32 32 00 32 32 32 00 00 32 32 32 32 00 00 00 00 32 32 32 32 32 32 32 00 00 32 32 00 32 00 32 00 32 00 32 32 32 00 32 32 32 32 32 32 32 32 32 00 32 00 00 32 32 00 32 00 00 32 32 32 32 00 00 32 32 32 32 32 32 32 00 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 00 00 32 32 32 32 32 32 32 00 00 32 00 32 32 00 32 32 32 00 32 32 32 00 00 00 32 32 00 32 32 00 32 32 32 32 32 32 00 32 32 32 00 32 32 32 00 00 00 32 32 32 32 32 00 32 32 32 32 00 00 32 00 32 00 32 32 32 32 00 32 00 32 32 32 32 32 00 32 00 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 32 32 00 32 32 32 32 00 00 32 32 00 32 32 32 32 32 32 32 00 00 00 32 32 32 32 32 32 32 00 32 32 00 32 00 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 00 32 00 00 32 32 32 00 32 00 00 00 32 32 32 32 32 32 32 32 00 00 00 32 32 32 32 32 32 32 00 32 00 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 fd 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 00 00 32 00 32 00 32 32 32 32 00 00 00 32 32 32 32 00 32 00 00 00 32 32 32 32 32 00 00 32 00 32 32 32 32 32 32 00 32 32 00 32 32 32 32 00 32 00 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 32 32 32 32 00 32 32 32 32 00 32 00 00 32 00 32 32 00 00 32 32 32 32 32 32 32 32 32 32 00 32 00 32 00 32 32 32 32 32 00 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 00 00 32 00 00 32 32 32 32 32 00 32 00 32 32 00 00 32 32 32 00 32 32 32 32 32 32 32 00 32 00 00 32 32 00 00 32 32 00 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 00 32 00 32 32 32 32 00 32 32 32 00 32 32 00 32 32 00 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 00 32 32 32 32 32 32 32 32 00 32 00 00 32 00 32 32 32 32 32 32 32 32 00 32 00 32 00 32 32 32 32 32 32 32 00 32 32 32 32 00 32 00 00 32 32 32 32 00 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 00 32 00 00 32 32 32 32 32 32 32 32 00 32 00 00 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 00 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 00 00 00 32 32 32 32 00 32 00 32 32 32 32 32 32 00 32 00 00 00 32 32 32 00 32 00 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 32 00 32 00 32 32 32 00 32 00 32 32 32 00 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 00 32 32 32 00 32 32 00 00 32 32 32 32 32 32 32 00 32 00 00 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 00 00 32 00 32 32 32 32 32 32 00 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 32 00 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 00 32 32 32 00 32 00 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 00 32 00 32 00 32 32 32 00 32 00 00 32 32 32 32 32 00 00 32 32
*/
