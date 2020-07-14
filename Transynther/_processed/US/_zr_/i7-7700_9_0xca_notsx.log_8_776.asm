.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x2bac, %rsi
lea addresses_D_ht+0x14eb8, %rdi
nop
inc %r8
mov $85, %rcx
rep movsb
nop
nop
nop
nop
xor $41253, %r8
lea addresses_D_ht+0x53ac, %rsi
lea addresses_A_ht+0xdfac, %rdi
nop
nop
nop
xor $49953, %rbp
mov $69, %rcx
rep movsl
nop
nop
nop
add $20390, %rbp
lea addresses_normal_ht+0x6a2c, %r10
nop
nop
nop
nop
add %r8, %r8
movw $0x6162, (%r10)
nop
nop
sub $53905, %rsi
lea addresses_UC_ht+0x1e0be, %r8
cmp %r14, %r14
movw $0x6162, (%r8)
nop
nop
nop
nop
add $25895, %rcx
lea addresses_WT_ht+0x51c8, %rsi
lea addresses_normal_ht+0x1123a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $11961, %r9
mov $62, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1d9ac, %rsi
lea addresses_WT_ht+0x1a40c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $47, %rcx
rep movsw
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x1bac, %r9
clflush (%r9)
dec %r14
mov (%r9), %r8
nop
nop
nop
nop
and $13360, %r10
lea addresses_A_ht+0xab84, %r14
nop
nop
nop
nop
xor $13306, %r10
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0x1b39e, %rbp
nop
nop
nop
nop
nop
dec %rsi
mov (%rbp), %r14w
nop
nop
nop
nop
and $2712, %rbp
lea addresses_WT_ht+0x12e2c, %r14
nop
add $48584, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x117ec, %rbp
nop
cmp %r10, %r10
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
xor $40323, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rdi

// Faulty Load
lea addresses_US+0x113ac, %r11
nop
nop
nop
add %rax, %rax
mov (%r11), %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rdi
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 8}
00 00 00 00 00 00 00 00
*/
