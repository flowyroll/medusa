.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x18537, %rsi
lea addresses_UC_ht+0x10557, %rdi
nop
nop
nop
add $43060, %r8
mov $67, %rcx
rep movsl
sub $18029, %rdi
lea addresses_normal_ht+0x2bd7, %rsi
lea addresses_A_ht+0xd44f, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $91, %rcx
rep movsw
nop
nop
and $3280, %rsi
lea addresses_A_ht+0x70c4, %rbx
nop
nop
sub $21441, %r8
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %rdi
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x2717, %rcx
nop
nop
nop
add %r12, %r12
movb (%rcx), %bl
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x18167, %r15
clflush (%r15)
nop
nop
nop
nop
and $3503, %r8
mov (%r15), %rdi
nop
nop
nop
nop
xor $63556, %r15
lea addresses_normal_ht+0xa7d7, %rsi
lea addresses_A_ht+0x24d7, %rdi
nop
nop
nop
cmp $37501, %r12
mov $123, %rcx
rep movsq
nop
nop
nop
nop
add $53935, %r8
lea addresses_D_ht+0x19bd7, %rsi
xor $58746, %r8
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
dec %rdi
lea addresses_D_ht+0x1d797, %r12
nop
nop
cmp $46968, %rbx
mov (%r12), %ecx
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0xb9d7, %rcx
and $14649, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x43d7, %r8
nop
nop
xor %r12, %r12
mov (%r8), %r15w
nop
and $54589, %rbx
lea addresses_D_ht+0x14387, %rsi
nop
nop
nop
add %r15, %r15
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rdi

// Load
lea addresses_WT+0x1d4c0, %r15
nop
nop
nop
nop
nop
inc %r12
mov (%r15), %r14d
sub %rdi, %rdi

// Store
lea addresses_A+0xcb67, %rdi
nop
nop
nop
nop
nop
add $55546, %rbp
movb $0x51, (%rdi)
nop
nop
xor %rdi, %rdi

// Faulty Load
mov $0x4535d00000007d7, %rbp
nop
nop
cmp %r14, %r14
movntdqa (%rbp), %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 13790, '00': 2, '45': 494, '44': 7543}
00 46 46 46 44 46 46 46 44 46 46 44 44 46 44 44 46 46 44 46 46 44 44 46 46 44 44 46 46 46 44 46 46 46 44 46 46 44 46 46 44 45 46 46 46 46 46 46 46 46 46 44 44 46 44 44 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 44 46 46 44 44 46 46 44 46 46 46 44 44 46 46 44 46 46 46 46 46 44 44 46 46 46 44 44 46 46 44 46 46 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 44 44 46 46 46 44 44 46 46 46 46 46 44 46 46 46 46 46 46 44 44 45 44 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 44 44 46 46 44 44 46 46 44 44 46 46 44 44 46 46 44 46 46 46 44 46 46 46 44 44 46 46 44 46 46 46 44 44 44 46 44 44 46 46 46 46 46 46 44 44 44 46 46 44 44 46 46 44 46 46 46 46 44 46 46 46 46 45 46 46 44 46 46 44 44 46 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 44 44 46 46 46 44 46 46 44 46 46 46 44 44 46 46 46 44 44 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 44 46 46 44 46 46 44 44 46 46 46 46 44 44 46 46 44 46 46 46 46 46 44 46 46 44 44 46 46 46 44 44 46 46 44 46 46 44 44 46 46 46 44 44 46 45 46 45 44 46 46 46 44 46 46 44 46 46 44 46 44 44 46 46 46 44 44 46 46 46 46 44 44 46 44 44 46 46 44 46 46 46 46 46 44 44 46 46 45 46 46 46 45 46 46 46 44 46 46 46 44 46 46 46 44 46 46 44 44 46 46 46 44 46 46 44 44 46 46 46 46 46 44 44 46 46 46 44 44 46 44 44 46 46 44 46 46 46 44 46 46 46 44 46 46 44 46 44 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 44 44 46 46 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 44 44 46 46 44 44 46 46 44 44 46 46 44 46 46 46 46 46 44 44 46 46 44 46 46 46 46 44 44 46 46 46 44 46 46 46 44 44 46 46 44 44 46 46 44 46 46 44 46 46 44 44 46 46 46 46 46 46 44 44 46 46 46 44 46 46 46 45 44 46 46 44 46 46 46 44 44 46 46 46 46 44 46 46 46 44 44 46 44 45 46 46 46 46 46 44 44 46 46 46 46 46 46 44 46 45 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 44 46 46 46 46 44 44 46 46 44 44 46 46 44 44 46 46 44 46 46 44 44 46 46 46 44 46 44 44 46 46 46 44 46 46 46 44 44 46 46 44 44 46 46 46 44 45 46 46 46 44 45 46 44 44 46 46 44 44 46 46 46 46 45 46 46 46 44 44 44 46 44 46 46 44 44 46 46 44 46 46 44 44 46 44 44 46 46 44 45 46 46 44 44 46 46 44 44 46 46 44 44 46 46 44 46 46 46 46 46 46 46 44 46 44 45 46 46 44 44 46 46 45 46 46 46 44 46 46 44 46 46 46 46 44 44 46 46 44 44 46 46 44 46 46 44 44 46 46 46 44 46 46 46 46 44 46 46 44 46 46 44 46 46 44 45 46 46 44 46 46 44 45 46 46 46 46 44 46 46 46 46 46 46 45 44 46 45 46 46 46 44 46 46 46 44 45 46 46 46 46 46 46 44 45 46 46 46 46 44 46 46 44 46 46 46 46 46 44 44 46 46 44 44 46 46 46 46 44 46 46 44 46 46 44 44 44 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 44 45 46 46 46 44 46 46 46 44 44 46 46 44 44 44 46 46 46 46 44 46 46 46 46 46 44 44 46 46 44 46 46 44 44 44 46 46 44 46 46 46 46 44 44 46 46 44 44 46 46 46 44 44 46 46 44 44 46 46 46 46 46 46 44 46 46 46 46 44 44 46 46 44 46 46 44 44 46 46 46 44 44 46 46 44 44 46 46 44 44 46 46 46 46 44 45 46 46 44 44 46 46 46 44
*/
