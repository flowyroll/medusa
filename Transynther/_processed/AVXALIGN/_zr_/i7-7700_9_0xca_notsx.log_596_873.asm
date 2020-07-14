.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x14631, %rsi
lea addresses_A_ht+0xd631, %rdi
nop
nop
nop
nop
inc %r11
mov $65, %rcx
rep movsb
nop
nop
nop
nop
cmp $38431, %rcx
lea addresses_UC_ht+0x129fd, %r8
clflush (%r8)
nop
nop
dec %r15
movups (%r8), %xmm6
vpextrq $0, %xmm6, %r10
nop
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x16641, %rsi
nop
nop
nop
nop
nop
xor $19760, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
nop
nop
nop
nop
sub $38734, %r15
lea addresses_D_ht+0xb8b1, %r10
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
sub $1308, %rcx
lea addresses_D_ht+0xe10e, %r11
and $350, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
sub %r10, %r10
lea addresses_WC_ht+0x1931, %rcx
nop
cmp $33805, %r10
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0xdc51, %rsi
lea addresses_WC_ht+0x10071, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $21, %rcx
rep movsq
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0x10231, %rsi
nop
add %r11, %r11
mov (%rsi), %di
nop
nop
nop
cmp $59532, %r13
lea addresses_normal_ht+0x1b581, %rcx
nop
nop
nop
nop
nop
cmp %r10, %r10
movb $0x61, (%rcx)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0xc231, %rsi
lea addresses_normal_ht+0x8a31, %rdi
nop
nop
nop
nop
nop
cmp $61865, %r8
mov $106, %rcx
rep movsw
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x8e31, %rdi
nop
nop
nop
nop
xor $31291, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Load
lea addresses_normal+0xee31, %rbp
nop
nop
cmp $49335, %rdi
mov (%rbp), %r13d
nop
nop
nop
xor $55087, %r12

// Store
lea addresses_PSE+0xb031, %r8
nop
nop
nop
nop
nop
add $61948, %rdx
movw $0x5152, (%r8)
nop
nop
cmp %r12, %r12

// Store
lea addresses_normal+0x15a89, %r13
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
and $46696, %r15

// Faulty Load
lea addresses_normal+0xee31, %rbp
nop
nop
nop
and %r15, %r15
vmovntdqa (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'00': 596}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
