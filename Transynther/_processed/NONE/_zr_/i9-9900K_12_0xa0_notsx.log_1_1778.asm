.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x38aa, %rsi
lea addresses_UC_ht+0xcf8a, %rdi
nop
and %r11, %r11
mov $16, %rcx
rep movsl
nop
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x15056, %rsi
lea addresses_WC_ht+0x84d9, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $10, %rcx
rep movsw
nop
nop
nop
nop
add $44017, %rsi
lea addresses_WC_ht+0x1df0a, %rsi
lea addresses_D_ht+0x14a4a, %rdi
nop
nop
nop
add %rbp, %rbp
mov $76, %rcx
rep movsb
nop
nop
nop
nop
add $24292, %rsi
lea addresses_D_ht+0x1b4fa, %r11
nop
add $38259, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
add $26381, %rdi
lea addresses_A_ht+0xc398, %rdx
nop
nop
nop
nop
add %rbp, %rbp
mov (%rdx), %rdi
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x5773, %r11
nop
nop
inc %rsi
movw $0x6162, (%r11)
nop
nop
add $33960, %rcx
lea addresses_WC_ht+0x5d02, %rdx
nop
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
nop
cmp $5859, %rdi
lea addresses_A_ht+0x1828a, %rbp
nop
nop
nop
xor $59549, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rbp)
cmp %r11, %r11
lea addresses_UC_ht+0x1232, %rbp
nop
cmp %r11, %r11
movb $0x61, (%rbp)
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x58a, %rcx
clflush (%rcx)
nop
add $33326, %r11
movb $0x61, (%rcx)
nop
nop
xor $49254, %rcx
lea addresses_UC_ht+0x71aa, %rsi
lea addresses_UC_ht+0x14d8a, %rdi
clflush (%rdi)
nop
nop
nop
cmp $53353, %r11
mov $13, %rcx
rep movsb
sub $6065, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x58a, %r14
nop
nop
nop
cmp $12510, %rbx
movw $0x5152, (%r14)
nop
inc %r14

// Store
mov $0x22a, %rbp
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
nop
nop
nop
cmp $9333, %rdi

// Store
lea addresses_D+0x1a98a, %rbp
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovntdq %ymm5, (%rbp)
nop
add $8214, %rbx

// REPMOV
lea addresses_PSE+0xc98a, %rsi
lea addresses_A+0x1f50e, %rdi
cmp $18080, %rbp
mov $34, %rcx
rep movsb
nop
nop
nop
nop
nop
add $32637, %rcx

// Store
lea addresses_WT+0x1edca, %rcx
sub %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_WT+0xecea, %r10
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%r10)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_UC+0x7f8a, %r13
nop
nop
nop
nop
nop
add $31586, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r13)
nop
xor $62176, %rsi

// Load
lea addresses_D+0x1a98a, %rbx
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb (%rbx), %r10b
nop
nop
nop
nop
nop
add $38889, %rdi

// Faulty Load
lea addresses_D+0x1a98a, %rsi
nop
nop
add %rcx, %rcx
movb (%rsi), %r14b
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'00': 1}
00
*/
