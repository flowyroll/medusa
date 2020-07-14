.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5e31, %rbp
nop
nop
nop
nop
dec %r13
movb $0x61, (%rbp)
nop
nop
nop
add $1758, %r11
lea addresses_WT_ht+0x109b1, %rcx
nop
inc %rbp
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x1908d, %rbp
nop
and $58908, %r11
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %r14
inc %rbp
lea addresses_UC_ht+0x1abd1, %rcx
nop
nop
nop
nop
cmp %r13, %r13
movb (%rcx), %r15b
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x6711, %rsi
lea addresses_D_ht+0x4432, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0, %rcx
rep movsl
nop
nop
nop
nop
nop
add $22382, %rsi
lea addresses_WC_ht+0xe7d1, %r11
nop
and $25543, %r14
movb $0x61, (%r11)
nop
sub %r11, %r11
lea addresses_WT_ht+0x165d1, %r14
nop
nop
nop
cmp $38496, %rbp
mov (%r14), %r11w
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1c651, %rsi
lea addresses_UC_ht+0x1a651, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $53, %rcx
rep movsb
nop
nop
sub $37104, %rcx
lea addresses_D_ht+0x1c951, %r14
nop
nop
nop
nop
nop
add $15897, %r11
mov (%r14), %esi
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x102d1, %r15
nop
cmp %r11, %r11
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x1782f, %r9
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%r9)
nop
add $28356, %r9

// Store
lea addresses_D+0xf2d1, %r11
nop
nop
nop
mfence
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_PSE+0x6ad1, %rcx
nop
add $26335, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
mov $0x43b3530000000ad1, %rcx
nop
nop
and $6932, %r11
mov (%rcx), %r14d
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 9629, '58': 12198, '12': 1, '40': 1}
00 58 58 58 58 00 58 00 58 00 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 00 00 00 58 00 00 00 58 00 58 58 00 00 00 58 00 58 58 00 58 00 00 58 58 00 00 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 00 00 58 58 58 58 58 00 00 00 58 00 58 58 58 00 00 58 00 00 58 00 58 58 58 58 58 00 58 58 00 58 58 00 00 00 58 58 00 58 58 58 58 58 00 58 00 58 58 00 00 00 58 58 00 58 58 58 58 00 00 00 00 58 00 00 58 58 00 58 58 58 00 58 58 00 58 58 58 00 00 00 00 58 00 00 00 00 00 00 58 58 00 58 58 00 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 00 00 58 58 58 58 00 00 58 00 00 00 58 58 00 58 58 00 58 00 58 58 00 00 00 58 00 58 58 00 00 00 00 58 58 58 00 00 58 00 58 58 00 00 00 00 58 58 58 00 00 58 58 58 00 58 58 58 00 00 00 00 00 58 58 58 58 58 00 58 58 00 58 58 58 58 00 00 58 58 58 00 58 00 00 00 58 58 00 58 00 58 00 58 58 58 00 58 58 58 00 00 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 00 58 58 00 00 58 00 00 00 58 00 58 58 00 58 58 00 58 00 58 58 00 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 00 00 58 00 00 00 00 58 00 00 58 58 58 00 00 00 00 58 00 00 58 00 00 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 00 00 58 00 58 00 00 58 00 58 00 58 00 00 58 00 00 58 58 58 58 58 00 58 00 00 58 00 58 58 58 58 00 58 58 58 00 58 00 00 58 58 58 58 00 58 00 00 00 58 58 58 00 58 00 58 58 58 00 00 00 00 58 58 58 58 58 00 58 58 58 00 58 58 00 00 58 00 00 00 00 58 00 00 58 00 00 00 58 00 58 58 00 58 58 00 00 58 58 58 58 00 58 00 00 58 58 00 00 00 00 00 00 00 58 00 00 00 58 58 58 00 00 00 00 00 00 00 58 00 00 58 58 58 00 58 00 00 58 58 58 00 58 00 58 58 58 58 00 00 00 58 58 58 00 58 00 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 00 00 58 58 58 58 00 00 00 00 58 58 00 58 58 00 00 58 58 00 00 58 00 00 00 58 58 58 00 58 58 00 00 58 00 00 00 00 00 58 58 58 00 00 58 00 58 58 58 58 58 00 00 00 00 58 00 00 58 00 00 58 00 00 00 58 00 58 00 58 58 00 00 00 58 58 58 00 00 00 00 00 00 58 58 00 00 58 00 58 58 00 00 00 00 58 58 58 00 00 00 00 58 58 58 58 00 00 58 00 58 00 00 00 58 00 58 58 00 58 58 00 58 00 58 00 00 58 00 00 58 58 58 00 00 58 00 00 00 00 58 00 58 00 58 58 58 00 58 58 00 00 58 58 00 58 58 00 58 58 58 00 00 58 58 58 00 00 58 00 00 58 58 00 58 58 58 58 58 00 58 00 58 00 00 00 00 00 00 58 00 00 58 58 58 58 58 58 00 00 00 00 00 00 58 58 58 00 00 00 58 00 00 58 00 58 00 58 00 58 00 00 00 58 58 00 58 58 00 00 00 58 58 58 00 58 58 00 00 58 00 58 58 00 58 58 00 00 58 58 00 00 00 58 00 00 58 58 00 58 00 58 58 58 58 58 58 00 58 00 58 00 00 00 00 58 00 00 58 58 58 58 58 58 58 00 00 00 00 00 00 00 00 58 00 58 00 00 58 58 58 58 58 00 58 00 00 58 00 00 00 58 00 58 58 58 58 00 58 58 00 58 58 58 58 00 00 58 00 58 00 58 00 00 00 58 00 00 58 58 00 00 00 00 58 58 58 00 58 00 58 00 00 00 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 00 58 58 58 00 58 00 58 58 58 58 58 00 58 00 58 58 58 58 00 00 58 58 00 58 58 58 00 58 00 00 00 58 00 58 58 00 00 58 58 00 00 58 58 00 58 58 00 00 00 58 00 58 00 58 00 00 58 00 00
*/
