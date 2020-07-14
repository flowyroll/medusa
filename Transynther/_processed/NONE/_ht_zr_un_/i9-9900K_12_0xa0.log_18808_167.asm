.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xa952, %rsi
lea addresses_WC_ht+0x1c702, %rdi
clflush (%rdi)
nop
and %r9, %r9
mov $8, %rcx
rep movsq
nop
nop
nop
nop
nop
and $33134, %rcx
lea addresses_A_ht+0x2b42, %rsi
lea addresses_UC_ht+0xda2, %rdi
clflush (%rsi)
nop
xor $52817, %r9
mov $111, %rcx
rep movsl
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x176d2, %rbp
nop
nop
nop
nop
and $44069, %r9
movb (%rbp), %cl
nop
nop
nop
nop
nop
add $12132, %rbp
lea addresses_UC_ht+0x15dc2, %rsi
lea addresses_WT_ht+0x1413e, %rdi
add $10618, %r10
mov $78, %rcx
rep movsl
nop
nop
nop
nop
nop
add $53675, %rdx
lea addresses_A_ht+0x4b82, %rsi
lea addresses_WT_ht+0x1d102, %rdi
nop
nop
xor %r9, %r9
mov $46, %rcx
rep movsw
nop
add %rdx, %rdx
lea addresses_normal_ht+0x1aac2, %r10
nop
nop
nop
and $42188, %rcx
movl $0x61626364, (%r10)
nop
xor %r10, %r10
lea addresses_UC_ht+0x10222, %rsi
lea addresses_normal_ht+0x4982, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $69, %rcx
rep movsl
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1c702, %rbp
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%rbp), %rcx
nop
nop
nop
nop
sub $39178, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_A+0xe102, %r11
nop
nop
nop
add $49660, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovntdq %ymm7, (%r11)
nop
nop
nop
nop
nop
and $3308, %rbp

// Store
lea addresses_WT+0x10d02, %r11
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_RW+0x1bc62, %r12
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r12)
sub %r8, %r8

// Store
lea addresses_A+0x17402, %r12
nop
sub %r11, %r11
movl $0x51525354, (%r12)
nop
nop
dec %r15

// Faulty Load
lea addresses_UC+0xbd02, %rdx
nop
dec %r12
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'45': 1986, '08': 6, '00': 16816}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
