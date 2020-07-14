.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc0e0, %r11
nop
add $56160, %r9
movw $0x6162, (%r11)
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x58e0, %rsi
lea addresses_WC_ht+0x132e0, %rdi
nop
nop
sub %r8, %r8
mov $104, %rcx
rep movsb
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xe96c, %rsi
lea addresses_D_ht+0xa284, %rdi
nop
nop
nop
nop
cmp $47500, %r12
mov $10, %rcx
rep movsb
nop
dec %rsi
lea addresses_A_ht+0x15fe0, %rcx
nop
nop
cmp $19944, %r10
mov (%rcx), %rdi
and $61134, %r12
lea addresses_WT_ht+0x14560, %r10
nop
dec %r11
movb (%r10), %r12b
nop
nop
nop
cmp $58413, %r8
lea addresses_D_ht+0x9c27, %rsi
lea addresses_A_ht+0x7e0, %rdi
nop
nop
nop
nop
nop
and $41568, %r8
mov $122, %rcx
rep movsq
cmp $9669, %rcx
lea addresses_WC_ht+0x47e0, %r11
nop
nop
nop
inc %rsi
movb (%r11), %r12b
nop
nop
nop
nop
nop
xor $16961, %rsi
lea addresses_normal_ht+0x10da0, %rsi
lea addresses_WT_ht+0xc3e0, %rdi
nop
nop
nop
nop
cmp $7830, %r11
mov $108, %rcx
rep movsw
nop
nop
nop
and $48605, %rdi
lea addresses_WC_ht+0x8fe0, %rsi
add $45936, %r9
movb (%rsi), %r8b
nop
sub $10116, %rcx
lea addresses_D_ht+0x18fe0, %r11
nop
nop
nop
xor %rsi, %rsi
mov (%r11), %r8w
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x8920, %rcx
nop
nop
add $10687, %r12
mov (%rcx), %r10d
nop
nop
nop
nop
nop
sub $16244, %r9
lea addresses_UC_ht+0x2c00, %r9
nop
nop
nop
nop
and $7983, %rcx
mov (%r9), %r10
nop
sub %r10, %r10
lea addresses_WC_ht+0x14120, %rsi
lea addresses_UC_ht+0x11fc2, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $41, %rcx
rep movsq
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x170c0, %r10
add %r11, %r11
movups (%r10), %xmm7
vpextrq $0, %xmm7, %rdi
cmp %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0xe50c, %r9
nop
nop
nop
xor $26421, %r15
movl $0x51525354, (%r9)
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0xeb4, %r11
nop
nop
cmp %r14, %r14
movw $0x5152, (%r11)
nop
add $14713, %r15

// Faulty Load
mov $0x2b484700000007e0, %r14
cmp %rsi, %rsi
movups (%r14), %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'44': 6360, '46': 1221, '00': 14205, '47': 43}
00 00 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 44 00 00 44 46 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 44 46 00 00 44 47 00 00 44 00 00 00 44 00 00 00 46 00 00 44 44 00 00 44 46 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 00 46 00 00 00 46 00 00 46 00 00 44 00 00 00 44 00 00 00 00 44 00 00 44 46 00 00 44 00 00 00 44 00 00 44 46 00 00 44 00 00 44 46 00 00 44 46 00 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 44 46 00 00 44 46 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 44 44 44 00 00 44 46 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 00 46 00 00 44 00 00 44 00 00 44 46 00 00 00 46 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 44 46 00 00 44 00 00 00 46 00 00 44 00 00 00 44 00 00 00 44 00 00 00 46 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 46 00 00 44 46 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 47 00 00 44 46 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 44 00 00 44 46 00 00 44 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 46 00 00 00 46 00 00 00 44 00 00 44 44 00 44 00 00 00 00 44 44 00 00 44 00 00 44 44 00 00 00 44 00 00 00 44 46 00 00 44 44 00 00 44 44 00 44 00 00 00 44 44 00 00 44 00 00 00 46 00 00 44 00 00 00 44 00 00 00 44 00 00 44 46 00 00 44 00 00 44 00 00 00 44 46 00 00 00 44 00 00 44 00 00 00 00 44 00 00 00 46 00 00 44 00 00 44 00 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 44 00 00 44 44 00 00 44 00 00 00 46 00 00 44 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 46 00 00 46 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 44 00 00 00 44 00 00 00 46 00 00 44 00 00 44 46 00 00 44 46 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 44 00 44 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 46 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 46 00 00 44 00 00 44 46 00 00 44 00 00 00 44 00 44 00 00 00 44 00 00 00 44 00 00 44 44 00 44 44 00 00 00 44 00 00 44 00 00 00 44 00 00 00 44 46 00 00 44 00 00 00 44 46 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 44 46 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 44 00 00 44 46 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 00 46 00 00 44 46 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 00 44 44 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 00 00 00 46 00 00 44 46 00 00 44 00 00 00 44 00 00 44 44 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 47 00 00 44 47 00 00 44 46 00 00 44 00 00 44 44 00 00 44 44 00 00 46 00 44 46 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 00 46 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44
*/
