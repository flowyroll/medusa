.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19da8, %rsi
lea addresses_UC_ht+0x8ac8, %rdi
nop
nop
sub %r14, %r14
mov $10, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1b448, %r13
nop
nop
inc %r11
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rbp
cmp %r14, %r14
lea addresses_A_ht+0x193f8, %rbp
nop
nop
nop
inc %r14
mov (%rbp), %esi
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0xedc8, %r13
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
add $1737, %rsi
lea addresses_WC_ht+0x17ac4, %rsi
lea addresses_D_ht+0x1c90c, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $103, %rcx
rep movsq
nop
nop
nop
nop
cmp $40727, %rbp
lea addresses_WT_ht+0x5312, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rdi)
nop
nop
add $54878, %rbp
lea addresses_WC_ht+0xa0c8, %r13
nop
nop
nop
nop
nop
add $62891, %rbp
movb $0x61, (%r13)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x1a248, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0xb7c8, %rsi
lea addresses_A_ht+0x1eb7b, %rdi
nop
nop
nop
nop
sub $14101, %r10
mov $26, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0xe948, %r11
nop
nop
sub $51787, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x14a48, %r13
nop
nop
nop
dec %rsi
movl $0x61626364, (%r13)
nop
cmp %r14, %r14
lea addresses_UC_ht+0x17ae6, %rsi
lea addresses_normal_ht+0x10948, %rdi
clflush (%rdi)
nop
inc %r10
mov $68, %rcx
rep movsw
nop
cmp %r14, %r14
lea addresses_A_ht+0x9210, %rdi
clflush (%rdi)
nop
xor %r10, %r10
movb (%rdi), %cl
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x7384360000000c48, %r14
clflush (%r14)
cmp %r9, %r9
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
mov $0x6347880000000248, %r14
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%r14)
and $55525, %rbx

// Store
mov $0x6347880000000248, %r12
clflush (%r12)
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
nop
and $56925, %rdx

// Faulty Load
mov $0x6347880000000248, %r9
nop
nop
nop
nop
and $1715, %rdi
movb (%r9), %r14b
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 9, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 2, '58': 153, '52': 3, '79': 1}
52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 52 58 58 79 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
