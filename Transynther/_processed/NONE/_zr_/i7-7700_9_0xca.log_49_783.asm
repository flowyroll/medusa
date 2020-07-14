.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1116b, %rsi
lea addresses_UC_ht+0x14acb, %rdi
nop
nop
nop
nop
nop
sub $19836, %r9
mov $98, %rcx
rep movsq
nop
nop
nop
nop
xor $6785, %rsi
lea addresses_WT_ht+0x1c46b, %rsi
lea addresses_normal_ht+0x15be3, %rdi
nop
inc %r10
mov $83, %rcx
rep movsl
nop
dec %r10
lea addresses_WC_ht+0xc94b, %r11
nop
nop
nop
sub $3758, %r8
movb (%r11), %cl
nop
nop
nop
sub $41157, %r11
lea addresses_UC_ht+0x113ab, %rcx
nop
nop
and $31128, %r9
movb (%rcx), %r11b
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x4e6b, %r8
nop
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm5
vpextrq $0, %xmm5, %rsi
nop
lfence
lea addresses_D_ht+0x6b6b, %rsi
lea addresses_WC_ht+0x1794f, %rdi
xor %rdx, %rdx
mov $75, %rcx
rep movsb
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x966b, %rsi
lea addresses_UC_ht+0x686b, %rdi
nop
nop
nop
and %rdx, %rdx
mov $106, %rcx
rep movsw
nop
sub %r10, %r10
lea addresses_WC_ht+0x172f4, %rdx
nop
xor %r8, %r8
mov (%rdx), %r10w
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1686b, %rsi
lea addresses_WT_ht+0xd56b, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
add %r11, %r11
mov $57, %rcx
rep movsw
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1208d, %rsi
lea addresses_UC_ht+0x1a1eb, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $92, %rcx
rep movsq
nop
sub $2589, %rcx
lea addresses_D_ht+0xf36b, %rdi
xor %rdx, %rdx
mov (%rdi), %ecx
nop
nop
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x1b092, %r14
nop
nop
nop
xor $51959, %rsi
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_UC+0x216b, %rbp
nop
nop
nop
xor $7808, %rdx
movl $0x51525354, (%rbp)
nop
nop
add %rcx, %rcx

// Store
lea addresses_A+0xb474, %rbp
nop
nop
nop
nop
xor %r11, %r11
movw $0x5152, (%rbp)
cmp %rdx, %rdx

// Store
mov $0xc8b, %rsi
nop
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
sub $16895, %r12

// Load
lea addresses_WC+0xa812, %r14
nop
nop
nop
nop
xor $16803, %rcx
mov (%r14), %bp
nop
nop
xor $23136, %r12

// Store
lea addresses_WC+0xacef, %rbp
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
nop
nop
nop
cmp $22721, %r14

// Store
mov $0x39b, %rbp
nop
cmp $51139, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rbp)
nop
sub $20866, %r12

// Faulty Load
lea addresses_A+0x806b, %rcx
add $22061, %rsi
mov (%rcx), %r14w
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
