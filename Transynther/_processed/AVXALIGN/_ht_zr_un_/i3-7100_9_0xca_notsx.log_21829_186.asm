.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1da82, %rdi
nop
nop
cmp $55837, %r15
mov (%rdi), %ebp
nop
and $52195, %rax
lea addresses_normal_ht+0x18d82, %rbp
nop
nop
and $27358, %rdi
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x18582, %r11
nop
nop
add $9776, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r11)
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x18702, %r14
nop
nop
nop
nop
nop
and %r12, %r12
movb $0x61, (%r14)
nop
nop
nop
xor $12349, %r12
lea addresses_WT_ht+0x3282, %rsi
lea addresses_D_ht+0xefe2, %rdi
nop
nop
nop
nop
nop
and $30277, %rbp
mov $103, %rcx
rep movsq
nop
nop
nop
mfence
lea addresses_WC_ht+0xd9c2, %rsi
lea addresses_WT_ht+0xfac2, %rdi
clflush (%rdi)
nop
nop
cmp %r15, %r15
mov $99, %rcx
rep movsl
nop
xor %r14, %r14
lea addresses_UC_ht+0x1a399, %r11
nop
nop
cmp $47988, %r15
movb (%r11), %al
nop
nop
nop
nop
nop
and $61635, %rdi
lea addresses_UC_ht+0x110a, %r15
clflush (%r15)
nop
nop
nop
cmp $12641, %r11
movups (%r15), %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
nop
cmp $19249, %r12
lea addresses_UC_ht+0xf402, %r15
nop
nop
nop
nop
and %r14, %r14
movw $0x6162, (%r15)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x3912, %r15
nop
nop
nop
add %rbp, %rbp
movw $0x6162, (%r15)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x5582, %rcx
nop
nop
nop
nop
sub $17625, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
cmp $2882, %rax
lea addresses_A_ht+0x7c82, %rcx
nop
nop
nop
dec %r15
movb (%rcx), %al
nop
nop
nop
xor $46556, %rdi
lea addresses_A_ht+0x10382, %rbp
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm4, (%rbp)
and %r15, %r15
lea addresses_A_ht+0x13202, %rsi
lea addresses_UC_ht+0xb742, %rdi
cmp %r11, %r11
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x18642, %rsi
lea addresses_UC_ht+0x10660, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $55, %rcx
rep movsw
nop
nop
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WT+0xb242, %r9
nop
nop
nop
nop
add %r12, %r12
movw $0x5152, (%r9)
nop
nop
sub $23201, %r13

// Store
lea addresses_WT+0x1581a, %rcx
nop
nop
inc %rdi
movw $0x5152, (%rcx)
nop
nop
sub $59168, %rbx

// Store
lea addresses_UC+0x17f82, %rdi
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%rdi)
nop
nop
and %rcx, %rcx

// Store
lea addresses_normal+0x1296e, %r12
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
nop
add $3209, %r12

// Store
lea addresses_normal+0x9982, %rbx
nop
nop
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%rbx)
nop
dec %r14

// Load
lea addresses_A+0x1c182, %rbx
nop
nop
nop
nop
xor %r9, %r9
mov (%rbx), %r14d
nop
add $56635, %r12

// Faulty Load
mov $0x582, %r9
nop
nop
dec %rcx
vmovaps (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'b5': 1, '45': 17734, '00': 2065, '49': 1888, '48': 4, '44': 137}
00 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 49 45 45 49 49 45 49 45 45 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 49 45 45 49 49 45 45 49 49 45 45 45 45 45 45 49 45 45 45 49 49 45 45 49 45 45 49 45 49 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 49 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 00 00 00 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 49 49 45 45 45 49 45 45 45 45 45 49 45 45 45 45 49 45 45 45 49 45 49 45 45 49 49 45 45 45 49 45 49 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 00 00 00 00 44 44 45 45 45 45 49 45 45 45 45 49 45 45 49 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 49 00 00 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 49 49 49 49 49 45 45 45 49 45 45 49 45 45 45 45 45 00 00 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 49 45 49 45 45 45 49 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 00 00 00 00 00 45 45 45 45 49 45 45 00 45 45 45 49 45 45 45 49 45 49 45 45 45 49 45 45 49 45 45 45 49 45 49 49 49 45 49 45 45 45 45 45 49 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 49 49 49 49 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 49 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 49 45 45 45 45 45 45 49 45 45 45 49 45 45 49 45 49 45 49 45 45 49 45 45 45 45 45 45 49 45 45 45 49 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 49 45 45 45 45 49 49 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 49 45 45 49 45 45 45 49 45 45 45 49 45 45 45 49 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 00 00 45 45 45 45 45 49 45 45 45 45 49 45 45 49 49 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 49 45 45 45 49 45 45 45 45 45 49 45 49 45 49 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 00 00 00 45 45 45 45 45 45 49 45 45 49 49 45 45 49 45 49 45 45 45 45 45 49 45 45 45 49 45
*/
