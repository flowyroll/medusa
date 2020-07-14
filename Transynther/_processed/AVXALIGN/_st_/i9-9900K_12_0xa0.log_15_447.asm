.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x197ed, %rdx
nop
nop
nop
nop
nop
add $18644, %r10
mov (%rdx), %di
nop
nop
nop
nop
nop
cmp $40976, %rbx
lea addresses_UC_ht+0x172ad, %r15
nop
nop
nop
nop
sub $37070, %rcx
mov (%r15), %r10w
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x19771, %rsi
lea addresses_normal_ht+0xbf1, %rdi
nop
nop
nop
nop
inc %rbx
mov $39, %rcx
rep movsw
sub %rbx, %rbx
lea addresses_A_ht+0x1aed, %rsi
lea addresses_WT_ht+0x1eefd, %rdi
nop
nop
and $357, %r15
mov $26, %rcx
rep movsw
nop
nop
add $12565, %rdi
lea addresses_A_ht+0x34ad, %rsi
lea addresses_normal_ht+0x5b75, %rdi
nop
and $27364, %r8
mov $20, %rcx
rep movsb
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x105ad, %rsi
lea addresses_UC_ht+0xcee0, %rdi
nop
nop
nop
nop
inc %r15
mov $36, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x16cad, %rbx
add %r15, %r15
mov (%rbx), %edi
nop
nop
nop
nop
xor $24983, %rbx
lea addresses_D_ht+0x1edad, %r8
nop
add %rdi, %rdi
movb (%r8), %dl
nop
nop
sub $36558, %rsi
lea addresses_WC_ht+0xec2d, %rdx
nop
add $9494, %rsi
mov (%rdx), %rcx
nop
sub $15055, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WT+0xbe95, %r8
nop
nop
nop
sub $44820, %r9
movw $0x5152, (%r8)
dec %rbp

// Store
lea addresses_WC+0xbc5a, %r11
nop
nop
and %rdi, %rdi
movl $0x51525354, (%r11)
nop
nop
xor $87, %r11

// Store
lea addresses_US+0xe6cd, %rdi
nop
and %r11, %r11
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
cmp $10991, %r11

// Store
lea addresses_US+0x121cd, %r8
and %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
add %r10, %r10

// Load
mov $0x29dc80000000067f, %r9
nop
nop
inc %r11
movups (%r9), %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_normal+0x7dad, %rbx
nop
nop
nop
nop
nop
dec %r10
mov (%rbx), %r11w
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'34': 15}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
