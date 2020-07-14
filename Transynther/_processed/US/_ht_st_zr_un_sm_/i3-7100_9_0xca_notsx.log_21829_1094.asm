.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x190a3, %rsi
lea addresses_WC_ht+0x16743, %rdi
nop
nop
nop
sub %r15, %r15
mov $49, %rcx
rep movsw
xor $46172, %r9
lea addresses_WC_ht+0x1e563, %rsi
lea addresses_D_ht+0x1790b, %rdi
and $52943, %r9
mov $59, %rcx
rep movsw
sub $17001, %r15
lea addresses_A_ht+0x1337b, %rsi
lea addresses_normal_ht+0x16c47, %rdi
nop
xor $11469, %r10
mov $87, %rcx
rep movsq
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x7b43, %rsi
lea addresses_normal_ht+0xdf43, %rdi
nop
nop
dec %r11
mov $68, %rcx
rep movsq
nop
dec %r11
lea addresses_WT_ht+0x17aab, %r11
nop
nop
nop
inc %rcx
movl $0x61626364, (%r11)
nop
nop
nop
xor $45139, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_RW+0xd043, %r12
nop
dec %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r12)
xor $10127, %r11

// Store
lea addresses_US+0xd343, %r14
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_US+0xd343, %r14
nop
nop
nop
nop
add $58499, %rbx
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'45': 18952, '00': 2872, '48': 1, '76': 1, '92': 1, 'da': 1, '52': 1}
00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 00 45 45 45 45 00 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 00 45 00 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 45 00 45 45 00 45 00 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 00 45 45 45 45 00 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 45 45 00 45 00 45 45 45 00 00 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 00 00 45 45 00 45 45 45 45 45 45 00 45 00 45 00 45 45 00 45 45 45 45 45 45 00 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 45 00 45 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 00 45 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 00 00 45 45 52 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00
*/
