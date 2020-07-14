.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5169, %r10
nop
xor %rsi, %rsi
mov (%r10), %bx
sub $11382, %r11
lea addresses_A_ht+0x855d, %rsi
lea addresses_D_ht+0x9f1c, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $10, %rcx
rep movsq
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x7c7, %rsi
lea addresses_normal_ht+0x17ad5, %rdi
add %r8, %r8
mov $123, %rcx
rep movsw
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x178ad, %rsi
lea addresses_UC_ht+0x1ce0d, %rdi
xor %r9, %r9
mov $10, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x9389, %rsi
lea addresses_WC_ht+0x1060d, %rdi
clflush (%rdi)
nop
nop
sub %r8, %r8
mov $115, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1520d, %rcx
nop
nop
dec %r9
movw $0x6162, (%rcx)
cmp $43384, %rsi
lea addresses_D_ht+0xe1b7, %rsi
lea addresses_A_ht+0x1b48d, %rdi
clflush (%rdi)
nop
add %r8, %r8
mov $4, %rcx
rep movsb
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xe1dd, %rsi
lea addresses_WC_ht+0x11e01, %rdi
nop
nop
nop
and $16295, %r9
mov $108, %rcx
rep movsw
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0xaecd, %r9
sub %rdi, %rdi
mov (%r9), %rbx
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x120d, %rsi
lea addresses_D_ht+0x1d00b, %rdi
nop
nop
and $29048, %r11
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
add $32036, %r10
lea addresses_normal_ht+0x1c22e, %rsi
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
and $0xffffffffffffffc0, %rsi
vmovaps %ymm6, (%rsi)
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x1240d, %r8
nop
xor %rcx, %rcx
movb (%r8), %r10b
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1f80d, %r15
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// REPMOV
lea addresses_WC+0x860d, %rsi
lea addresses_UC+0xe3a5, %rdi
nop
nop
nop
nop
nop
cmp $18937, %r15
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $61051, %r15

// Store
lea addresses_D+0xa60d, %rdx
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
cmp %r14, %r14

// Load
lea addresses_US+0x740d, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rdx), %r14d
nop
inc %rsi

// Store
lea addresses_normal+0x1900d, %rbp
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
xor %rcx, %rcx

// Store
lea addresses_RW+0x11f0d, %r14
nop
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r14)
nop
nop
nop
dec %rdx

// Store
lea addresses_US+0xa60d, %rsi
nop
nop
nop
nop
add %r15, %r15
movl $0x51525354, (%rsi)
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_US+0xa60d, %r13
nop
nop
nop
nop
nop
add $17397, %r14
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 11071, '06': 1, 'a4': 1, '46': 4, '05': 1, '9a': 11, '48': 10737, 'd5': 1, '7c': 1, '9f': 1}
00 48 48 48 00 00 00 00 00 48 00 00 48 00 48 48 48 00 48 48 00 48 00 48 48 48 00 00 48 48 48 48 48 48 48 00 00 00 48 48 00 00 00 48 00 00 00 48 48 00 00 48 48 00 00 00 00 48 00 00 00 48 00 00 48 48 48 48 00 00 48 00 48 00 00 48 48 00 00 48 00 48 48 48 48 00 48 00 48 48 48 00 48 00 00 48 48 00 00 00 00 48 00 48 00 00 00 48 00 48 00 48 00 48 48 48 00 00 48 48 48 00 48 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 48 00 48 00 48 00 00 00 48 00 48 00 00 48 00 00 48 00 00 00 48 48 48 48 48 48 00 48 48 48 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 48 00 00 48 00 48 00 48 00 48 00 48 48 48 00 48 48 00 00 48 00 48 00 00 00 48 00 48 00 48 00 00 00 00 48 00 48 48 48 48 00 48 00 00 48 00 48 00 48 00 48 00 00 00 48 00 00 48 48 48 00 48 00 00 48 48 00 00 48 48 00 00 48 00 48 00 48 00 48 00 48 48 48 00 48 00 48 48 48 00 00 48 00 48 48 00 00 00 00 00 00 48 00 48 00 48 00 00 48 48 00 00 48 00 48 48 00 48 48 00 00 48 48 48 00 00 48 00 48 00 00 48 48 00 48 48 48 00 48 48 00 48 00 00 48 00 00 48 48 00 48 48 48 00 00 00 48 00 00 00 48 00 00 00 48 48 00 00 00 48 00 48 00 00 48 48 48 48 00 48 00 48 00 48 00 48 00 48 48 00 00 00 48 48 48 48 48 00 48 48 00 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 00 00 48 00 48 48 00 00 48 48 00 00 48 48 48 00 48 48 00 48 00 00 00 48 48 00 00 00 00 48 00 48 00 00 48 00 00 48 00 48 00 00 48 48 48 00 48 48 00 48 00 48 48 00 48 00 48 48 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 00 48 48 48 48 00 00 48 48 00 00 48 00 48 00 48 00 48 00 48 48 48 00 00 48 48 00 00 48 00 48 48 00 48 00 48 00 48 48 48 00 00 00 48 00 48 00 00 48 00 48 48 48 00 48 00 48 48 00 48 00 00 48 00 48 48 00 00 00 48 48 48 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 48 00 00 48 00 00 00 48 48 00 48 00 00 00 48 00 48 00 48 00 48 48 00 00 48 48 48 00 48 48 48 48 00 00 48 48 48 00 00 48 00 00 48 00 00 00 00 48 00 00 48 00 00 48 00 00 00 48 48 00 48 00 48 00 00 00 48 00 00 00 48 48 48 00 00 48 00 48 48 00 48 00 48 48 48 00 00 48 48 00 00 48 00 00 48 00 00 00 48 48 48 00 48 48 48 00 00 48 00 48 00 00 48 00 48 00 00 48 00 00 00 48 48 00 00 00 48 00 00 48 00 48 00 00 00 48 48 00 48 48 00 00 48 48 00 48 48 48 48 00 00 48 00 00 48 48 00 48 00 48 00 48 00 48 48 48 48 48 48 00 48 00 48 00 48 00 00 48 48 00 00 48 48 48 48 48 00 00 48 48 00 00 00 48 00 00 48 48 00 00 48 00 00 00 48 48 00 48 00 00 00 48 48 00 48 48 00 00 48 00 00 48 00 48 48 48 00 48 00 48 48 48 00 48 00 00 00 48 00 48 00 00 48 00 48 00 00 00 00 48 00 48 48 48 00 48 48 00 00 00 48 00 48 00 00 48 00 00 48 48 00 48 48 48 48 00 48 48 00 48 00 00 48 00 48 48 48 48 48 00 48 48 48 00 00 48 48 00 48 48 00 48 00 48 48 48 48 00 00 00 48 00 00 48 00 48 00 48 00 00 48 00 00 48 00 00 00 48 48 00 00 48 48 00 48 48 00 00 48 00 00 00 48 48 00 00 48 00 00 00 00 48 48 00 48 00 48 48 48 00 48 48 48 00 48 48 00 48 48 00 00 48 48 00 48 48 48 00 00 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 00 00 48 48 48 00 48 48 00 00 48 00 00 48 00 00 48 48 48 00 48 00 48 00 48 00 48 00 48 48 00 00 48 48 00 48 48 48 00 48 48 00
*/
