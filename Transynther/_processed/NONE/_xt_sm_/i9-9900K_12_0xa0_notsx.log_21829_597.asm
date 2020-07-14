.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a694, %r8
nop
nop
nop
cmp $29559, %rbp
mov (%r8), %rcx
nop
nop
nop
nop
cmp $22372, %r15
lea addresses_D_ht+0x1bd6a, %r12
nop
nop
nop
cmp %r15, %r15
movw $0x6162, (%r12)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x22da, %rbp
nop
add %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, (%rbp)
sub %r12, %r12
lea addresses_WC_ht+0xf8ea, %r9
nop
nop
nop
nop
dec %r12
mov (%r9), %rcx
xor %rcx, %rcx
lea addresses_normal_ht+0x2fa, %rbp
nop
nop
nop
nop
dec %rcx
mov (%rbp), %r12d
cmp $6816, %rcx
lea addresses_UC_ht+0x2d6a, %r8
nop
nop
nop
nop
nop
lfence
mov (%r8), %r12w
nop
nop
cmp $19832, %r15
lea addresses_WC_ht+0xe36a, %rsi
lea addresses_WT_ht+0x17d7c, %rdi
nop
inc %r9
mov $59, %rcx
rep movsl
nop
nop
nop
nop
cmp $46190, %rbp
lea addresses_D_ht+0x1be8a, %rcx
nop
nop
nop
nop
add $45287, %rbp
mov (%rcx), %r9w
nop
nop
nop
add $7926, %r9
lea addresses_UC_ht+0x7c9a, %rsi
lea addresses_normal_ht+0x1db6a, %rdi
nop
nop
and $65451, %r8
mov $75, %rcx
rep movsw
and $42477, %r15
lea addresses_D_ht+0x316a, %rsi
lea addresses_normal_ht+0xc842, %rdi
cmp $54763, %rbp
mov $17, %rcx
rep movsq
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x8a6a, %rcx
nop
nop
nop
nop
nop
sub %rdi, %rdi
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rbp
nop
sub $17020, %r8
lea addresses_normal_ht+0x976a, %r15
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x12c8a, %rsi
lea addresses_WC_ht+0x1b7b2, %rdi
nop
nop
add %r8, %r8
mov $21, %rcx
rep movsb
nop
nop
add $64572, %r12
lea addresses_D_ht+0xf36a, %rsi
lea addresses_normal_ht+0x1e46a, %rdi
nop
and %r9, %r9
mov $85, %rcx
rep movsq
nop
nop
nop
nop
xor $47967, %r8
lea addresses_D_ht+0xa3aa, %rsi
lea addresses_normal_ht+0x11cea, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $44, %rcx
rep movsq
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x6eea, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
movw $0x5152, (%rdi)
nop
dec %r12

// Store
lea addresses_normal+0x198ba, %rbp
nop
nop
cmp $63809, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_normal+0x62da, %r14
nop
nop
cmp $4918, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_D+0x1fe4f, %r12
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, (%r12)
sub %r15, %r15

// Store
lea addresses_WT+0xc36a, %rbp
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_A+0xfbca, %r15
nop
nop
nop
nop
nop
xor $5041, %rdx
movb $0x51, (%r15)
nop
nop
sub %rdx, %rdx

// Store
lea addresses_normal+0x155be, %rbp
sub $37747, %r14
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
cmp $57534, %rbp

// Load
lea addresses_WT+0xc36a, %rbp
nop
add $24987, %rax
movb (%rbp), %r15b
nop
nop
nop
nop
add %r14, %r14

// REPMOV
lea addresses_normal+0x10b1a, %rsi
lea addresses_WT+0x4daa, %rdi
nop
inc %r15
mov $61, %rcx
rep movsb
nop
nop
xor $41775, %rcx

// Store
lea addresses_WT+0x156a, %r14
nop
nop
dec %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r14)
and %rcx, %rcx

// Store
lea addresses_normal+0x2c6a, %rax
sub %rdi, %rdi
movw $0x5152, (%rax)
nop
add %rbp, %rbp

// Store
lea addresses_WT+0xf3a8, %rbp
nop
nop
sub $16577, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
and %r14, %r14

// Store
lea addresses_normal+0x10f0a, %rdi
nop
nop
nop
and %r12, %r12
movw $0x5152, (%rdi)
nop
nop
nop
and $44847, %r12

// Faulty Load
lea addresses_WT+0xc36a, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rcx), %r12d
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
