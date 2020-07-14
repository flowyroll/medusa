.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc5de, %r12
nop
nop
nop
nop
nop
add %r8, %r8
mov (%r12), %esi
nop
dec %rbx
lea addresses_D_ht+0x1d9bc, %rbp
nop
cmp %r14, %r14
mov (%rbp), %r9w
nop
nop
and $2974, %r14
lea addresses_A_ht+0x11b7c, %rsi
lea addresses_normal_ht+0x36e0, %rdi
clflush (%rsi)
nop
add %r14, %r14
mov $6, %rcx
rep movsb
add $5496, %rbx
lea addresses_WT_ht+0x16f3c, %rsi
and $10614, %r8
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
nop
xor %rcx, %rcx
lea addresses_A_ht+0xe8fc, %rbp
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1db7c, %rsi
lea addresses_WC_ht+0x1677c, %rdi
nop
nop
nop
and %r14, %r14
mov $43, %rcx
rep movsl
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xe37c, %rsi
lea addresses_WC_ht+0x1d62c, %rdi
nop
nop
nop
sub $6712, %rbp
mov $68, %rcx
rep movsw
nop
sub $2344, %rbx
lea addresses_WC_ht+0x1ec8c, %rbp
nop
nop
nop
nop
cmp $5923, %r14
mov $0x6162636465666768, %r9
movq %r9, (%rbp)
nop
cmp %r14, %r14
lea addresses_WC_ht+0x3e7c, %rsi
clflush (%rsi)
nop
nop
xor $7246, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
and $60569, %rsi
lea addresses_WT_ht+0x1af7c, %rdi
cmp %rbx, %rbx
movb (%rdi), %r14b
cmp %rbp, %rbp
lea addresses_WT_ht+0x1027c, %rbp
dec %rcx
mov (%rbp), %rsi
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0xddc4, %rsi
lea addresses_D_ht+0xdefc, %rdi
nop
nop
nop
nop
nop
cmp $23657, %r14
mov $21, %rcx
rep movsl
nop
nop
inc %r8
lea addresses_D_ht+0xd73c, %r12
nop
nop
nop
nop
add $36028, %r9
mov (%r12), %r8d
nop
nop
nop
sub $47898, %rbp
lea addresses_WT_ht+0x380, %rsi
lea addresses_WT_ht+0x19ecc, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $69, %rcx
rep movsw
nop
nop
nop
nop
add $46932, %r9
lea addresses_WC_ht+0x677c, %rbx
nop
nop
xor %rsi, %rsi
mov (%rbx), %di
nop
nop
nop
nop
nop
xor $43815, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1c84c, %rax
nop
nop
nop
nop
nop
add $60663, %r8
movw $0x5152, (%rax)
nop
cmp %rbp, %rbp

// REPMOV
lea addresses_US+0x16d36, %rsi
mov $0x69ea7b00000004bc, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $101, %rcx
rep movsb
nop
xor $9683, %rbp

// Store
lea addresses_RW+0x39af, %rbp
nop
nop
nop
nop
nop
inc %rsi
movl $0x51525354, (%rbp)
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_PSE+0x677c, %rax
dec %rdx
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_US', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
