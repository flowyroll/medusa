.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x897f, %rsi
lea addresses_A_ht+0x204b, %rdi
nop
nop
nop
nop
inc %r9
mov $69, %rcx
rep movsl
xor %rcx, %rcx
lea addresses_WC_ht+0xc44b, %rsi
lea addresses_normal_ht+0x69ab, %rdi
nop
cmp $9325, %rax
mov $44, %rcx
rep movsl
cmp $44744, %rax
lea addresses_UC_ht+0x1639b, %rsi
lea addresses_UC_ht+0x1304b, %rdi
clflush (%rsi)
add $49542, %rbp
mov $84, %rcx
rep movsq
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x1503b, %rsi
lea addresses_A_ht+0x1cc4b, %rdi
nop
sub %r8, %r8
mov $78, %rcx
rep movsb
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x14b4b, %rsi
lea addresses_WT_ht+0x17c6b, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r11, %r11
mov $76, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $15482, %rbp
lea addresses_UC_ht+0xf88b, %rsi
lea addresses_UC_ht+0x1584b, %rdi
nop
nop
xor $26668, %rbp
mov $6, %rcx
rep movsb
nop
sub %rax, %rax
lea addresses_UC_ht+0xf64b, %rbp
nop
xor $23255, %r11
mov (%rbp), %rdi
nop
nop
xor $25697, %r9
lea addresses_UC_ht+0x23f3, %rsi
nop
nop
nop
nop
cmp $39019, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
add $39868, %r8
lea addresses_D_ht+0x1302b, %r9
nop
nop
nop
nop
cmp $57524, %rbp
movb (%r9), %r8b
nop
nop
nop
nop
sub $29158, %r9
lea addresses_D_ht+0xb7af, %rsi
lea addresses_UC_ht+0x17dd3, %rdi
nop
lfence
mov $100, %rcx
rep movsl
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x8e4b, %rcx
xor $45777, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rcx
vmovaps %ymm7, (%rcx)
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi

// Load
lea addresses_PSE+0x1f83, %r9
nop
nop
and $15492, %rcx
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
and $25457, %r9

// Store
lea addresses_UC+0x1484b, %r13
nop
nop
nop
add %r15, %r15
movw $0x5152, (%r13)
add $38110, %r13

// Store
mov $0x4b, %r15
nop
add %rdi, %rdi
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
and $47087, %r12

// Store
mov $0x2c92ce000000004f, %r15
nop
nop
nop
cmp $42636, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
dec %r9

// Store
lea addresses_UC+0x1484b, %r13
clflush (%r13)
and $53497, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movntdq %xmm4, (%r13)
nop
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_UC+0x1484b, %rdi
add $47730, %r15
vmovntdqa (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'7a': 1, 'd1': 1, 'b5': 1, '5f': 1, 'ce': 1, '44': 26, '72': 1, '66': 14, '06': 21, '48': 9838, '03': 1, 'e9': 1, '1d': 1, '46': 144, '00': 11774, '31': 1, '71': 1, '29': 1}
00 00 00 00 48 48 48 00 00 48 00 00 48 48 00 48 00 00 48 48 00 48 48 48 48 00 00 00 00 48 00 48 00 48 00 48 48 00 00 00 00 48 00 00 48 00 00 48 00 48 00 00 00 00 48 48 48 46 48 00 48 00 00 48 00 48 00 00 00 48 00 48 48 00 00 00 48 48 48 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 00 48 00 48 48 48 48 00 48 00 00 00 00 00 00 48 00 48 48 00 48 00 48 48 48 48 48 48 00 00 48 48 00 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00 00 48 48 48 48 48 00 00 00 00 00 48 48 00 48 00 48 48 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 48 48 48 48 00 48 00 00 00 48 48 48 00 00 48 00 48 48 00 00 46 48 00 48 00 00 00 48 48 00 00 00 48 00 00 00 48 00 00 00 00 00 48 48 48 00 00 00 48 48 48 00 00 00 00 48 00 00 00 00 48 00 00 00 48 48 48 48 00 00 00 48 48 00 48 00 48 00 00 00 00 00 00 00 48 00 48 48 00 48 00 00 48 48 00 00 48 48 00 46 00 00 00 46 00 48 48 48 00 00 46 00 48 00 48 00 48 00 00 48 00 00 48 48 48 48 48 00 00 00 48 00 00 00 48 48 48 48 00 48 48 48 00 48 48 48 00 00 00 00 00 00 48 00 00 48 48 00 48 48 48 48 00 48 00 48 48 00 48 00 48 48 48 00 00 00 00 00 00 48 48 48 00 00 48 00 00 00 48 00 48 48 00 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 00 48 00 00 48 48 48 48 00 46 00 00 48 00 48 48 48 00 48 48 48 00 00 00 00 48 00 48 00 00 48 00 48 48 48 00 00 00 00 48 48 48 00 48 48 48 48 48 00 00 00 00 48 00 00 48 48 00 00 00 48 48 00 48 00 00 48 00 00 48 00 00 00 48 48 00 48 48 48 00 00 48 48 48 00 00 00 00 00 48 48 00 00 00 00 48 00 00 48 48 00 48 48 00 46 48 48 48 48 48 00 48 00 00 48 48 48 00 00 48 00 00 00 00 00 48 48 00 00 00 48 00 48 48 00 00 00 48 48 48 48 48 00 00 48 48 48 48 00 00 00 48 00 48 48 00 48 00 00 48 48 48 00 48 00 00 48 00 48 48 00 48 48 00 00 48 00 48 00 00 48 48 48 48 00 00 00 00 48 00 48 00 48 48 48 00 00 48 00 48 00 00 00 48 00 00 00 00 00 00 48 48 48 00 48 00 00 00 48 00 48 00 48 00 48 48 00 48 48 48 48 48 00 00 48 00 00 48 48 48 00 00 00 00 48 00 48 48 00 48 00 00 00 48 48 48 48 48 48 00 48 48 48 48 00 48 00 48 48 00 48 00 00 48 48 48 48 48 00 48 00 00 48 48 00 00 48 00 00 00 48 48 00 00 48 00 48 48 00 48 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 00 48 48 48 48 00 00 48 00 48 00 00 48 00 48 48 00 48 00 00 00 48 48 48 48 48 00 00 00 48 48 00 00 00 48 48 48 00 48 00 00 00 00 00 00 48 00 00 48 48 00 00 00 00 00 48 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 00 48 48 48 00 00 00 00 00 00 48 00 48 00 00 48 00 48 48 00 48 00 48 00 00 00 00 00 48 00 00 00 48 48 48 48 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 48 48 00 00 48 48 48 00 46 48 00 00 48 48 00 00 48 00 00 00 48 00 00 48 00 00 00 48 00 48 46 00 00 48 00 00 48 00 48 00 48 00 00 48 46 00 48 00 48 48 00 48 00 00 00 48 48 00 48 00 48 00 48 48 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 48 48 00 48 00 48 48 48 48 48 48 00 48 00 00 00 48 00 48 00 00 00 48 48 00 48 48 46 48 00 48 48 00 00 00 00 00 00 48 00 48 00 48 48 00 00 48 00 00 48 48 48 48 00 00 48 00 48 00 00 00 48 48 00 00 00 48 48 00 00 00 00 00 48 48 00 48 00 00 48 00 00 48 00 48 00 00 48 48
*/
