.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12719, %rsi
lea addresses_WT_ht+0xf499, %rdi
nop
nop
nop
nop
nop
xor $23067, %r11
mov $118, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x189b5, %rsi
nop
nop
nop
nop
nop
xor $2850, %rdi
movb (%rsi), %r12b
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x2a99, %r10
nop
nop
nop
cmp $16679, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1c039, %rbx
nop
nop
nop
nop
nop
cmp %r11, %r11
mov (%rbx), %r12w
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x114f6, %rdi
nop
nop
nop
xor %r12, %r12
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
nop
inc %r12
lea addresses_UC_ht+0xc569, %rsi
lea addresses_WT_ht+0x165c9, %rdi
nop
nop
nop
xor $57045, %rax
mov $47, %rcx
rep movsb
nop
nop
nop
and $46268, %rcx
lea addresses_WT_ht+0x100d1, %r12
nop
nop
nop
nop
nop
add $34496, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r12)
nop
nop
add $64156, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rdx

// Load
lea addresses_US+0x17299, %rdx
xor $23208, %r9
mov (%rdx), %r13d
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_UC+0xb849, %r15
nop
nop
nop
inc %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
nop
add $31321, %rdx

// Store
lea addresses_US+0x1c299, %r15
nop
and %r12, %r12
movl $0x51525354, (%r15)
nop
xor $39119, %r13

// Store
lea addresses_US+0x17299, %rdx
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_UC+0x11a99, %r12
nop
inc %rbx
mov $0x5152535455565758, %r11
movq %r11, (%r12)
and %r9, %r9

// Faulty Load
lea addresses_US+0x17299, %r13
nop
nop
inc %r15
movb (%r13), %r9b
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'58': 1}
58
*/
