.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1434c, %rsi
lea addresses_WC_ht+0x5a4c, %rdi
nop
nop
nop
nop
nop
and $29801, %r12
mov $120, %rcx
rep movsb
nop
nop
nop
cmp $29062, %r13
lea addresses_WT_ht+0x18bd1, %rdx
and $39985, %r11
mov (%rdx), %edi
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x17325, %rsi
lea addresses_WT_ht+0x1a64c, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $21035, %rax
mov $96, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x1854c, %r12
xor $25279, %r13
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rdi
sub $37839, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xb74c, %r15
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
nop
inc %rdx

// REPMOV
lea addresses_normal+0xc1c, %rsi
lea addresses_WT+0x46c4, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $117, %rcx
rep movsl
nop
nop
nop
nop
xor $31832, %rbp

// Store
lea addresses_RW+0x7558, %rdx
xor %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
nop
nop
add $31612, %rsi

// Store
lea addresses_normal+0x294c, %rsi
inc %r15
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
xor $34353, %r14

// Faulty Load
lea addresses_normal+0x1ab4c, %r11
nop
nop
nop
nop
add %rbp, %rbp
movb (%r11), %r10b
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_normal', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'34': 48}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
