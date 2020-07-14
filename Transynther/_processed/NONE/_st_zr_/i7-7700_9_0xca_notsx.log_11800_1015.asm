.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x162c, %rdx
nop
nop
inc %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
xor $14456, %r8
lea addresses_WT_ht+0xe54c, %rsi
lea addresses_WT_ht+0x672c, %rdi
nop
and %r15, %r15
mov $117, %rcx
rep movsb
nop
nop
lfence
lea addresses_WT_ht+0x1db4c, %rdx
add %rsi, %rsi
movb $0x61, (%rdx)
sub %rcx, %rcx
lea addresses_WC_ht+0x1b9bb, %rcx
nop
nop
add $13677, %rsi
mov (%rcx), %r15
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x454c, %rsi
lea addresses_WC_ht+0x1468c, %rdi
and %r11, %r11
mov $49, %rcx
rep movsq
nop
nop
nop
and $45809, %r13
lea addresses_UC_ht+0xc57e, %rsi
lea addresses_normal_ht+0x874c, %rdi
nop
nop
nop
and $19457, %r15
mov $80, %rcx
rep movsw
nop
nop
nop
nop
nop
add $5170, %rdi
lea addresses_WT_ht+0x1b24c, %rsi
lea addresses_WC_ht+0xef0c, %rdi
nop
nop
sub $2041, %r15
mov $46, %rcx
rep movsw
nop
nop
dec %r15
lea addresses_WC_ht+0xbf4c, %rsi
lea addresses_normal_ht+0x131ac, %rdi
and $3952, %r11
mov $54, %rcx
rep movsw
nop
xor %r15, %r15
lea addresses_WC_ht+0x97d8, %rsi
lea addresses_A_ht+0x1d54c, %rdi
add %rdx, %rdx
mov $92, %rcx
rep movsl
nop
cmp %r11, %r11
lea addresses_UC_ht+0x8d4c, %r8
nop
nop
cmp %r15, %r15
mov (%r8), %r11d
add $641, %r15
lea addresses_normal_ht+0x12d4c, %r8
nop
nop
xor $34231, %r15
mov (%r8), %r13
nop
nop
nop
nop
nop
cmp $30437, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x1ad5c, %rsi
lea addresses_WC+0xf76c, %rdi
nop
nop
xor $23148, %r10
mov $116, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_D+0xec2c, %r10
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
add $45311, %r12

// REPMOV
lea addresses_WC+0x14388, %rsi
lea addresses_WT+0x88ac, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r8
mov $53, %rcx
rep movsb
nop
nop
nop
xor $45969, %r12

// REPMOV
lea addresses_D+0x1eccc, %rsi
lea addresses_PSE+0x11b80, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rax, %rax
mov $115, %rcx
rep movsl
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_normal+0x1704c, %rcx
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WT+0x1844c, %r8
mfence
movb $0x51, (%r8)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_D+0xad4c, %r8
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r8)
cmp $6891, %r10

// REPMOV
lea addresses_RW+0xa9cc, %rsi
lea addresses_RW+0x1a148, %rdi
nop
lfence
mov $37, %rcx
rep movsw
sub $7008, %rdi

// Load
lea addresses_UC+0x183bc, %r10
cmp $34893, %r8
mov (%r10), %rsi
nop
nop
nop
and %rax, %rax

// Store
lea addresses_A+0x310f, %r10
add $55841, %r13
movw $0x5152, (%r10)
nop
xor %rax, %rax

// Faulty Load
lea addresses_A+0x6d4c, %rdi
and %r10, %r10
mov (%rdi), %r12d
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 76, '58': 11724}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
