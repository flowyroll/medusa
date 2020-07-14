.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1deb3, %r14
inc %rdi
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x18f73, %rsi
lea addresses_A_ht+0x2d73, %rdi
nop
inc %rdx
mov $97, %rcx
rep movsw
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xdf73, %rsi
lea addresses_D_ht+0x1e7b3, %rdi
cmp %r10, %r10
mov $41, %rcx
rep movsq
nop
nop
nop
mfence
lea addresses_UC_ht+0x5b73, %r11
nop
nop
nop
nop
xor $14384, %r10
mov (%r11), %r9d
nop
nop
nop
nop
nop
xor $49261, %rsi
lea addresses_UC_ht+0x5873, %rsi
lea addresses_WC_ht+0x2dd3, %rdi
clflush (%rsi)
and %r11, %r11
mov $15, %rcx
rep movsw
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x4f85, %rcx
nop
nop
and $7462, %rdi
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
nop
dec %r9
lea addresses_WC_ht+0x17773, %r14
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, (%r14)
dec %rcx
lea addresses_A_ht+0xb073, %rcx
nop
nop
inc %r9
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
nop
add $18983, %r10
lea addresses_UC_ht+0x10733, %rsi
inc %rdi
mov (%rsi), %r14
nop
nop
nop
nop
nop
add $33898, %rdi
lea addresses_D_ht+0x1eb73, %rsi
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
xor $63192, %rdi
lea addresses_D_ht+0xec13, %rdx
and %rsi, %rsi
movb $0x61, (%rdx)
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x11273, %rsi
lea addresses_UC_ht+0x14344, %rdi
clflush (%rsi)
xor $15352, %r10
mov $45, %rcx
rep movsq
nop
nop
nop
xor $23020, %rdx
lea addresses_D_ht+0x1ba23, %rsi
lea addresses_normal_ht+0x10c83, %rdi
nop
nop
and %rdx, %rdx
mov $41, %rcx
rep movsl
nop
dec %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rdi

// Faulty Load
lea addresses_US+0x1eb73, %r14
nop
nop
dec %r9
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'47': 1, '00': 43, '1a': 2}
00 00 00 00 00 00 1a 47 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
