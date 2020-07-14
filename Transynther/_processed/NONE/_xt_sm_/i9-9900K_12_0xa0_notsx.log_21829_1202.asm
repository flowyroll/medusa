.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x12859, %rsi
lea addresses_UC_ht+0x15fd9, %rdi
nop
nop
nop
nop
and $48598, %rbp
mov $35, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_A_ht+0x198d9, %rsi
lea addresses_WC_ht+0x27d9, %rdi
nop
nop
nop
nop
cmp $55172, %rbp
mov $6, %rcx
rep movsl
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x7e11, %rbp
nop
nop
nop
inc %r15
movw $0x6162, (%rbp)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xe899, %rsi
lea addresses_WT_ht+0x21f1, %rdi
clflush (%rdi)
dec %rbp
mov $46, %rcx
rep movsq
add %r15, %r15
lea addresses_D_ht+0x14619, %rsi
lea addresses_UC_ht+0x91d9, %rdi
clflush (%rdi)
nop
and %r15, %r15
mov $84, %rcx
rep movsb
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xc31d, %rsi
nop
inc %rdi
mov (%rsi), %r15
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x3c31, %rsi
lea addresses_normal_ht+0x183d9, %rdi
nop
nop
nop
nop
add $18077, %r11
mov $3, %rcx
rep movsw
nop
nop
xor $53408, %rdi
lea addresses_A_ht+0x2fd9, %r11
nop
nop
nop
cmp $28434, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x1e79, %rdi
nop
and $17052, %rbp
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
add $59907, %rbp
lea addresses_normal_ht+0x1dad9, %r15
clflush (%r15)
nop
nop
cmp $26441, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x1ced9, %rsi
lea addresses_normal_ht+0x170c1, %rdi
nop
nop
nop
xor $2021, %rdx
mov $70, %rcx
rep movsw
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x1b799, %rsi
lea addresses_UC_ht+0xdd9, %rdi
nop
and $36003, %r10
mov $12, %rcx
rep movsl
nop
inc %rcx
lea addresses_D_ht+0x2fd9, %rsi
lea addresses_A_ht+0x11c0d, %rdi
nop
nop
nop
nop
nop
add $27426, %r10
mov $33, %rcx
rep movsl
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x9fd9, %rsi
lea addresses_WC_ht+0x167d9, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $25, %rcx
rep movsw
nop
nop
nop
and $34869, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x177d9, %rsi
nop
nop
and $43684, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_normal+0x11913, %rax
clflush (%rax)
nop
nop
nop
nop
and %r9, %r9
movw $0x5152, (%rax)
nop
nop
xor %rdi, %rdi

// Store
lea addresses_PSE+0x1e0b1, %rcx
nop
nop
inc %rax
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and %r9, %r9

// Store
mov $0x635, %r9
nop
nop
sub $4528, %rsi
movl $0x51525354, (%r9)
nop
nop
and $5022, %rax

// Load
lea addresses_WT+0x137bd, %rcx
nop
nop
nop
sub %rbp, %rbp
movb (%rcx), %r9b
and %rbp, %rbp

// Store
lea addresses_WC+0xd69d, %rbp
nop
sub $55255, %rax
movb $0x51, (%rbp)
inc %rdi

// Load
mov $0xfd9, %rdi
nop
sub %rbp, %rbp
movb (%rdi), %r9b
nop
nop
nop
nop
cmp $2879, %rax

// Faulty Load
lea addresses_D+0x177d9, %rbp
nop
cmp %rax, %rax
mov (%rbp), %esi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
