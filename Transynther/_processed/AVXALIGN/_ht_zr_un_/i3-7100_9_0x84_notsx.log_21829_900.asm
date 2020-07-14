.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xaed, %r12
clflush (%r12)
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
and $0xffffffffffffffc0, %r12
movaps %xmm0, (%r12)
nop
nop
nop
nop
nop
sub $567, %r12
lea addresses_UC_ht+0x102ad, %rdi
nop
nop
nop
nop
xor $63064, %rax
mov (%rdi), %rcx
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x152ad, %rcx
cmp $18264, %r11
mov (%rcx), %r13
nop
nop
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0x3d6c, %rcx
nop
nop
nop
add %rax, %rax
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r12
dec %rax
lea addresses_D_ht+0x5e95, %r11
nop
add %rdx, %rdx
mov (%r11), %rdi
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x813d, %rsi
lea addresses_WC_ht+0xead, %rdi
clflush (%rsi)
nop
nop
nop
cmp %rax, %rax
mov $1, %rcx
rep movsl
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1eaad, %rsi
lea addresses_UC_ht+0x12ad, %rdi
nop
nop
nop
nop
nop
cmp $4625, %rdx
mov $54, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $60790, %rax
lea addresses_normal_ht+0x8d0d, %rsi
lea addresses_A_ht+0x1b2d, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $109, %rcx
rep movsb
nop
nop
nop
nop
xor $51313, %r12
lea addresses_A_ht+0x1b869, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rdi
push %rsi

// Store
lea addresses_UC+0x10b75, %rbp
nop
nop
nop
nop
nop
cmp $44852, %r12
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_normal+0x162ad, %r12
nop
dec %r13
vmovntdqa (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'20': 1, '7d': 1, '44': 4467, '46': 6431, '00': 128, '10': 10759, '08': 42}
20 46 10 44 10 44 10 10 10 46 10 46 46 10 10 10 44 46 44 46 44 10 44 10 46 10 10 10 10 46 46 44 46 46 44 10 10 46 10 44 46 10 44 46 10 46 10 46 10 46 10 10 46 10 46 10 46 46 00 10 46 10 46 10 10 46 10 46 10 46 10 44 44 10 44 44 10 46 10 10 44 10 10 44 10 10 46 46 10 46 10 10 10 46 10 10 46 10 46 46 46 10 46 10 46 46 10 46 44 10 10 10 44 10 46 10 44 10 10 46 46 10 44 46 10 44 44 46 46 10 10 46 10 46 46 10 44 10 10 10 10 10 46 10 46 10 46 46 10 10 46 46 10 46 46 10 10 44 10 46 46 46 10 10 44 10 46 46 46 46 10 10 44 46 10 44 10 46 46 10 10 10 10 10 46 46 44 44 10 46 10 46 10 46 10 10 46 10 10 44 10 46 46 10 46 10 44 10 10 10 46 10 46 46 10 46 10 10 44 10 10 10 46 10 10 10 10 10 46 10 10 46 10 10 46 10 10 46 46 10 44 46 10 44 10 10 46 46 10 10 46 10 44 10 46 46 46 46 44 10 10 10 46 10 10 10 46 10 46 46 44 46 44 46 10 44 44 44 10 10 10 46 44 44 44 46 10 46 46 46 10 44 46 10 44 46 46 10 44 46 44 46 44 46 10 46 46 10 44 10 46 10 44 46 10 44 44 10 46 46 10 44 10 46 10 46 44 46 46 46 46 46 10 10 44 10 46 46 44 10 46 44 10 10 46 10 44 10 46 10 10 10 46 46 10 10 10 10 10 46 10 46 10 10 46 10 46 46 10 46 10 08 46 10 44 10 10 10 46 10 44 10 46 10 10 10 10 10 10 10 10 46 10 46 10 46 10 46 10 44 10 44 46 46 10 44 10 46 10 10 46 10 10 46 10 46 10 46 46 10 44 10 10 46 46 10 46 10 10 46 10 46 10 46 10 10 46 10 44 10 46 10 46 10 46 46 46 10 46 46 46 10 46 10 46 46 10 46 46 10 46 10 44 10 10 44 10 10 44 10 46 10 46 44 46 46 46 10 44 46 10 44 10 44 10 46 10 46 46 10 10 46 10 10 46 10 46 10 46 10 10 46 46 46 46 10 46 10 10 44 44 46 44 46 44 10 46 46 10 44 10 10 46 46 10 46 10 46 10 10 10 10 10 46 10 46 10 10 10 46 46 46 10 44 10 44 10 46 46 46 10 44 10 46 46 46 10 46 10 46 10 46 10 46 46 46 44 10 46 10 46 10 46 10 10 10 10 46 10 10 10 46 10 44 46 46 44 10 46 10 10 10 46 10 44 10 10 44 46 46 10 10 10 46 10 46 46 46 10 44 10 10 44 10 46 46 10 46 10 44 46 10 46 46 10 10 44 10 46 10 10 10 10 46 46 46 10 46 46 46 44 10 44 46 46 10 46 46 46 10 46 10 10 10 46 10 46 10 46 10 46 46 10 10 10 46 10 46 10 46 10 46 10 44 46 10 46 10 46 10 46 10 46 10 10 10 46 10 46 10 46 46 10 44 10 46 10 46 44 10 46 10 46 10 10 10 46 44 10 10 44 00 46 10 10 10 10 46 10 10 44 46 10 46 10 46 46 10 46 10 46 46 10 46 10 10 44 10 46 46 10 46 10 10 44 10 46 44 10 44 10 46 46 10 44 46 10 10 46 10 46 10 46 10 10 44 46 10 10 46 10 46 46 10 10 44 10 46 46 10 10 46 10 46 00 10 44 10 46 46 44 10 46 46 10 10 46 46 10 46 10 44 10 46 46 10 46 10 10 46 10 10 46 46 10 44 10 44 10 46 10 46 46 46 10 10 00 46 46 10 44 10 10 10 44 10 46 46 10 10 44 10 46 46 10 46 10 46 46 10 46 10 46 46 10 44 10 46 46 10 44 44 46 44 10 46 46 46 46 10 46 46 46 10 10 46 46 10 10 46 10 44 46 10 10 46 46 10 46 10 46 10 46 10 46 46 46 10 44 10 10 46 10 46 46 46 10 46 46 44 10 44 46 10 10 44 44 10 46 46 10 46 46 10 46 10 46 46 10 44 10 46 10 10 10 10 10 46 10 46 44 10 44 10 46 10 46 10 46 10 46 44 46 10 46 10 10 10 10 46 10 46 10 46 10 46 10 10 10 46 46 10 10 44 10 46 10 46 10 46 46 44 46 10 46 10 10 44 44 10 10 10 10 44 10 46 46 10 46 10
*/
