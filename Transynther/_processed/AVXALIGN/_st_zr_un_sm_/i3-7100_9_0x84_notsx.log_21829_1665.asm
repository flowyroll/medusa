.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14fdc, %r8
nop
nop
nop
nop
nop
xor %r13, %r13
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
xor $18357, %r11
lea addresses_UC_ht+0x1455c, %rsi
lea addresses_WC_ht+0x1eb1c, %rdi
nop
nop
cmp %r15, %r15
mov $93, %rcx
rep movsb
cmp $4066, %r11
lea addresses_UC_ht+0x154dc, %rsi
lea addresses_A_ht+0x1a1dc, %rdi
nop
nop
xor %r13, %r13
mov $4, %rcx
rep movsb
nop
add $6176, %rdi
lea addresses_UC_ht+0x12d3c, %rsi
lea addresses_A_ht+0xaddc, %rdi
nop
nop
nop
dec %r13
mov $101, %rcx
rep movsl
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x793c, %r11
and $22347, %rsi
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x1915c, %rsi
lea addresses_A_ht+0xc5dc, %rdi
nop
nop
nop
cmp $11928, %r11
mov $45, %rcx
rep movsb
nop
add $43322, %r14
lea addresses_WC_ht+0xffdc, %rsi
lea addresses_WT_ht+0x107dc, %rdi
clflush (%rdi)
and %r11, %r11
mov $24, %rcx
rep movsb
nop
nop
and %r15, %r15
lea addresses_D_ht+0x99dc, %r15
nop
xor %r11, %r11
movb $0x61, (%r15)
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x177dc, %r11
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
sub $52414, %rdi

// Store
mov $0x3dc, %r15
nop
nop
nop
nop
and $38285, %r10
movb $0x51, (%r15)
nop
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_RW+0x821c, %r13
nop
nop
cmp $63041, %rdi
movw $0x5152, (%r13)
nop
and %rsi, %rsi

// Load
lea addresses_UC+0x8b94, %r15
cmp $34909, %rsi
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
cmp %r13, %r13

// Store
lea addresses_US+0x8fdc, %r13
cmp $7028, %r10
movb $0x51, (%r13)
nop
nop
dec %r11

// Store
lea addresses_PSE+0x15edc, %rsi
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
add $57808, %rdx

// Load
lea addresses_WT+0x5d7c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r13, %r13
movb (%rdi), %r15b
nop
nop
xor $35288, %rdx

// Store
lea addresses_WC+0x2fdc, %r11
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
sub $20966, %rdx

// Faulty Load
lea addresses_US+0x8fdc, %rdi
nop
nop
xor $62397, %r10
mov (%rdi), %r15w
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'c1': 1, 'd0': 1, '98': 2, '54': 1, '00': 18051, '58': 3772, 'e0': 1}
00 58 00 00 00 00 00 00 00 00 00 58 58 58 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 58 58 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 58 58 00 58 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 58 58 58 00 00 58 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 58 58 00 58 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 58 58 00 00 00 00 00 00 58 58 00 58 58 00 00 00 00 00 58 58 00 00 00 00 58 58 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 00 00 58 00 00 00 00 58 00 00 58 00 58 00 58 00 00 00 00 00 00 00 58 00 00 00 00 58 00 58 00 58 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 58 00 58 58 58 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 58 58 58 00 58 00 00 00 58 00 00 58 58 58 00 00 00 58 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 58 00 00 00 58 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 58 00 00 00 00 58 00 58 00 00 00 58 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 58 58 00 00 00 00 58 00 00 00 00 00 00 58 58 58 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 58 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58
*/
