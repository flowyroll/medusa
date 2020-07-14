.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1131c, %r8
nop
nop
cmp %rbx, %rbx
movw $0x6162, (%r8)
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x1641c, %r10
nop
xor %r11, %r11
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x1091c, %rsi
lea addresses_WT_ht+0x1a384, %rdi
nop
add $22246, %r15
mov $121, %rcx
rep movsb
nop
nop
nop
nop
add $2156, %rsi
lea addresses_WT_ht+0x631c, %rbp
nop
inc %r13
mov (%rbp), %rsi
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x531c, %r10
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
and $0xffffffffffffffc0, %r10
movntdq %xmm0, (%r10)
nop
xor %r13, %r13
lea addresses_normal_ht+0x6b1c, %rsi
lea addresses_WT_ht+0x8b1c, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $36, %rcx
rep movsw
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0xb1c, %rbp
nop
nop
nop
add $46958, %rcx
movb $0x61, (%rbp)
dec %rbx
lea addresses_WT_ht+0x14afc, %r11
clflush (%r11)
nop
nop
dec %rbx
movb (%r11), %r15b
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x12f71, %rsi
lea addresses_WT_ht+0x10b1c, %rdi
nop
nop
nop
nop
cmp $52913, %r15
mov $16, %rcx
rep movsq
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x319c, %rbx
nop
add $12466, %r15
movb (%rbx), %cl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x631c, %rdi
nop
nop
nop
nop
and %r8, %r8
mov (%rdi), %r15
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x5b1c, %r13
inc %rbx
mov $0x6162636465666768, %r11
movq %r11, (%r13)
nop
nop
nop
nop
nop
cmp $55836, %r8
lea addresses_A_ht+0x871c, %rsi
lea addresses_WT_ht+0x12b1c, %rdi
nop
nop
nop
cmp $51817, %r8
mov $76, %rcx
rep movsl
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x2004, %rsi
lea addresses_WT_ht+0x191c, %rdi
nop
nop
nop
nop
and $63966, %r8
mov $98, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1a90c, %rdx
nop
nop
nop
nop
add $45495, %r14
movw $0x5152, (%rdx)
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_normal+0x1589c, %rsi
clflush (%rsi)
nop
cmp %rdx, %rdx
movb (%rsi), %r14b
nop
sub %r12, %r12

// Store
lea addresses_PSE+0x631c, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
and $26909, %rbx
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_UC+0x87dc, %rsi
nop
nop
cmp %r12, %r12
mov (%rsi), %r11
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_PSE+0x631c, %rcx
add $64489, %r11
mov (%rcx), %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
