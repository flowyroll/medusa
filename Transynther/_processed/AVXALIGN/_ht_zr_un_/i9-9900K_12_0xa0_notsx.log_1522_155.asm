.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x13113, %r8
clflush (%r8)
nop
xor $7797, %r11
movb (%r8), %r12b
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x1a3b3, %rsi
lea addresses_D_ht+0x4753, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $127, %rcx
rep movsw
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0xb0b3, %rsi
lea addresses_A_ht+0x5353, %rdi
clflush (%rsi)
nop
nop
nop
sub $8103, %r11
mov $38, %rcx
rep movsb
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x7cb3, %rdi
nop
nop
nop
sub $11020, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x13deb, %r8
nop
cmp $37863, %rcx
mov (%r8), %r12d
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1b4b3, %r12
clflush (%r12)
nop
nop
nop
nop
nop
xor $21320, %rdi
mov (%r12), %r11
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x48c3, %rsi
lea addresses_D_ht+0x17873, %rdi
nop
nop
nop
sub %r8, %r8
mov $84, %rcx
rep movsw
nop
nop
nop
nop
nop
and $17319, %rcx
lea addresses_A_ht+0x1c8b3, %rcx
xor $38746, %r12
movb (%rcx), %r11b
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0xd8b3, %rsi
lea addresses_D_ht+0xa333, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $98, %rcx
rep movsb
add $46081, %rcx
lea addresses_WT_ht+0xfdb3, %rbx
mfence
mov (%rbx), %r12
sub $16257, %rdi
lea addresses_normal_ht+0x189a9, %rsi
lea addresses_normal_ht+0x138b3, %rdi
clflush (%rdi)
nop
nop
sub %r12, %r12
mov $67, %rcx
rep movsq
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0xd493, %rsi
lea addresses_A_ht+0x16ab3, %rdi
clflush (%rsi)
nop
nop
nop
sub %r11, %r11
mov $91, %rcx
rep movsq
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
mov $0xcb3, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rsi
nop
add %rsi, %rsi

// Store
lea addresses_RW+0x160b3, %rdi
nop
nop
nop
dec %r12
movw $0x5152, (%rdi)
xor %rsi, %rsi

// Load
lea addresses_WT+0xb0c0, %rcx
nop
nop
nop
nop
nop
inc %rdx
mov (%rcx), %si
nop
dec %rcx

// Store
lea addresses_UC+0xc13b, %r10
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
and $22436, %r12

// Store
lea addresses_WC+0x160b3, %r12
clflush (%r12)
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r12)
nop
nop
inc %rcx

// Store
mov $0x34c4bc0000000125, %rcx
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
dec %r10

// Store
lea addresses_WT+0x13c5b, %rdx
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_PSE+0xaab3, %rbx
nop
xor $60589, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
and $61401, %rdx

// Store
lea addresses_WT+0x1b3, %r12
nop
nop
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%r12)
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_D+0xc8b3, %rbx
nop
and %rdx, %rdx
vmovntdqa (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'08': 1, '72': 4, '44': 202, '00': 1315}
00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 72 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 08 00 44 00 44 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 44 44 00 44 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 44 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 44 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 44 44 00 00 44 44 00 00 00 00 00 72 00 44 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 00 00 44 00 00 00 00 44 44 00 00 00 44 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00
*/
