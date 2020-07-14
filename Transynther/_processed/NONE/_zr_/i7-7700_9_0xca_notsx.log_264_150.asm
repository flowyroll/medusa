.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x173b5, %r10
clflush (%r10)
nop
xor $22996, %r12
mov (%r10), %rbx
nop
sub $28086, %r10
lea addresses_normal_ht+0x17995, %r11
nop
nop
nop
add $25483, %rbx
mov (%r11), %rdi
add %rbx, %rbx
lea addresses_D_ht+0x1de95, %r10
nop
inc %r8
vmovups (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0xfb15, %rsi
lea addresses_D_ht+0x1b3bd, %rdi
nop
nop
nop
nop
nop
and $30449, %r12
mov $78, %rcx
rep movsw
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x12615, %rcx
nop
nop
nop
nop
dec %r12
movb (%rcx), %r11b
nop
nop
nop
cmp $51361, %r11
lea addresses_D_ht+0xb8b9, %r10
nop
nop
nop
nop
nop
dec %r8
mov (%r10), %bx
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1c115, %rsi
lea addresses_D_ht+0x12e95, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $9, %rcx
rep movsq
nop
sub $34934, %rdi
lea addresses_UC_ht+0x11555, %rsi
lea addresses_D_ht+0x1289d, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $35, %rcx
rep movsw
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xc215, %r8
xor %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
add $43658, %r12
lea addresses_UC_ht+0xa415, %rsi
lea addresses_WT_ht+0xa415, %rdi
clflush (%rsi)
nop
and %r12, %r12
mov $125, %rcx
rep movsl
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x12965, %r12
clflush (%r12)
nop
nop
and $54562, %r11
movb $0x61, (%r12)
nop
sub $52133, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rdi
push %rsi

// Store
lea addresses_RW+0xce15, %r8
nop
nop
nop
nop
nop
add %rdi, %rdi
movb $0x51, (%r8)
nop
nop
add $33977, %r8

// Load
lea addresses_normal+0xe9d5, %r13
nop
nop
nop
nop
and $26433, %rsi
mov (%r13), %r8w
nop
nop
cmp $39192, %r13

// Store
lea addresses_US+0x11855, %r13
nop
nop
nop
nop
inc %r12
movw $0x5152, (%r13)
nop
nop
nop
add $33913, %rdi

// Load
lea addresses_normal+0x10005, %r12
nop
nop
nop
nop
nop
sub %r14, %r14
movups (%r12), %xmm7
vpextrq $1, %xmm7, %rdi
add %r13, %r13

// Faulty Load
lea addresses_A+0xa615, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rsi), %r12d
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 264}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
