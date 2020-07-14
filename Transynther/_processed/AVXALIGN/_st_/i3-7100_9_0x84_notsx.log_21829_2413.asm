.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18b9c, %rsi
lea addresses_WC_ht+0xc32c, %rdi
nop
nop
sub $24075, %rax
mov $122, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xaa9c, %r15
nop
add %r8, %r8
mov (%r15), %r12w
nop
nop
nop
cmp $40762, %rcx
lea addresses_D_ht+0x174ec, %rdi
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x9c1c, %r8
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r8)
xor %rdi, %rdi
lea addresses_A_ht+0x19c, %r12
nop
nop
nop
nop
and $22330, %rdi
movb $0x61, (%r12)
nop
nop
nop
xor $60666, %rdi
lea addresses_normal_ht+0xb39c, %r12
nop
nop
nop
nop
inc %rcx
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
inc %rcx
lea addresses_normal_ht+0x10e0c, %rcx
nop
nop
xor $9615, %rsi
mov (%rcx), %r15
nop
nop
nop
add $24558, %rdi
lea addresses_D_ht+0xf35c, %rcx
xor %rsi, %rsi
mov (%rcx), %ax
nop
nop
nop
nop
nop
add $7929, %rsi
lea addresses_UC_ht+0x13328, %rdi
nop
nop
nop
add %r8, %r8
mov (%rdi), %r12
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0xe99c, %rsi
lea addresses_WC_ht+0xb89c, %rdi
nop
nop
nop
cmp %r13, %r13
mov $58, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1ae9c, %rsi
nop
nop
xor $24046, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rsi)
sub %r13, %r13
lea addresses_WC_ht+0x1df9e, %rsi
lea addresses_A_ht+0x1454c, %rdi
clflush (%rdi)
inc %r15
mov $73, %rcx
rep movsb
nop
nop
dec %r12
lea addresses_normal_ht+0x15352, %rax
nop
nop
nop
nop
xor $4184, %r8
mov (%rax), %si
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x1a22c, %r15
nop
nop
nop
nop
sub $35085, %rdi
mov (%r15), %r8w
nop
nop
nop
nop
add $17693, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0xf9c, %r15
nop
sub $52180, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r15)
nop
add %rbp, %rbp

// REPMOV
lea addresses_WT+0x1fb9c, %rsi
lea addresses_WT+0x1fb9c, %rdi
nop
nop
nop
add %r12, %r12
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r12, %r12

// Load
lea addresses_UC+0x1c51c, %rsi
nop
nop
nop
nop
and %r8, %r8
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
nop
add $47025, %rsi

// Store
mov $0x758ebe000000069c, %r8
nop
nop
nop
nop
nop
cmp $58502, %rsi
movb $0x51, (%r8)
dec %rsi

// Faulty Load
lea addresses_WT+0x1fb9c, %rbp
and %r12, %r12
mov (%rbp), %r15w
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
