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
lea addresses_A_ht+0x16ae8, %rsi
lea addresses_A_ht+0x3ca8, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $53, %rcx
rep movsw
cmp $50, %rdi
lea addresses_WC_ht+0x72e8, %rcx
nop
nop
nop
nop
nop
sub %r15, %r15
movw $0x6162, (%rcx)
and %r15, %r15
lea addresses_D_ht+0x14ca0, %r15
nop
nop
nop
nop
nop
xor %r8, %r8
movb $0x61, (%r15)
add %rbx, %rbx
lea addresses_WT_ht+0x1ae8, %r8
add %r11, %r11
mov (%r8), %r15w
add %rbx, %rbx
lea addresses_UC_ht+0x1a2f4, %rsi
lea addresses_normal_ht+0x4a00, %rdi
sub %r12, %r12
mov $27, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0xc6e8, %rsi
nop
and $32759, %r8
movw $0x6162, (%rsi)
nop
nop
nop
xor $59066, %r15
lea addresses_A_ht+0xc9f8, %rsi
lea addresses_A_ht+0x12460, %rdi
nop
nop
nop
nop
nop
sub $37723, %r11
mov $12, %rcx
rep movsl
nop
nop
and %r11, %r11
lea addresses_A_ht+0x1c328, %r15
nop
nop
nop
add %rsi, %rsi
movups (%r15), %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x10fe8, %rcx
nop
cmp $43205, %rbx
mov (%rcx), %r12w
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x14d90, %r11
nop
nop
nop
nop
nop
add $43112, %r8
mov (%r11), %r12w
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0xf484, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov (%rdi), %esi
nop
nop
nop
nop
nop
xor $16543, %r11
lea addresses_WT_ht+0x21bc, %rdi
clflush (%rdi)
nop
add $12739, %rcx
movb $0x61, (%rdi)
nop
nop
sub $25888, %r12
lea addresses_A_ht+0x18dc8, %rsi
lea addresses_D_ht+0x1bcd0, %rdi
clflush (%rdi)
nop
nop
nop
and %r15, %r15
mov $111, %rcx
rep movsb
nop
nop
nop
xor $59868, %r12
lea addresses_normal_ht+0x18e68, %rsi
lea addresses_WC_ht+0x9ae8, %rdi
clflush (%rsi)
nop
nop
sub $30026, %r12
mov $10, %rcx
rep movsl
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x14de8, %rsi
lea addresses_A_ht+0x146e8, %rdi
clflush (%rsi)
nop
nop
cmp %r12, %r12
mov $31, %rcx
rep movsb
nop
xor $50723, %r11
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
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rcx

// Store
lea addresses_normal+0x155be, %rcx
xor %r14, %r14
movw $0x5152, (%rcx)
nop
dec %r9

// Store
lea addresses_RW+0x10848, %rbp
nop
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
xor %r11, %r11

// Store
lea addresses_WC+0x1af78, %rcx
sub %r15, %r15
movl $0x51525354, (%rcx)
add $64654, %rbp

// Load
lea addresses_D+0x16ae8, %r14
nop
add %rbp, %rbp
movups (%r14), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
xor $61550, %r11

// Store
lea addresses_UC+0xdae8, %r12
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
cmp $17505, %r9

// Load
lea addresses_RW+0x107e8, %rcx
clflush (%rcx)
nop
sub %r9, %r9
mov (%rcx), %r12d
nop
nop
nop
nop
nop
cmp $59906, %rcx

// Faulty Load
lea addresses_UC+0xdae8, %r12
nop
nop
nop
nop
and $29341, %r11
mov (%r12), %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'8a': 1, '4a': 1, 'b2': 2, '56': 1, '80': 1, 'ba': 2, '68': 1, '74': 1, '58': 21815, 'bc': 1, '9a': 1, 'b6': 1, 'e0': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
