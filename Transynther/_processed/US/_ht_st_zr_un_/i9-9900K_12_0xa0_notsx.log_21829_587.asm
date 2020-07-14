.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe099, %r9
nop
nop
nop
nop
xor %r8, %r8
mov (%r9), %rax
nop
nop
and $23517, %rdi
lea addresses_normal_ht+0x1a499, %rsi
nop
mfence
mov (%rsi), %r9d
nop
nop
cmp $18625, %r14
lea addresses_WT_ht+0x10899, %r14
nop
nop
nop
dec %rbx
movups (%r14), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
dec %rbx
lea addresses_WT_ht+0xa441, %rsi
add %r14, %r14
mov (%rsi), %rax
nop
and $14094, %r9
lea addresses_WC_ht+0x16499, %rbx
nop
nop
nop
nop
sub $61434, %r9
mov (%rbx), %si
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x1a0c9, %rsi
lea addresses_normal_ht+0x185f9, %rdi
nop
nop
nop
nop
nop
and $63962, %r14
mov $41, %rcx
rep movsl
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0xa219, %rsi
lea addresses_UC_ht+0xeeb9, %rdi
sub %r9, %r9
mov $91, %rcx
rep movsb
nop
nop
nop
sub $10268, %rsi
lea addresses_UC_ht+0x2599, %r14
nop
nop
nop
nop
and $48622, %r9
movups (%r14), %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rbx

// Store
lea addresses_normal+0x3699, %r12
nop
and %r9, %r9
movb $0x51, (%r12)
nop
nop
nop
add $59468, %r13

// Store
lea addresses_WT+0x10c99, %r13
nop
and $45011, %r11
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
nop
nop
nop
sub %r11, %r11

// Store
mov $0x99, %r11
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, (%r11)
xor $248, %r13

// Store
lea addresses_US+0x1119, %r13
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%r13)
nop
cmp %r12, %r12

// Faulty Load
lea addresses_US+0x6499, %r12
nop
nop
nop
nop
and $53366, %r9
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 4}, 'OP': 'LOAD'}
{'2c': 1, '08': 6, '44': 11616, 'ff': 2, '3c': 11, '00': 10193}
44 00 00 00 00 44 44 00 00 44 44 00 00 00 44 00 00 00 00 00 44 44 44 00 00 44 44 00 00 44 00 00 00 44 44 44 44 44 00 44 00 00 00 44 00 00 00 44 44 44 44 44 00 44 00 00 44 44 00 44 44 00 00 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 44 00 44 00 44 44 44 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 44 44 44 44 44 44 00 44 00 44 44 44 44 00 00 00 44 44 44 00 00 44 00 44 00 00 44 44 44 00 44 44 44 44 44 44 00 44 00 00 44 44 44 00 44 44 00 00 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 44 00 44 00 44 44 00 00 44 00 00 44 44 00 00 00 00 44 44 44 44 44 00 00 44 44 44 44 00 44 00 44 44 44 44 44 00 00 44 44 00 44 44 00 44 00 00 44 44 00 44 00 00 44 44 44 44 44 44 00 44 44 44 00 44 00 44 00 44 00 44 44 00 44 00 00 00 44 44 44 44 00 44 00 44 44 44 44 44 44 44 00 44 44 00 44 00 00 44 00 00 44 44 44 00 00 44 00 00 00 44 00 00 44 00 44 00 00 44 44 00 44 00 44 00 00 44 44 44 44 00 00 44 44 44 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 00 00 44 00 00 44 00 00 44 00 44 44 44 00 44 00 00 44 00 44 00 44 44 00 00 00 44 44 00 00 44 00 44 44 44 00 44 00 00 00 44 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 00 00 44 44 44 44 00 44 00 44 00 44 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 00 00 44 00 44 44 44 00 44 44 44 44 44 00 44 00 00 44 00 44 44 44 44 00 00 44 44 00 44 44 00 44 44 44 00 00 44 44 44 00 00 44 44 00 00 00 44 44 44 44 00 00 00 44 44 00 00 44 00 00 00 00 44 44 00 00 44 44 00 44 44 44 44 44 44 44 00 00 00 00 44 00 44 44 00 00 00 44 44 00 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 44 44 00 00 00 00 44 00 44 44 44 00 44 00 00 00 00 00 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 00 44 44 00 00 00 44 44 44 00 00 44 00 44 00 44 44 44 44 44 44 00 44 00 44 00 00 44 00 44 44 00 00 44 44 44 00 44 44 44 00 00 44 00 00 00 00 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 00 44 00 00 44 00 00 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 00 44 00 00 44 44 44 44 44 44 00 00 44 00 44 44 44 44 44 44 44 00 00 44 44 44 00 00 44 00 44 00 00 44 44 44 44 44 44 44 44 00 00 00 44 44 00 44 00 44 44 00 44 00 44 44 44 44 00 44 44 00 44 00 00 44 44 00 00 44 44 44 00 00 44 00 00 44 00 44 44 00 00 00 00 00 44 00 00 00 44 44 44 00 00 44 00 00 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 00 44 00 44 00 00 44 00 44 00 44 00 00 00 44 44 44 00 44 00 00 44 44 44 00 00 00 44 00 00 44 44 00 00 44 00 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 00 44 44 00 00 44 00 00 44 44 44 44 44 44 44 44 44 00 00 44 00 00 00 44 44 44 00 44 44 00 00 00 44 44 44 00 44 44 44 00 00 00 00 44 00 00 44 00 44 00 44 44 44 44 44 00 44 44 44 00 00 00 44 00 00 44 00 44 00 00 44 00 00 44 44 44 44 44 00 44 00 00 00 00 44 00 44 44 44 44 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 00 00 44 44 44 00 44 00 44 00 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 00 00 00 44 00 44 44
*/
