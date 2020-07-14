.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8562, %rsi
lea addresses_normal_ht+0x873e, %rdi
nop
nop
nop
sub $43791, %r11
mov $65, %rcx
rep movsq
nop
nop
inc %rcx
lea addresses_UC_ht+0x37f3, %r8
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x707e, %rcx
nop
nop
nop
inc %rax
movb $0x61, (%rcx)
xor $2512, %rdi
lea addresses_UC_ht+0x12cde, %rsi
lea addresses_WC_ht+0x92de, %rdi
nop
nop
xor $225, %r15
mov $62, %rcx
rep movsw
sub $51974, %r11
lea addresses_WC_ht+0x196be, %rsi
lea addresses_WC_ht+0x114de, %rdi
nop
sub $10278, %rax
mov $28, %rcx
rep movsb
nop
add $47032, %r14
lea addresses_WT_ht+0x2532, %rsi
lea addresses_WT_ht+0x48de, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $9, %rcx
rep movsb
add $28558, %rsi
lea addresses_WT_ht+0x11cde, %rdi
sub $803, %rcx
movb (%rdi), %r14b
nop
nop
nop
sub $51274, %rax
lea addresses_A_ht+0xe40c, %r11
inc %rax
movw $0x6162, (%r11)
nop
nop
xor $37339, %rsi
lea addresses_A_ht+0x1877e, %r8
nop
add $33341, %rdi
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x5646, %rdi
nop
add %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1b8de, %r8
nop
inc %r14
mov (%r8), %r11w
nop
nop
nop
dec %r15
lea addresses_A_ht+0xb75e, %r15
nop
cmp %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm4
and $0xffffffffffffffc0, %r15
movntdq %xmm4, (%r15)
nop
nop
nop
nop
cmp $13964, %rcx
lea addresses_D_ht+0x8758, %rax
cmp %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x1335e, %r14
nop
nop
nop
nop
sub %r8, %r8
mov (%r14), %r15
nop
nop
xor $52050, %r8
lea addresses_UC_ht+0x9cde, %r8
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r8), %r14d
nop
nop
nop
nop
add %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rdi
push %rsi

// Store
lea addresses_RW+0x1bde, %rsi
nop
nop
nop
nop
dec %r15
movb $0x51, (%rsi)
nop
nop
and $9991, %r13

// Store
lea addresses_UC+0xe39e, %r15
nop
xor $53443, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r15)
nop
dec %r15

// Store
lea addresses_A+0xf7de, %r15
nop
nop
and $25905, %r12
mov $0x5152535455565758, %rax
movq %rax, (%r15)
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_RW+0x7cde, %r13
nop
inc %r12
vmovntdqa (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'48': 7991, '00': 13838}
00 00 00 48 48 00 00 48 48 00 48 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 48 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 48 00 00 48 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 48 48 48 48 00 00 48 00 00 00 00 00 00 48 48 00 00 48 48 48 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 48 48 00 48 00 00 48 00 00 48 00 48 00 48 00 00 48 48 48 00 48 00 48 00 48 48 48 00 00 00 48 00 00 00 48 48 00 00 48 00 00 48 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 48 48 48 00 00 00 48 00 48 48 00 48 00 00 00 00 00 00 48 48 00 48 00 48 48 00 00 00 48 48 00 00 48 48 00 00 00 00 48 48 00 00 48 48 00 00 48 48 00 48 00 00 00 48 00 00 00 48 00 48 00 00 48 00 48 48 00 00 00 48 48 00 48 48 00 48 00 00 48 48 00 00 00 00 48 00 48 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 48 48 00 48 48 00 00 00 00 00 00 00 48 48 00 00 48 48 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 48 48 00 48 00 00 00 48 48 00 48 00 48 00 48 48 00 00 00 00 00 00 00 48 00 48 48 00 00 00 48 48 48 00 00 00 48 00 00 48 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 48 00 00 48 00 00 48 48 00 48 48 00 48 00 48 00 48 48 00 00 00 00 00 00 48 00 00 48 48 00 00 48 48 00 48 48 48 00 00 00 48 00 48 00 00 00 48 00 48 48 48 00 00 00 00 48 48 00 00 48 48 00 00 00 48 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 00 00 00 00 00 00 48 48 00 00 48 48 00 00 48 00 00 00 00 00 00 48 48 48 00 48 48 00 00 00 48 48 48 00 00 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 00 48 48 48 48 48 48 00 00 00 00 00 48 00 48 48 48 00 48 48 00 48 00 00 48 00 00 48 48 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 48 48 48 48 00 48 48 48 00 00 00 00 00 00 48 00 00 00 48 00 00 48 48 00 00 48 48 48 48 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 48 00 48 48 00 00 00 48 48 48 48 00 00 00 00 48 00 00 00 00 48 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 48 48 00 00 48 48 00 00 00 00 00 00 00 00 48 48 48 00 00 48 48 48 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 48 00 48 00 00 00 48 48 48 00 00 00 48 48 00 00 00 48 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 48 00 00 00 00 00 00 48 48 00 00 48 00 00 00 48 00 00 00 48 48 00 00 00 48 00 00 00 48 48 48 00 48 48 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 48 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 48 00 00 48 00 00 00 00 00 48 00 00 48 00 48 48 00 48 48 00 48 48 48 00 00 48 00 48 48 48 00 00 00 48 48 48 00 48 48 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 48 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 48 00 00 00 48 48 00 48 48 00 00 48 00 48 48 00 00 00 00 00 00 48 48 48 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 48 48 00 48 00 00 00 00 00 00 48 00 00 00 00 00 48 48 48 48 00 00 48 00 00 00 00 00 48 48 48 00 00 00 00 00 48 00 00 00 00 48 48 48 48 48 00 48 00 00 48 48 00 00 00 00 48 48
*/
