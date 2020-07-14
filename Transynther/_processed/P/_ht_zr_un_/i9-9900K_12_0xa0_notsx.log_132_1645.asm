.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x14088, %rsi
lea addresses_D_ht+0x1d95a, %rdi
nop
nop
nop
xor $46290, %rbx
mov $116, %rcx
rep movsw
nop
cmp %r14, %r14
lea addresses_WT_ht+0x378a, %rax
nop
nop
nop
add $22573, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rax)
cmp $22408, %rsi
lea addresses_normal_ht+0x647a, %r14
nop
nop
nop
nop
inc %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm5
and $0xffffffffffffffc0, %r14
movaps %xmm5, (%r14)
add $14235, %rsi
lea addresses_D_ht+0x1bf8a, %rdi
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
cmp $26641, %rax
lea addresses_normal_ht+0x1638a, %rsi
lea addresses_WC_ht+0x4cea, %rdi
nop
nop
nop
nop
dec %r12
mov $49, %rcx
rep movsl
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x278a, %r12
nop
nop
xor $16527, %r14
movb (%r12), %al
nop
and %r12, %r12
lea addresses_D_ht+0x6daa, %rsi
lea addresses_WC_ht+0x13dda, %rdi
nop
nop
cmp %rax, %rax
mov $51, %rcx
rep movsq
nop
nop
nop
nop
nop
and $20778, %rcx
lea addresses_WC_ht+0xa8a2, %rsi
nop
nop
dec %rax
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x1e38a, %rsi
lea addresses_D_ht+0x71e, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x1dcaa, %rbx
nop
nop
lfence
movl $0x61626364, (%rbx)
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x1c58a, %rbx
nop
nop
nop
nop
xor $3133, %rax
mov (%rbx), %si
nop
nop
and $54121, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1bf8a, %rsi
clflush (%rsi)
nop
nop
dec %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rsi)
sub $14067, %rax

// Load
lea addresses_RW+0x146fc, %rsi
nop
nop
nop
nop
nop
xor $15356, %rdx
mov (%rsi), %edi
nop
nop
nop
and %r10, %r10

// Store
lea addresses_D+0x1278a, %rax
xor $31103, %r8
movl $0x51525354, (%rax)
nop
nop
and $2780, %r11

// Store
lea addresses_WC+0x1bd9a, %rsi
and %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
sub $3744, %rdi

// Store
lea addresses_UC+0xe48a, %r8
nop
nop
xor $13283, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r8)
add $56556, %r11

// Faulty Load
mov $0xf8a, %r11
add $25885, %rax
movups (%r11), %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'48': 29, 'ff': 8, '00': 95}
00 00 00 48 00 00 00 ff 00 00 48 48 00 00 48 48 00 48 48 00 48 48 00 00 00 48 00 00 00 00 48 00 00 48 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 48 00 00 00 00 00 00 ff 00 48 00 48 00 00 00 00 ff 48 48 00 00 48 00 00 ff 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 48 48 ff 48 00 00 48 ff 00 48 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00
*/
