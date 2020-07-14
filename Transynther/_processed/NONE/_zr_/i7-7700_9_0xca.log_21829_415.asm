.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xb8c0, %rsi
lea addresses_D_ht+0x17c0, %rdi
nop
nop
nop
nop
add $30783, %rdx
mov $81, %rcx
rep movsq
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x10ec0, %rsi
lea addresses_normal_ht+0x1c3c0, %rdi
nop
nop
nop
sub %r8, %r8
mov $78, %rcx
rep movsl
nop
and $41909, %r8
lea addresses_normal_ht+0xa0c0, %rsi
lea addresses_WC_ht+0x5fc0, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $104, %rcx
rep movsq
sub $35208, %rdx
lea addresses_UC_ht+0x1bc0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
nop
add $53564, %rbp
lea addresses_A_ht+0xf4ce, %rsi
lea addresses_WT_ht+0x138c0, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $99, %rcx
rep movsw
nop
sub $34212, %rcx
lea addresses_UC_ht+0x133c0, %r10
nop
nop
nop
nop
nop
dec %rax
mov (%r10), %ebp
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x28c0, %r8
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
nop
nop
nop
nop
xor $32200, %rdi
lea addresses_normal_ht+0x11ea0, %rsi
lea addresses_WC_ht+0x154c0, %rdi
clflush (%rsi)
nop
nop
nop
sub $63231, %rbp
mov $102, %rcx
rep movsq
nop
xor %rcx, %rcx
lea addresses_A_ht+0xce08, %rsi
lea addresses_WT_ht+0x122cd, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov $84, %rcx
rep movsl
nop
xor %r10, %r10
lea addresses_normal_ht+0x1c0c0, %rsi
lea addresses_WC_ht+0x162c0, %rdi
sub %rax, %rax
mov $79, %rcx
rep movsb
nop
xor %r10, %r10
lea addresses_normal_ht+0x195ae, %r8
nop
nop
nop
nop
nop
and $49697, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
and $63314, %rcx
lea addresses_WC_ht+0x5fc0, %rcx
add $62228, %r8
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1b300, %rdi
nop
nop
and %r10, %r10
movb (%rdi), %al
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x8678, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x4840, %rbp
nop
nop
nop
cmp $6571, %rax
mov (%rbp), %di
nop
nop
nop
sub $24648, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x8a8, %rsi
lea addresses_US+0x6f70, %rdi
nop
nop
nop
nop
nop
and $34724, %r8
mov $3, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r8

// Load
lea addresses_UC+0x16bc0, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%rdi), %r8
nop
nop
nop
nop
and $26887, %r8

// Load
lea addresses_UC+0x1187c, %r11
nop
nop
sub %rcx, %rcx
movb (%r11), %r14b
nop
nop
dec %r8

// Store
lea addresses_A+0xbc40, %rdi
nop
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_UC+0x16bc0, %rcx
nop
sub $24539, %rsi
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_US'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
