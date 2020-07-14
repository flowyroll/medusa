.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb538, %rsi
lea addresses_D_ht+0x913c, %rdi
nop
nop
nop
nop
and $14429, %r10
mov $75, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x16e94, %r15
nop
nop
nop
nop
nop
add $21536, %r11
movw $0x6162, (%r15)
sub %r11, %r11
lea addresses_UC_ht+0x18c8a, %rcx
nop
and $59412, %rbp
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x1d914, %r10
nop
cmp $30083, %rbp
movl $0x61626364, (%r10)
dec %rbp
lea addresses_WT_ht+0xf4aa, %rbp
nop
nop
sub %r15, %r15
mov (%rbp), %r10d
xor %r11, %r11
lea addresses_normal_ht+0x5c94, %r15
add $35633, %rcx
mov (%r15), %ebp
nop
nop
nop
nop
cmp $40173, %rsi
lea addresses_WT_ht+0xdd0c, %rbp
nop
nop
nop
nop
add $57941, %rdi
movl $0x61626364, (%rbp)
nop
and %rbp, %rbp
lea addresses_UC_ht+0x1e7b4, %rsi
lea addresses_normal_ht+0xfed4, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
dec %r8
mov $121, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x38b8, %rbp
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
add $29821, %r11
lea addresses_WT_ht+0x125f4, %rsi
lea addresses_D_ht+0x118d4, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $58, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x1a950, %r10
nop
add %r15, %r15
mov (%r10), %ecx
nop
nop
nop
dec %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rdi

// Load
lea addresses_WT+0x2c58, %r15
nop
nop
nop
nop
nop
and $64272, %rbp
movups (%r15), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
and %r10, %r10

// Faulty Load
mov $0x25b4fc0000000694, %r12
mfence
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'45': 1}
45
*/
