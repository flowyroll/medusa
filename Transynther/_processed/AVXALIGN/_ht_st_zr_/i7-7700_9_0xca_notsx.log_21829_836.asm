.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b78, %rsi
lea addresses_WT_ht+0x16978, %rdi
nop
nop
and %r14, %r14
mov $34, %rcx
rep movsb
inc %r13
lea addresses_WT_ht+0x15560, %rsi
lea addresses_UC_ht+0x1398, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $85, %rcx
rep movsw
nop
nop
xor $31010, %r13
lea addresses_D_ht+0xbb78, %r13
nop
nop
nop
nop
nop
xor $11134, %r11
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
add $37113, %r14
lea addresses_normal_ht+0x12ea6, %r13
and %r14, %r14
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x1eb78, %rsi
lea addresses_UC_ht+0x1ac78, %rdi
clflush (%rdi)
nop
sub $1276, %rbp
mov $36, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_normal_ht+0x1c738, %rsi
lea addresses_WT_ht+0x1b278, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r11, %r11
mov $119, %rcx
rep movsq
nop
nop
nop
nop
lfence
lea addresses_A_ht+0xb778, %rsi
lea addresses_WC_ht+0x16b78, %rdi
nop
nop
nop
sub $34199, %r11
mov $101, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $29337, %r13
lea addresses_WT_ht+0x5108, %r10
add $24095, %r13
movb (%r10), %cl
nop
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x1e9f8, %rbp
add $47709, %rsi
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
nop
nop
nop
xor $14442, %r14
lea addresses_D_ht+0x68c8, %rsi
nop
nop
nop
nop
add $6984, %rcx
movb (%rsi), %r14b
nop
nop
nop
nop
xor $30975, %rcx
lea addresses_WC_ht+0x11f78, %rbp
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rbp), %r11w
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x1a778, %r11
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r11)
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x10af8, %rsi
lea addresses_WC_ht+0x16a58, %rdi
xor %r13, %r13
mov $126, %rcx
rep movsl
sub $51879, %r10
lea addresses_WC_ht+0x13368, %rdi
nop
nop
nop
nop
nop
add $2931, %rsi
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0xa20a, %rsi
lea addresses_normal+0x29a8, %rdi
nop
nop
nop
inc %r14
mov $99, %rcx
rep movsw
nop
sub %rsi, %rsi

// Store
lea addresses_D+0xca3c, %rsi
nop
nop
nop
inc %rdi
movw $0x5152, (%rsi)
sub $61048, %r15

// Load
lea addresses_UC+0x3b78, %rsi
nop
cmp %rax, %rax
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
nop
sub $6415, %r14

// Load
lea addresses_PSE+0x18fe8, %r15
nop
nop
nop
and $3451, %rsi
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x193f0, %rsi
add %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_UC+0x10610, %rbp
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
nop
add %rsi, %rsi

// Store
mov $0xb78, %rcx
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rcx)
nop
sub $34588, %rsi

// Store
lea addresses_D+0x11b78, %rax
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
dec %r15

// Store
lea addresses_WC+0x14178, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
nop
nop
and $1141, %rax

// Load
lea addresses_UC+0x5578, %r14
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r14), %r15w
nop
xor %rcx, %rcx

// Store
lea addresses_RW+0x18998, %rcx
nop
nop
nop
nop
xor $41175, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_A+0x18224, %rbp
nop
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%rbp)
nop
nop
nop
nop
xor $55209, %rsi

// Faulty Load
lea addresses_D+0x9b78, %rcx
cmp $18234, %rdi
vmovaps (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 6665, '45': 6051, '33': 1, '44': 9100, '49': 12}
33 00 45 45 00 44 44 00 00 44 44 45 00 00 45 00 00 44 00 00 44 45 00 45 45 00 45 45 44 44 00 44 44 45 45 44 45 00 00 45 00 44 00 44 00 45 45 45 44 44 00 45 00 45 00 44 44 00 44 00 45 00 44 00 44 45 45 00 44 00 00 44 00 00 44 44 00 45 44 00 44 44 45 45 00 00 45 44 44 00 00 44 00 44 00 00 00 45 44 00 00 45 45 00 00 00 44 44 44 45 00 00 44 44 00 45 45 44 00 44 45 45 44 00 00 44 00 00 44 44 00 45 44 00 45 00 00 44 44 44 45 44 44 00 44 44 44 45 44 45 44 44 00 44 00 00 44 00 00 45 00 44 45 44 45 45 45 44 00 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 45 44 44 44 45 00 44 44 44 44 44 45 45 45 00 44 44 00 45 44 45 00 44 44 44 44 45 00 44 00 00 00 45 44 45 44 00 00 44 45 45 44 00 44 00 00 44 45 00 44 45 44 00 44 00 45 00 00 44 44 45 00 44 44 44 44 44 44 44 44 45 00 00 00 44 45 44 00 45 00 45 44 44 44 45 44 44 45 44 45 00 00 45 00 00 44 00 45 44 00 00 00 44 45 45 44 00 45 45 00 44 44 44 45 00 00 45 44 44 45 00 00 45 00 45 44 00 44 44 44 44 45 00 45 44 45 44 00 45 00 45 45 44 44 00 45 00 44 00 44 44 44 44 44 00 44 00 45 44 00 44 44 45 44 00 45 00 44 44 00 00 44 00 44 44 44 45 44 45 44 45 44 00 45 44 00 44 44 44 44 44 44 44 44 44 45 00 44 44 45 44 44 45 44 44 00 44 00 44 44 00 44 44 45 45 44 44 00 45 44 00 45 00 44 00 00 00 45 00 45 45 44 45 00 45 00 00 45 45 44 45 00 00 00 00 00 45 00 45 00 00 00 45 45 45 45 45 44 44 44 00 44 45 00 45 00 00 45 00 44 45 45 44 44 44 00 44 44 00 44 00 00 45 00 44 00 44 45 44 44 45 44 00 45 45 44 00 44 45 00 45 45 44 00 45 44 44 44 00 44 44 00 44 00 44 00 44 45 44 00 44 44 44 00 45 44 44 45 45 00 44 45 45 44 44 00 00 44 44 44 45 44 44 45 45 44 00 44 00 44 45 44 44 00 00 00 44 00 44 44 45 44 44 44 00 44 45 45 45 00 00 00 44 44 00 00 00 44 44 00 00 44 44 44 44 44 44 45 45 00 00 00 45 00 44 44 44 45 45 00 44 45 45 44 45 45 00 44 00 44 45 00 45 44 44 45 45 45 00 00 45 00 45 44 44 45 45 44 45 44 44 45 45 00 44 45 45 45 00 45 00 44 44 44 00 44 44 44 00 44 44 44 45 00 45 44 45 45 00 44 45 45 44 00 45 00 45 45 00 44 44 00 44 45 45 44 44 45 00 44 44 44 45 44 44 00 45 44 44 44 00 44 45 44 45 44 00 44 44 44 45 44 00 45 45 44 44 00 44 45 45 45 00 00 45 00 44 45 00 45 45 44 45 44 00 44 44 44 45 44 45 45 44 00 44 44 00 44 45 44 44 45 44 45 45 00 44 44 44 00 00 45 44 44 00 00 44 45 00 45 44 00 45 45 00 44 44 44 44 44 44 45 00 45 00 44 00 44 44 00 44 45 00 45 44 44 00 44 00 44 44 45 45 44 45 44 45 44 45 44 45 00 44 00 44 00 44 00 44 45 00 44 44 44 00 45 45 45 44 00 44 45 44 00 44 00 00 00 44 44 00 00 45 00 00 00 44 45 44 00 45 44 44 44 00 44 44 44 44 00 44 44 00 45 00 00 44 44 44 44 00 45 00 00 00 44 44 00 45 45 45 45 00 44 44 00 44 00 00 00 44 00 44 45 44 44 00 00 44 44 44 44 44 44 00 45 45 45 44 44 44 44 00 44 44 44 44 44 45 00 44 44 44 44 44 44 00 44 45 44 00 45 44 00 44 00 45 45 00 00 00 44 44 45 44 00 45 00 45 44 00 44 45 00 44 44 44 45 44 44 44 45 45 44 45 45 00 44 45 00 00 44 45 00 44 00 00 00 00 44 44 44 44 00 00 45 00 00 00 45 44 00 44 45 45 45 45 00 44 44 00 00 44 00 44 45 00 00 44 44 00 44 44 45 44 45 00 44 44 45 44 44 44 45 45 45
*/
