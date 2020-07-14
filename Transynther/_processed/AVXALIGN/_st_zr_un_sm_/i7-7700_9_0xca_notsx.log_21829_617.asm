.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x52f6, %r14
xor %r13, %r13
movb (%r14), %r11b
nop
and $61521, %r9
lea addresses_normal_ht+0x1d8f6, %r15
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r15)
nop
nop
xor $2541, %r11
lea addresses_D_ht+0x17e76, %r15
nop
nop
nop
add %r9, %r9
movb $0x61, (%r15)
nop
dec %rsi
lea addresses_UC_ht+0x1daf6, %r13
nop
nop
nop
cmp $34309, %rdi
mov (%r13), %esi
inc %r15
lea addresses_UC_ht+0x639, %r13
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x3af6, %rsi
lea addresses_normal_ht+0x4876, %rdi
xor $49666, %r13
mov $56, %rcx
rep movsb
nop
cmp %r14, %r14
lea addresses_WT_ht+0x4806, %r14
nop
nop
nop
nop
nop
sub $32537, %rdi
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0xc0f6, %r13
nop
nop
nop
cmp $59284, %r14
mov (%r13), %r11w
and $22498, %r9
lea addresses_UC_ht+0x1e776, %rsi
lea addresses_WT_ht+0x92f6, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $119, %rcx
rep movsw
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x10566, %rsi
lea addresses_WC_ht+0xeaf6, %rdi
nop
inc %r11
mov $44, %rcx
rep movsb
sub $8217, %r11
lea addresses_UC_ht+0x19888, %rsi
lea addresses_A_ht+0x1ec56, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $95, %rcx
rep movsw
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x1e056, %rdi
xor %r9, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
nop
cmp $16463, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x101f6, %rbp
xor %rcx, %rcx
movb $0x51, (%rbp)
nop
add %rcx, %rcx

// Store
mov $0x57d8660000000af6, %r15
nop
nop
nop
and $8432, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
sub %r15, %r15

// Faulty Load
mov $0x57d8660000000af6, %rbx
clflush (%rbx)
nop
nop
nop
and $21035, %r15
mov (%rbx), %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'6d': 4175, '00': 277, '58': 17377}
6d 58 6d 58 58 58 58 58 58 00 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 58 58 58 6d 6d 58 58 58 58 00 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 6d 58 58 58 58 58 58 58 58 58 6d 6d 6d 00 6d 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 6d 58 6d 58 6d 58 58 58 58 58 58 58 6d 58 6d 58 58 58 58 58 6d 58 6d 58 58 58 6d 58 58 6d 6d 58 58 58 6d 58 58 58 6d 6d 6d 58 6d 58 6d 58 6d 58 6d 58 6d 58 6d 58 58 58 6d 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 00 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 6d 58 58 58 6d 00 58 6d 58 58 6d 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 6d 6d 6d 58 6d 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 6d 6d 6d 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 58 6d 58 00 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 58 00 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 6d 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 6d 6d 58 58 6d 58 58 58 6d 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 6d 6d 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 6d 58 58 6d 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 6d 58 6d 58 58 58 6d 6d 58 58 58 58 58 00 58 6d 58 00 58 6d 58 6d 58 6d 58 6d 58 58 58 6d 58 58 58 58 58 6d 58 58 58 6d 58 6d 58 58 58 58 58 6d 58 58 58 6d 6d 6d 58 58 58 6d 58 6d 58 6d 58 58 58 6d 58 6d 58 58 58 6d 58 6d 58 6d 58 6d 58 58 6d 6d 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 00 58 6d 58 6d 58 6d 58 58 58 58 58 6d 58 58 58 6d 58 6d 58 58 58 58 58 00 58 6d 58 6d 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 6d 58 58 58
*/
