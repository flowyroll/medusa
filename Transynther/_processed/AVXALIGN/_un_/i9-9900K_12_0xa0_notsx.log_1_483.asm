.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x2b8c, %rcx
clflush (%rcx)
nop
sub $21601, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x678c, %rsi
lea addresses_UC_ht+0x1358c, %rdi
dec %r12
mov $115, %rcx
rep movsl
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x378c, %rsi
lea addresses_A_ht+0x735d, %rdi
nop
nop
and %r9, %r9
mov $78, %rcx
rep movsw
nop
nop
nop
nop
and $50791, %r9
lea addresses_UC_ht+0xfd0c, %rsi
lea addresses_normal_ht+0xdd0c, %rdi
nop
dec %r12
mov $81, %rcx
rep movsq
nop
nop
nop
nop
and $13692, %rdx
lea addresses_normal_ht+0xd6cc, %r9
nop
nop
and %rdx, %rdx
movb $0x61, (%r9)
xor %r12, %r12
lea addresses_WC_ht+0x103cc, %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
inc %r12
lea addresses_D_ht+0x1ef4c, %rsi
nop
nop
xor %rdx, %rdx
mov (%rsi), %r12d
nop
nop
nop
nop
xor $28835, %rdi
lea addresses_D_ht+0x1ad8c, %rdi
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
sub $17854, %rcx
lea addresses_D_ht+0x15b4c, %rsi
lea addresses_WT_ht+0x5bcc, %rdi
clflush (%rsi)
add %r8, %r8
mov $88, %rcx
rep movsw
nop
and %rcx, %rcx
lea addresses_WT_ht+0x1bdec, %r12
nop
nop
nop
dec %r9
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rcx
sub $14056, %rsi
lea addresses_A_ht+0x2047, %rsi
lea addresses_normal_ht+0x24c, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
sub %rdx, %rdx
mov $108, %rcx
rep movsb
nop
nop
inc %rdx
lea addresses_normal_ht+0x145be, %rsi
lea addresses_WC_ht+0xf98c, %rdi
nop
cmp %r8, %r8
mov $6, %rcx
rep movsl
nop
nop
nop
nop
and $11743, %rsi
lea addresses_D_ht+0x10890, %r8
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%r8), %rcx
nop
nop
cmp $308, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x3208, %rsi
clflush (%rsi)
add $18541, %r8
movb $0x51, (%rsi)
nop
cmp $30015, %rsi

// Store
lea addresses_RW+0x1a67c, %rdx
nop
cmp %rsi, %rsi
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_D+0x1b8c, %rdx
nop
nop
nop
nop
nop
inc %r12
movb $0x51, (%rdx)
nop
nop
dec %r12

// Load
lea addresses_WT+0x1bb86, %r14
clflush (%r14)
nop
xor $5021, %rdx
mov (%r14), %si
xor $42633, %r8

// Store
lea addresses_RW+0xe30c, %rax
dec %r11
movw $0x5152, (%rax)
nop
nop
nop
add %r8, %r8

// REPMOV
lea addresses_RW+0x12f1c, %rsi
lea addresses_A+0x2830, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $52931, %r12
mov $125, %rcx
rep movsb
nop
cmp %r14, %r14

// Store
mov $0x4d4, %rax
nop
nop
cmp $16070, %rdi
movw $0x5152, (%rax)
nop
nop
nop
nop
and %rax, %rax

// REPMOV
lea addresses_PSE+0x1cf8c, %rsi
lea addresses_normal+0x17f8c, %rdi
nop
nop
nop
dec %r14
mov $4, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rax

// REPMOV
lea addresses_normal+0x221b, %rsi
lea addresses_US+0xec2c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r12
mov $87, %rcx
rep movsl
nop
nop
nop
inc %r11

// Store
lea addresses_A+0x1abaa, %r11
add %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
dec %r11

// Store
lea addresses_A+0x1498c, %r12
nop
xor %rdx, %rdx
movl $0x51525354, (%r12)
nop
xor $59020, %rsi

// Store
mov $0x4ca5800000000b8c, %r11
nop
nop
nop
nop
and $31984, %rdi
movb $0x51, (%r11)
nop
nop
nop
nop
nop
xor $20828, %rdi

// Store
mov $0x4c09ec0000000c49, %r12
xor %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movntdq %xmm0, (%r12)
add %rax, %rax

// Faulty Load
lea addresses_normal+0x17f8c, %rsi
nop
nop
nop
sub $44249, %r12
movb (%rsi), %cl
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_RW', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'e5': 1}
e5
*/
