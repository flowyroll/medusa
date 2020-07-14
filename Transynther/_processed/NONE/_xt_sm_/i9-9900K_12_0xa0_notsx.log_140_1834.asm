.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11a4e, %rsi
lea addresses_UC_ht+0x18476, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $13919, %rbp
mov $61, %rcx
rep movsq
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x13076, %r13
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r13)
nop
nop
xor $26143, %r13

// Store
lea addresses_UC+0x15876, %rdi
nop
add %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rdi)
nop
xor %r13, %r13

// REPMOV
lea addresses_UC+0x9784, %rsi
lea addresses_WC+0x8896, %rdi
nop
nop
nop
nop
dec %r13
mov $92, %rcx
rep movsw
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_D+0x1b676, %r14
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
nop
add %rcx, %rcx

// REPMOV
lea addresses_RW+0xe276, %rsi
lea addresses_normal+0x4676, %rdi
nop
nop
nop
add $50425, %r10
mov $82, %rcx
rep movsw
nop
nop
nop
dec %r13

// Store
mov $0x1fb6c60000000576, %rcx
nop
add %r13, %r13
movl $0x51525354, (%rcx)
nop
inc %rdi

// Store
lea addresses_WT+0x1be76, %r14
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r14)
nop
inc %r10

// Load
lea addresses_D+0x1b676, %rsi
nop
nop
nop
sub %rbx, %rbx
movb (%rsi), %r14b
nop
inc %rdi

// Store
lea addresses_D+0x1b676, %r14
cmp $16323, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r14)
add $27662, %r9

// Faulty Load
lea addresses_D+0x1b676, %r14
nop
nop
nop
and %rax, %rax
movups (%r14), %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'58': 140}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
