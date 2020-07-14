.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb269, %r13
nop
nop
nop
nop
add $40383, %r11
mov (%r13), %si
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x11269, %rsi
lea addresses_WT_ht+0x4829, %rdi
nop
and $36660, %r14
mov $76, %rcx
rep movsb
nop
nop
nop
nop
nop
add $61702, %rcx
lea addresses_normal_ht+0x170e9, %r13
cmp %r14, %r14
mov (%r13), %di
add %r14, %r14
lea addresses_A_ht+0xf885, %r13
nop
nop
nop
nop
add $53664, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm0
and $0xffffffffffffffc0, %r13
movntdq %xmm0, (%r13)
add $33636, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_US+0x154c9, %rbp
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_A+0x17109, %r13
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
nop
and $27321, %rdi

// Store
lea addresses_RW+0x33e9, %rax
nop
nop
nop
cmp $51770, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_WT+0x183e9, %rax
clflush (%rax)
nop
cmp $58729, %rbp
mov (%rax), %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}}
{'58': 34}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
