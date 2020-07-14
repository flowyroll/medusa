.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1dabd, %rcx
xor %r10, %r10
movb (%rcx), %r9b
sub $10407, %rbp
lea addresses_A_ht+0x67cd, %rsi
lea addresses_WT_ht+0xbb72, %rdi
and $1288, %rbx
mov $125, %rcx
rep movsw
nop
dec %rbp
lea addresses_normal_ht+0x17455, %rbx
and $33736, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%rbx)
sub %rcx, %rcx
lea addresses_A_ht+0x12bcd, %rsi
lea addresses_A_ht+0x36cd, %rdi
nop
nop
nop
and $28623, %rbx
mov $91, %rcx
rep movsb
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0xe975, %rsi
lea addresses_WC_ht+0x163b5, %rdi
nop
nop
inc %r14
mov $48, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $64976, %rdi
lea addresses_A_ht+0x852d, %r14
nop
nop
nop
add $7730, %rbp
movups (%r14), %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
cmp $21179, %rbp
lea addresses_A_ht+0x12bcd, %rsi
lea addresses_WT_ht+0x1dbcd, %rdi
nop
cmp %rbp, %rbp
mov $82, %rcx
rep movsw
add $39929, %rbx
lea addresses_D_ht+0x1ecf1, %rdi
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x1e1cd, %rbx
nop
nop
nop
add $39055, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x420d, %rsi
lea addresses_WC_ht+0x1d1cd, %rdi
nop
nop
and %r9, %r9
mov $87, %rcx
rep movsl
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x51cd, %rsi
lea addresses_PSE+0x1b98d, %rdi
clflush (%rdi)
nop
nop
xor %r10, %r10
mov $9, %rcx
rep movsl
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_normal+0x1d2d1, %r9
clflush (%r9)
sub $676, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
nop
inc %rsi

// Store
lea addresses_WT+0x11f6e, %rbp
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%rbp)
add %rcx, %rcx

// Load
lea addresses_UC+0x3b29, %r10
nop
nop
add $12233, %r14
mov (%r10), %bp
nop
nop
and %rbp, %rbp

// REPMOV
lea addresses_A+0x141cd, %rsi
lea addresses_WC+0x137cd, %rdi
nop
and $16496, %r12
mov $1, %rcx
rep movsq
cmp $52297, %rcx

// Store
lea addresses_UC+0x77f5, %rcx
nop
nop
nop
nop
and $2183, %r12
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_UC+0x105cd, %r14
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
dec %r14

// Load
lea addresses_WC+0x194cd, %r14
cmp %rcx, %rcx
mov (%r14), %r10w
nop
nop
nop
cmp %r14, %r14

// Load
lea addresses_normal+0x1c1cd, %rsi
nop
add $28526, %rdi
mov (%rsi), %r14w
nop
nop
nop
nop
xor %r12, %r12

// REPMOV
lea addresses_UC+0xf38d, %rsi
lea addresses_D+0x100f1, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r12
mov $4, %rcx
rep movsl
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_A+0xbd0d, %r9
nop
nop
nop
and $60164, %rsi
movw $0x5152, (%r9)
nop
nop
add $48395, %rbp

// Store
lea addresses_A+0x1ea4d, %r10
clflush (%r10)
nop
nop
nop
cmp %rdi, %rdi
movl $0x51525354, (%r10)
nop
nop
sub $36608, %r14

// Load
lea addresses_normal+0x138f1, %rcx
nop
nop
nop
nop
nop
dec %r9
movaps (%rcx), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_normal+0x1c1cd, %r9
nop
nop
nop
sub $10887, %rbp
mov (%r9), %r14d
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
