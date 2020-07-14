.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x3e, %rcx
add $39397, %rbx
movl $0x61626364, (%rcx)
nop
and %r10, %r10
lea addresses_WT_ht+0x1e557, %r15
xor $38840, %r9
movb $0x61, (%r15)
cmp %r8, %r8
lea addresses_UC_ht+0x1b7bf, %rsi
lea addresses_normal_ht+0x15dd7, %rdi
nop
xor $22525, %r15
mov $102, %rcx
rep movsb
and $27067, %rbx
lea addresses_UC_ht+0x17167, %r9
nop
nop
dec %rdi
mov (%r9), %rbx
nop
nop
nop
nop
sub $28602, %rdi
lea addresses_A_ht+0x5157, %rsi
lea addresses_D_ht+0xb287, %rdi
clflush (%rdi)
inc %r9
mov $20, %rcx
rep movsb
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x5f57, %r8
nop
nop
add $51858, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %r8
vmovntdq %ymm4, (%r8)
nop
nop
nop
nop
nop
cmp $54730, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rsi

// Store
lea addresses_PSE+0x1b757, %r12
sub %r9, %r9
movw $0x5152, (%r12)
add %rsi, %rsi

// Load
lea addresses_WC+0x11fd7, %rsi
nop
nop
nop
lfence
mov (%rsi), %r13w
nop
nop
nop
inc %r9

// Store
lea addresses_normal+0x164eb, %rbp
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_WC+0x1d6d7, %r12
nop
inc %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r12)
nop
and $7177, %r12

// Store
lea addresses_RW+0x8957, %r13
nop
nop
nop
nop
xor $22297, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r13)
nop
and %r10, %r10

// Store
lea addresses_WC+0x5494, %r13
nop
nop
dec %r9
movw $0x5152, (%r13)
nop
xor %r13, %r13

// Store
lea addresses_UC+0xfe17, %r13
nop
dec %r10
movw $0x5152, (%r13)
nop
nop
sub $51798, %r12

// Store
mov $0x757, %r13
nop
nop
nop
nop
nop
and $44551, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
nop
cmp $12861, %r9

// Store
lea addresses_UC+0x1b357, %rbp
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, (%rbp)
add %r13, %r13

// Store
lea addresses_PSE+0xf57, %r9
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%r9)
xor %rbp, %rbp

// Store
lea addresses_WT+0xeb57, %rbp
nop
add $63193, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rbp)
sub $19399, %rbp

// Load
lea addresses_UC+0x18617, %r13
nop
nop
nop
nop
nop
cmp $61700, %rbp
movb (%r13), %r12b
nop
nop
inc %r10

// Store
lea addresses_D+0x19757, %r8
and %r10, %r10
movl $0x51525354, (%r8)
nop
cmp $42775, %r8

// Load
lea addresses_PSE+0x1b757, %r12
nop
nop
nop
nop
xor $27759, %rsi
mov (%r12), %r10
nop
nop
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_PSE+0x1b757, %rbp
nop
nop
nop
nop
inc %rsi
vmovntdqa (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'60': 36, '00': 217, '06': 79}
06 00 06 06 00 00 06 00 00 00 06 00 00 06 06 00 60 06 00 00 00 00 00 00 06 00 00 60 00 00 60 06 00 00 00 00 00 00 00 06 00 60 06 00 00 00 06 00 00 60 00 00 00 60 00 60 00 00 00 00 00 00 00 00 06 06 06 00 00 00 06 06 00 00 06 00 06 00 00 00 00 00 00 00 00 60 00 06 00 00 06 60 06 00 60 00 00 00 00 00 00 00 00 06 06 60 00 00 06 00 00 00 00 00 00 06 00 06 60 06 06 00 00 60 06 00 60 00 00 00 00 00 00 00 06 00 00 06 00 00 00 06 00 00 06 00 00 06 00 00 06 00 06 06 00 00 00 00 06 06 06 00 00 06 00 60 00 00 60 00 00 60 00 00 60 00 00 00 00 00 06 06 00 00 00 00 00 00 00 06 00 00 60 00 00 00 00 00 00 00 60 06 06 00 00 00 00 00 00 00 00 00 60 06 00 00 00 06 00 06 00 60 60 06 60 00 00 00 00 06 00 00 06 00 06 06 06 00 06 00 00 06 00 00 06 00 06 00 00 06 00 06 00 00 00 06 00 00 06 60 00 00 00 00 00 00 00 00 06 60 00 00 00 00 60 00 00 00 00 06 00 00 06 06 00 60 60 00 00 00 60 00 60 00 00 00 06 00 00 60 60 00 00 00 06 60 00 00 60 60 00 06 00 06 00 00 00 00 06 00 00 00 06 00 00 00 06 06 06 00 00 06
*/
